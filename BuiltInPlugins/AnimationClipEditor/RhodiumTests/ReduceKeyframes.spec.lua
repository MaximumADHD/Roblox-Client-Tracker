--!strict

return function()
	local Plugin = script.Parent.Parent
	local Cryo = require(Plugin.Packages.Cryo)

	local Constants = require(Plugin.Src.Util.Constants)

	local SetReduceKeyframesDialogMode = require(Plugin.Src.Actions.SetReduceKeyframesDialogMode)

	local TestHelpers = require(Plugin.RhodiumTests.TestHelpers)
	local TestPaths = require(Plugin.RhodiumTests.TestPaths)
	local VirtualInput = require(Plugin.Packages.Dev.Rhodium).VirtualInput
	local Element = require(Plugin.Packages.Dev.Rhodium).Element

	local runTest = TestHelpers.runTest

	local Templates = require(Plugin.Src.Util.Templates)

	local Types = require(Plugin.Src.Types)

	local GetFFlagKeyframeReduction = require(Plugin.LuaFlags.GetFFlagKeyframeReduction)

	if not GetFFlagKeyframeReduction() then
		-- Nothing to test here
		return
	end

	local function createAnimationData(
		data: {[number]: {Value: number | CFrame}}?,
		trackName: string?,
		trackType: string?)
	: Types.AnimationData
		if not data then
			trackName = "ChinRaiser"
			trackType = Constants.TRACK_TYPES.Facs
			data = {
				[0] = { Value = 0 },
				[200] = { Value = 0.2 },
				[400] = { Value = 0.7 },
				[600] = { Value = 0.6 },
				[800] = { Value = 0 }
			}
		else
			trackName = trackName or "ChinRaiser"
			trackType = trackType or Constants.TRACK_TYPES.Facs
		end

		local keyframes = Cryo.Dictionary.keys(data)
		table.sort(keyframes)

		local testAnimationData = Templates.animationData()
		testAnimationData.Instances = {
			Root = {
				Tracks = {
					[trackName] = {
						Type = trackType,
						Keyframes = keyframes,
						Data = data,
					},
				},
			},
		}
		testAnimationData.Metadata.EndTick = keyframes[#keyframes]

		return testAnimationData
	end

	-- Helper function to get to a track in the store animationData
	local function findTrack(store: any, trackName: string): Types.Track?
		return store:getState().AnimationData.Instances["Root"].Tracks[trackName]
	end

	-- Helper function to click on an element at a certain percentage of its
	-- width (50% by default)
	local function clickElement(slider: any, percentage: number?): ()
		local element = Element.new(slider)
		local width = element:getSize().X
		local height = element:getSize().Y
		local left = element:getLocation() + Vector2.new(0, height / 2)
		local right = element:getLocation() + Vector2.new(width, height / 2)

		percentage = percentage or 0.5
		local pos = left + (right - left) * percentage

		VirtualInput.Mouse.mouseLeftDown(pos)
		TestHelpers.delay()
		VirtualInput.Mouse.mouseLeftUp(pos)
		TestHelpers.delay()
	end

	-- Show the KFR dialog box
	local function showDialogBox(test: any): any
		local store = test:getStore()
		store:dispatch(SetReduceKeyframesDialogMode(Constants.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu))
		TestHelpers.delay()
		return test:getSubWindow(1)
	end

	it("should display the correct amount of keyframes and the slider", function()
		runTest(function(test)
			local store = test:getStore()

			-- Load animation
			local testAnimationData = createAnimationData()
			TestHelpers.loadAnimation(store, testAnimationData)

			local KFRDialog = showDialogBox(test)

			local keyframesText = TestPaths.getKFRKeyframesText(KFRDialog)
			expect(keyframesText).to.be.ok()
			local match = string.find(keyframesText.Text, "5 / 5")
			expect(match).never.to.equal(nil)

			local slider = TestPaths.getKFRSlider(KFRDialog)
			expect(slider).to.be.ok()
		end)
	end)

	it("should work with CFrame tracks", function()
		runTest(function(test)
			local store = test:getStore()

			-- Load animation
			local testAnimationData = createAnimationData(
				{
					[0] = { Value = CFrame.Angles(1, 2, 3) },
					[200] = { Value = CFrame.Angles(.5, 1, 1) },
					[400] = { Value = CFrame.Angles(.5, .5, 2.5) },
					[600] = { Value = CFrame.Angles(2., 1.5, 1) },
					[800] = { Value = CFrame.Angles(1, 1, 1) },
				},
				"LeftHand",
				Constants.TRACK_TYPES.CFrame
			)
			TestHelpers.loadAnimation(store, testAnimationData)

			local KFRDialog = showDialogBox(test)
			local keyframesText = TestPaths.getKFRKeyframesText(KFRDialog)
			local match = string.find(keyframesText.Text, "5 / 5")
			expect(match).never.to.equal(nil)
		end)
	end)

	it("should prune constant sequences in the animation", function()
		runTest(function(test)
			local store = test:getStore()

			-- Load animation
			local testAnimationData = createAnimationData(
				{
					[0] = { Value = 0 },
					[200] = { Value = 0.2 },
					[300] = { Value = 0.2 },
					[400] = { Value = 0.2 },
					[500] = { Value = 0.2 },
					[600] = { Value = 0.2 },
					[800] = { Value = 0.4 },
				}
			)
			TestHelpers.loadAnimation(store, testAnimationData)

			-- Show the dialog box
			store:dispatch(SetReduceKeyframesDialogMode(Constants.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu))
			TestHelpers.delay()

			local reduceKeyframesDialog = test:getSubWindow(1)
			local keyframesText = TestPaths.getKFRKeyframesText(reduceKeyframesDialog)
			local match = string.find(keyframesText.Text, "4 / 4")
			expect(match).never.to.equal(nil)
		end)
	end)

	it("should update the animationData when moving the slider", function()
		runTest(function(test)
			local store = test:getStore()

			-- Load animation
			local testAnimationData = createAnimationData()
			TestHelpers.loadAnimation(store, testAnimationData)

			local KFRDialog = showDialogBox(test)
			local keyframesText = TestPaths.getKFRKeyframesText(KFRDialog)
			local slider = TestPaths.getKFRSlider(KFRDialog)

			-- Click the slider at 66%
			clickElement(slider, 2/3)
			local match = string.find(keyframesText.Text, "4 / 5")
			local track = findTrack(store, "ChinRaiser")
			expect(match).never.to.equal(nil)
			expect(track and track.Keyframes and #track.Keyframes).to.equal(4)

			-- Update the slider without moving it (test the early bail out in
			-- VSW preview)
			clickElement(slider, 2/3)

			-- Click at 33%
			clickElement(slider, 1/3)
			local match = string.find(keyframesText.Text, "3 / 5")
			local track = findTrack(store, "ChinRaiser")
			expect(match).never.to.equal(nil)
			expect(track and track.Keyframes and #track.Keyframes).to.equal(3)
		end)
	end)

	it("should restore the old animation if canceled", function()
		runTest(function(test)
			local store = test:getStore()

			-- Load animation
			local testAnimationData = createAnimationData()
			TestHelpers.loadAnimation(store, testAnimationData)

			-- Show the dialog box
			local KFRDialog = showDialogBox(test)
			local slider = TestPaths.getKFRSlider(KFRDialog)
			local cancelButton = TestPaths.getKFRCancel(KFRDialog)

			-- Click the slider at 66%
			clickElement(slider, 2/3)
			clickElement(cancelButton)
			local track = findTrack(store, "ChinRaiser")
			expect(track and track.Keyframes and #track.Keyframes).to.equal(5)
		end)
	end)

	it("should keep the new animation if applied", function()
		runTest(function(test)
			local store = test:getStore()

			-- Load animation
			local testAnimationData = createAnimationData()
			TestHelpers.loadAnimation(store, testAnimationData)

			-- Show the dialog box
			local KFRDialog = showDialogBox(test)
			local slider = TestPaths.getKFRSlider(KFRDialog)
			local okButton = TestPaths.getKFROk(KFRDialog)

			-- Click the slider at 66%
			clickElement(slider, 2/3)
			clickElement(okButton)

			local track = findTrack(store, "ChinRaiser")
			expect(track and track.Keyframes and #track.Keyframes).to.equal(4)
		end)
	end)
end

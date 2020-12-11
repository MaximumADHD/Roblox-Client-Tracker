return function()
	local Plugin = script.Parent.Parent
	local Constants = require(Plugin.Src.Util.Constants)

	local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)

	local TestHelpers = require(Plugin.RhodiumTestsDeprecated.TestHelpers)
	local TestPaths = require(Plugin.RhodiumTestsDeprecated.TestPaths)
	local VirtualInput = require(Plugin.Rhodium.VirtualInput)
	local runTest = TestHelpers.runTest

	local Templates = require(Plugin.Src.Util.Templates)
	local testAnimationData = Templates.animationData()
	testAnimationData.Instances = {
		Root = {
			Type = Constants.INSTANCE_TYPES.Rig,
			Tracks = {
				Head = {
					Keyframes = {0, 4},
					Data = {
						[0] = {
							EasingStyle = Enum.PoseEasingStyle.Linear,
							EasingDirection = Enum.PoseEasingDirection.In,
							Value = CFrame.new(0, 1, 0),
						},
						[4] = {
							EasingStyle = Enum.PoseEasingStyle.Linear,
							EasingDirection = Enum.PoseEasingDirection.In,
							Value = CFrame.new(0, 2, 0),
						},
					},
				},
			},
		},
	}

	it("should pose the root instance when the animation loads", function()
		runTest(function(test)
			local store = test:getStore()
			TestHelpers.loadAnimation(store, testAnimationData)
			local rootInstance = store:getState().Status.RootInstance
			expect(rootInstance.Head.Neck.Transform).to.equal(CFrame.new(0, 1, 0))
		end)
	end)

	it("should affect the transform only, never changing C0 or C1", function()
		runTest(function(test)
			local store = test:getStore()
			TestHelpers.loadAnimation(store, testAnimationData)
			local rootInstance = store:getState().Status.RootInstance
			local oldC0 = rootInstance.Head.Neck.C0
			local oldC1 = rootInstance.Head.Neck.C1
			store:dispatch(StepAnimation(1))
			expect(rootInstance.Head.Neck.C0).to.equal(oldC0)
			expect(rootInstance.Head.Neck.C1).to.equal(oldC1)
		end)
	end)

	it("should pose the root instance when scrubbing", function()
		runTest(function(test)
			local store = test:getStore()
			TestHelpers.loadAnimation(store, testAnimationData)
			store:dispatch(StepAnimation(4))
			local rootInstance = store:getState().Status.RootInstance
			expect(rootInstance.Head.Neck.Transform).to.equal(CFrame.new(0, 2, 0))
		end)
	end)

	-- test fails when all flags are on, seems tied to a change in VirtualInput.sendText
	-- skipping test until culprit flag is identified
	itSKIP("should re-pose when a keyframe's value changes", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local trackList = TestPaths.getTrackList(container)
			TestHelpers.delay()

			TestHelpers.clickInstance(trackList:WaitForChild("Track_Head").Arrow)
			expect(trackList:WaitForChild("Head_Position")).to.be.ok()
			local textBox = trackList.Head_Position.Y_Entry.Border.TextBox.Border.Text
			TestHelpers.clickInstance(textBox)
			VirtualInput.hitKey(Enum.KeyCode.Backspace)
			VirtualInput.sendText("3")
			TestHelpers.delay()
			VirtualInput.hitKey(Enum.KeyCode.Return)
			TestHelpers.delay()

			local rootInstance = store:getState().Status.RootInstance
			expect(rootInstance.Head.Neck.Transform).to.equal(CFrame.new(0, 3, 0))
		end)
	end)
end
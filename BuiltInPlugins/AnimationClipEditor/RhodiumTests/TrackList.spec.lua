return function()
	local Plugin = script.Parent.Parent

	local Constants = require(Plugin.Src.Util.Constants)

	local TestHelpers = require(Plugin.RhodiumTests.TestHelpers)
	local TestPaths = require(Plugin.RhodiumTests.TestPaths)
	local VirtualInput = require(Plugin.Packages.Dev.Rhodium).VirtualInput
	local runTest = TestHelpers.runTest

	local Templates = require(Plugin.Src.Util.Templates)

	local GetFFlagRetireUILibraryCompat = require(Plugin.LuaFlags.GetFFlagRetireUILibraryCompat)

	local testAnimationData = Templates.animationData()
	testAnimationData.Instances = {
		Root = {
			Tracks = {
				Head = {
					Type = Constants.TRACK_TYPES.CFrame,
					Keyframes = { 0 },
					Data = {
						[0] = {
							Value = CFrame.new(),
						},
					},
				},
				UpperTorso = {
					Type = Constants.TRACK_TYPES.CFrame,
					Keyframes = { 0 },
					Data = {
						[0] = {
							Value = CFrame.new(),
						},
					},
				},
			},
		},
	}

	it("should display an element for every track", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local trackList = TestPaths.getTrackList(container)
			TestHelpers.delay()

			expect(trackList:FindFirstChild("Track_Head")).to.be.ok()
			expect(trackList:FindFirstChild("Track_UpperTorso")).to.be.ok()
		end)
	end)

	it("should select a track when it is clicked", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local trackList = TestPaths.getTrackList(container)
			TestHelpers.delay()

			TestHelpers.clickInstance(trackList:WaitForChild("Track_Head"))
			expect(store:getState().Status.SelectedTracks[1][1]).to.equal("Head")
		end)
	end)

	it("should deselect a track when empty space is clicked", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local trackList = TestPaths.getTrackList(container)
			TestHelpers.delay()

			TestHelpers.clickInstance(trackList:WaitForChild("Track_Head"))
			TestHelpers.clickInstance(trackList)
			expect(#store:getState().Status.SelectedTracks).to.equal(0)
		end)
	end)

	it("should move the selected track with the arrow keys", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local trackList = TestPaths.getTrackList(container)
			TestHelpers.delay()

			TestHelpers.clickInstance(trackList:WaitForChild("Track_Head"))
			expect(store:getState().Status.SelectedTracks[1][1]).to.equal("Head")

			VirtualInput.Keyboard.hitKey(Enum.KeyCode.Up)
			TestHelpers.delay()
			expect(store:getState().Status.SelectedTracks[1][1]).to.equal("UpperTorso")

			VirtualInput.Keyboard.hitKey(Enum.KeyCode.Down)
			TestHelpers.delay()
			expect(store:getState().Status.SelectedTracks[1][1]).to.equal("Head")
		end)
	end)

	it("should toggle a track expanded state when its arrow is clicked", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local trackList = TestPaths.getTrackList(container)
			TestHelpers.delay()

			TestHelpers.clickInstance(trackList:WaitForChild("Track_Head").Arrow)
			expect(trackList:FindFirstChild("Head_Position")).to.be.ok()
			expect(trackList:FindFirstChild("Head_Rotation")).to.be.ok()

			TestHelpers.clickInstance(trackList["Track_Head"].Arrow)
			expect(trackList:FindFirstChild("Head_Position")).never.to.be.ok()
			expect(trackList:FindFirstChild("Head_Rotation")).never.to.be.ok()
		end)
	end)

	it("should toggle the selected track expanded state with the arrow keys", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local trackList = TestPaths.getTrackList(container)
			TestHelpers.delay()

			TestHelpers.clickInstance(trackList:WaitForChild("Track_Head"))
			VirtualInput.Keyboard.hitKey(Enum.KeyCode.Right)
			TestHelpers.delay()
			expect(trackList:FindFirstChild("Head_Position")).to.be.ok()
			expect(trackList:FindFirstChild("Head_Rotation")).to.be.ok()

			VirtualInput.Keyboard.hitKey(Enum.KeyCode.Left)
			TestHelpers.delay()
			expect(trackList:FindFirstChild("Head_Position")).never.to.be.ok()
			expect(trackList:FindFirstChild("Head_Rotation")).never.to.be.ok()
		end)
	end)

	it("should add a keyframe if the keyframe components are changed", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local trackList = TestPaths.getTrackList(container)
			TestHelpers.delay()

			TestHelpers.clickInstance(trackList:WaitForChild("Track_Head").Arrow)
			expect(trackList:WaitForChild("Head_Rotation")).to.be.ok()
			local textBox
			if GetFFlagRetireUILibraryCompat() then
				textBox = trackList.Head_Rotation.X_Entry.Contents.TextBox.Contents.Text
			else
				textBox = trackList.Head_Rotation.X_Entry.Border.TextBox.Border.Text
			end
			TestHelpers.clickInstance(textBox)
			VirtualInput.Keyboard.hitKey(Enum.KeyCode.Backspace)
			VirtualInput.Text.sendText("45")
			TestHelpers.delay()
			VirtualInput.Keyboard.hitKey(Enum.KeyCode.Return)
			TestHelpers.delay()

			local testTrack = TestPaths.getTrack(container, "Track_Head")
			expect(#testTrack:GetChildren()).to.equal(1)
		end)
	end)
end

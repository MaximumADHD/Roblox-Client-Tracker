return function()
	local Plugin = script.Parent.Parent

	local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
	local DeleteSelectedKeyframes = require(Plugin.Src.Thunks.Selection.DeleteSelectedKeyframes)
	local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
	local Undo = require(Plugin.Src.Thunks.History.Undo)
	local Redo = require(Plugin.Src.Thunks.History.Redo)

	local TestHelpers = require(Plugin.RhodiumTestsDeprecated.TestHelpers)
	local TestPaths = require(Plugin.RhodiumTestsDeprecated.TestPaths)
	local VirtualInput = require(Plugin.Rhodium.VirtualInput)
	local Element = require(Plugin.Rhodium.Element)
	local runTest = TestHelpers.runTest

	local Templates = require(Plugin.Src.Util.Templates)
	local testAnimationData = Templates.animationData()
	testAnimationData.Instances = {
		Root = {
			Tracks = {
				Head = {
					Keyframes = {0, 1},
					Data = {
						[0] = {
							Value = CFrame.new(),
						},
						[1] = {
							Value = CFrame.new(),
						},
					},
				},
				UpperTorso = {
					Keyframes = {0, 1},
					Data = {
						[0] = {
							Value = CFrame.new(),
						},
						[1] = {
							Value = CFrame.new(),
						},
					},
				},
			},
		},
	}

	itSKIP("should be able to undo and redo adding a keyframe", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local trackList = TestPaths.getTrackList(container)
			TestHelpers.delay()

			store:dispatch(StepAnimation(3))

			TestHelpers.clickInstance(trackList:WaitForChild("Track_Head").Arrow)
			expect(trackList:WaitForChild("Head_Rotation")).to.be.ok()
			local textBox = trackList.Head_Rotation.X_Entry.Border.TextBox.Border.Text
			TestHelpers.clickInstance(textBox)
			VirtualInput.hitKey(Enum.KeyCode.Backspace)
			VirtualInput.sendText("45")
			TestHelpers.delay()
			VirtualInput.hitKey(Enum.KeyCode.Return)
			TestHelpers.delay()

			local testTrack = TestPaths.getTrack(container, "Track_Head")
			expect(#testTrack:GetChildren()).to.equal(3)
			local summaryTrack = TestPaths.getTrack(container, "SummaryTrack")
			expect(#summaryTrack:GetChildren()).to.equal(3)

			store:dispatch(Undo())
			TestHelpers.delay()
			expect(#testTrack:GetChildren()).to.equal(2)
			expect(#summaryTrack:GetChildren()).to.equal(2)

			store:dispatch(Redo())
			TestHelpers.delay()
			expect(#testTrack:GetChildren()).to.equal(3)
			expect(#summaryTrack:GetChildren()).to.equal(3)
		end)
	end)

	itSKIP("should be able to undo and redo modifying a keyframe's value", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local trackList = TestPaths.getTrackList(container)
			TestHelpers.delay()

			local animationData = store:getState().AnimationData
			local tracks = animationData.Instances.Root.Tracks
			local currentValue = tracks.Head.Data[0]

			TestHelpers.clickInstance(trackList:WaitForChild("Track_Head").Arrow)
			expect(trackList:WaitForChild("Head_Rotation")).to.be.ok()
			local textBox = trackList.Head_Rotation.X_Entry.Border.TextBox.Border.Text
			TestHelpers.clickInstance(textBox)
			VirtualInput.hitKey(Enum.KeyCode.Backspace)
			VirtualInput.sendText("45")
			TestHelpers.delay()
			VirtualInput.hitKey(Enum.KeyCode.Return)
			TestHelpers.delay()

			animationData = store:getState().AnimationData
			tracks = animationData.Instances.Root.Tracks
			expect(tracks.Head.Data[0]).never.to.equal(currentValue)

			store:dispatch(Undo())
			TestHelpers.delay()
			animationData = store:getState().AnimationData
			tracks = animationData.Instances.Root.Tracks
			expect(tracks.Head.Data[0]).to.equal(currentValue)

			store:dispatch(Redo())
			TestHelpers.delay()
			animationData = store:getState().AnimationData
			tracks = animationData.Instances.Root.Tracks
			expect(tracks.Head.Data[0]).never.to.equal(currentValue)
		end)
	end)

	it("should be able to undo and redo deleting a keyframe", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local testTrack = TestPaths.getTrack(container, "Track_Head")

			TestHelpers.clickInstance(testTrack["1"])
			store:dispatch(AddWaypoint())
			store:dispatch(DeleteSelectedKeyframes())
			TestHelpers.delay()

			expect(#testTrack:GetChildren()).to.equal(1)

			store:dispatch(Undo())
			TestHelpers.delay()
			expect(#testTrack:GetChildren()).to.equal(2)

			store:dispatch(Redo())
			TestHelpers.delay()
			expect(#testTrack:GetChildren()).to.equal(1)
		end)
	end)

	it("should be able to undo and redo moving keyframes", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local summaryTrack = TestPaths.getTrack(container, "SummaryTrack")
			TestHelpers.clickInstance(summaryTrack["1"])
			VirtualInput.pressKey(Enum.KeyCode.LeftControl)
			TestHelpers.clickInstance(summaryTrack["2"])
			VirtualInput.releaseKey(Enum.KeyCode.LeftControl)

			local keyframeElement = Element.new(summaryTrack["1"])
			local endPoint = keyframeElement:getCenter() + Vector2.new(20, 0)

			VirtualInput.setCurrentWindow(container)
			VirtualInput.mouseLeftDown(keyframeElement:getCenter())
			TestHelpers.delay()
			VirtualInput.mouseMove(keyframeElement:getCenter() + Vector2.new(10, 0))
			TestHelpers.delay()
			VirtualInput.mouseMove(endPoint)
			TestHelpers.delay()
			VirtualInput.mouseLeftUp(endPoint)
			TestHelpers.delay()

			local animationData = store:getState().AnimationData
			local tracks = animationData.Instances.Root.Tracks
			expect(tracks.Head.Data[0]).never.to.be.ok()
			expect(tracks.UpperTorso.Data[0]).never.to.be.ok()

			store:dispatch(Undo())
			TestHelpers.delay()
			animationData = store:getState().AnimationData
			tracks = animationData.Instances.Root.Tracks
			expect(tracks.Head.Data[0]).to.be.ok()
			expect(tracks.UpperTorso.Data[0]).to.be.ok()

			store:dispatch(Redo())
			TestHelpers.delay()
			animationData = store:getState().AnimationData
			tracks = animationData.Instances.Root.Tracks
			expect(tracks.Head.Data[0]).never.to.be.ok()
			expect(tracks.UpperTorso.Data[0]).never.to.be.ok()
		end)
	end)

	itSKIP("should be able to undo and redo scaling keyframes", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local summaryTrack = TestPaths.getTrack(container, "SummaryTrack")
			local dopeSheetContainer = TestPaths.getDopeSheetController(container)
				:WaitForChild("DopeSheetContainer")

			TestHelpers.clickInstance(summaryTrack["1"])
			expect(dopeSheetContainer:FindFirstChild("ScaleControls")).never.to.be.ok()
			VirtualInput.pressKey(Enum.KeyCode.LeftControl)
			TestHelpers.clickInstance(summaryTrack["2"])
			VirtualInput.releaseKey(Enum.KeyCode.LeftControl)
			expect(dopeSheetContainer:FindFirstChild("ScaleControls")).to.be.ok()

			local scaleControls = dopeSheetContainer.ScaleControls
			local rightBar = scaleControls.RightHandle.DragListenerArea

			local barElement = Element.new(rightBar)
			local endPoint = barElement:getCenter() + Vector2.new(20, 0)

			VirtualInput.setCurrentWindow(container)
			VirtualInput.mouseLeftDown(barElement:getCenter())
			TestHelpers.delay()
			VirtualInput.mouseMove(barElement:getCenter() + Vector2.new(10, 0))
			TestHelpers.delay()
			VirtualInput.mouseMove(endPoint)
			TestHelpers.delay()
			VirtualInput.mouseLeftUp(endPoint)
			TestHelpers.delay()

			local animationData = store:getState().AnimationData
			local tracks = animationData.Instances.Root.Tracks
			expect(tracks.Head.Data[1]).never.to.be.ok()
			expect(tracks.UpperTorso.Data[1]).never.to.be.ok()

			store:dispatch(Undo())
			TestHelpers.delay()
			animationData = store:getState().AnimationData
			tracks = animationData.Instances.Root.Tracks
			expect(tracks.Head.Data[1]).to.be.ok()
			expect(tracks.UpperTorso.Data[1]).to.be.ok()

			store:dispatch(Redo())
			TestHelpers.delay()
			animationData = store:getState().AnimationData
			tracks = animationData.Instances.Root.Tracks
			expect(tracks.Head.Data[1]).never.to.be.ok()
			expect(tracks.UpperTorso.Data[1]).never.to.be.ok()
		end)
	end)
end
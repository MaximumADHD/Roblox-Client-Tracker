return function()
	local Plugin = script.Parent.Parent
	local Cryo = require(Plugin.Packages.Cryo)
	local isEmpty = require(Plugin.Src.Util.isEmpty)
	local Constants = require(Plugin.Src.Util.Constants)

	local ValueChanged = require(Plugin.Src.Thunks.ValueChanged)
	local DeleteSelectedKeyframes = require(Plugin.Src.Thunks.Selection.DeleteSelectedKeyframes)
	local CopySelectedKeyframes = require(Plugin.Src.Thunks.Selection.CopySelectedKeyframes)
	local PasteKeyframes = require(Plugin.Src.Thunks.PasteKeyframes)

	local Framework = require(Plugin.Packages.Framework)

	local Analytics = Framework.ContextServices.Analytics

	local TestHelpers = require(Plugin.RhodiumTests.TestHelpers)
	local TestPaths = require(Plugin.RhodiumTests.TestPaths)
	local VirtualInput = require(Plugin.Packages.Dev.Rhodium).VirtualInput
	local Element = require(Plugin.Packages.Dev.Rhodium).Element
	local runTest = TestHelpers.runTest

	local Templates = require(Plugin.Src.Util.Templates)

	local emptyData = Templates.animationData()
	local testAnimationData = Templates.animationData()

	testAnimationData.Instances = {
		Root = {
			Tracks = {
				Head = {
					Type = Constants.TRACK_TYPES.CFrame,
					Keyframes = { 0, 160 },
					Data = {
						[0] = {
							Value = CFrame.new(),
						},
						[160] = {
							Value = CFrame.new(),
						},
					},
				},
				UpperTorso = {
					Type = Constants.TRACK_TYPES.CFrame,
					Keyframes = { 0, 160 },
					Data = {
						[0] = {
							Value = CFrame.new(),
						},
						[160] = {
							Value = CFrame.new(),
						},
					},
				},
			},
		},
	}

	itSKIP("should be able to add a keyframe without a track", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			local analytics = Analytics.mock()

			TestHelpers.loadAnimation(store, emptyData)
			store:dispatch(ValueChanged("Root", "Head", Constants.TRACK_TYPES.CFrame, 0, CFrame.new(), analytics))
			TestHelpers.delay()

			local testTrack = TestPaths.getTrack(container, "Track_Head")
			expect(#testTrack:GetChildren()).to.equal(1)
			local summaryTrack = TestPaths.getTrack(container, "SummaryTrack")
			expect(#summaryTrack:GetChildren()).to.equal(1)

			local trackList = TestPaths.getTrackList(container)
			expect(trackList:FindFirstChild("Track_Head")).to.be.ok()
		end)
	end)

	it("should be able to add a keyframe to an existing track", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			local analytics = Analytics.mock()
			TestHelpers.loadAnimation(store, emptyData)
			store:dispatch(ValueChanged("Root", { "Head" }, Constants.TRACK_TYPES.CFrame, 0, CFrame.new(), analytics))
			store:dispatch(ValueChanged("Root", { "Head" }, Constants.TRACK_TYPES.CFrame, 160, CFrame.new(), analytics))
			TestHelpers.delay()

			local testTrack = TestPaths.getTrack(container, "Track_Head")
			expect(#Cryo.Dictionary.keys(testTrack:GetChildren())).to.equal(2)
			local summaryTrack = TestPaths.getTrack(container, "SummaryTrack")
			expect(#Cryo.Dictionary.keys(summaryTrack:GetChildren())).to.equal(2)
		end)
	end)

	it("should be able to add a keyframe under an existing summary keyframe", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			local analytics = Analytics.mock()

			TestHelpers.loadAnimation(store, emptyData)
			store:dispatch(ValueChanged("Root", { "Head" }, Constants.TRACK_TYPES.CFrame, 0, CFrame.new(), analytics))
			store:dispatch(
				ValueChanged("Root", { "UpperTorso" }, Constants.TRACK_TYPES.CFrame, 0, CFrame.new(), analytics)
			)
			TestHelpers.delay()

			local testTrack = TestPaths.getTrack(container, "Track_Head")
			expect(#Cryo.Dictionary.keys(testTrack:GetChildren())).to.equal(1)
			local testTrack2 = TestPaths.getTrack(container, "Track_UpperTorso")
			expect(#Cryo.Dictionary.keys(testTrack2:GetChildren())).to.equal(1)
			local summaryTrack = TestPaths.getTrack(container, "SummaryTrack")
			expect(#Cryo.Dictionary.keys(summaryTrack:GetChildren())).to.equal(1)
		end)
	end)

	it("should be able to delete a selected keyframe", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			local analytics = Analytics.mock()

			TestHelpers.loadAnimation(store, testAnimationData)
			local testTrack = TestPaths.getTrack(container, "Track_Head")

			TestHelpers.clickInstance(testTrack["1"])
			store:dispatch(DeleteSelectedKeyframes(analytics))
			TestHelpers.delay()

			expect(#Cryo.Dictionary.keys(testTrack:GetChildren())).to.equal(1)
		end)
	end)

	it("should be able to delete multiple selected keyframes", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			local analytics = Analytics.mock()

			TestHelpers.loadAnimation(store, testAnimationData)
			local testTrack = TestPaths.getTrack(container, "Track_Head")
			local testTrack2 = TestPaths.getTrack(container, "Track_UpperTorso")
			local summaryTrack = TestPaths.getTrack(container, "SummaryTrack")

			TestHelpers.clickInstance(testTrack["1"])
			VirtualInput.Keyboard.pressKey(Enum.KeyCode.LeftControl)
			TestHelpers.clickInstance(testTrack2["1"])
			VirtualInput.Keyboard.releaseKey(Enum.KeyCode.LeftControl)
			store:dispatch(DeleteSelectedKeyframes(analytics))
			TestHelpers.delay()

			expect(#Cryo.Dictionary.keys(testTrack:GetChildren())).to.equal(1)
			expect(#Cryo.Dictionary.keys(testTrack2:GetChildren())).to.equal(1)
			expect(#Cryo.Dictionary.keys(summaryTrack:GetChildren())).to.equal(1)
		end)
	end)

	it("should be able to copy and paste a keyframe", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			local analytics = Analytics.mock()

			TestHelpers.loadAnimation(store, testAnimationData)
			local testTrack = TestPaths.getTrack(container, "Track_Head")
			local summaryTrack = TestPaths.getTrack(container, "SummaryTrack")

			TestHelpers.clickInstance(testTrack["1"])
			store:dispatch(CopySelectedKeyframes())
			store:dispatch(PasteKeyframes(240, analytics))
			TestHelpers.delay()

			expect(#Cryo.Dictionary.keys(testTrack:GetChildren())).to.equal(3)
			expect(#Cryo.Dictionary.keys(summaryTrack:GetChildren())).to.equal(3)
		end)
	end)

	it("should be able to copy and paste multiple keyframes", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			local analytics = Analytics.mock()

			TestHelpers.loadAnimation(store, testAnimationData)
			local testTrack = TestPaths.getTrack(container, "Track_Head")
			local testTrack2 = TestPaths.getTrack(container, "Track_UpperTorso")
			local summaryTrack = TestPaths.getTrack(container, "SummaryTrack")

			TestHelpers.clickInstance(summaryTrack["1"])
			VirtualInput.Keyboard.pressKey(Enum.KeyCode.LeftControl)
			TestHelpers.clickInstance(summaryTrack["2"])
			VirtualInput.Keyboard.releaseKey(Enum.KeyCode.LeftControl)
			store:dispatch(CopySelectedKeyframes())
			store:dispatch(PasteKeyframes(240, analytics))
			TestHelpers.delay()

			expect(#Cryo.Dictionary.keys(testTrack:GetChildren())).to.equal(4)
			expect(#Cryo.Dictionary.keys(testTrack2:GetChildren())).to.equal(4)
			expect(#Cryo.Dictionary.keys(summaryTrack:GetChildren())).to.equal(4)
		end)
	end)

	it("should be able to move a selected keyframe", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local testTrack = TestPaths.getTrack(container, "Track_Head")
			TestHelpers.clickInstance(testTrack["2"])

			local keyframeElement = Element.new(testTrack["2"])
			local endPoint = keyframeElement:getCenter() + Vector2.new(20, 0)

			VirtualInput.setCurrentWindow(container)
			VirtualInput.Mouse.mouseLeftDown(keyframeElement:getCenter())
			TestHelpers.delay()
			VirtualInput.Mouse.mouseMove(keyframeElement:getCenter() + Vector2.new(10, 0))
			TestHelpers.delay()
			VirtualInput.Mouse.mouseMove(endPoint)
			TestHelpers.delay()

			-- Note: Extra jitter was required to get the keyframe to move.
			-- This may be because the DragArea pops up once the mouse starts moving.
			VirtualInput.Mouse.mouseMove(keyframeElement:getCenter())
			TestHelpers.delay()
			VirtualInput.Mouse.mouseMove(endPoint)
			TestHelpers.delay()

			VirtualInput.Mouse.mouseLeftUp(endPoint)
			TestHelpers.delay()

			local selectedKeyframes = store:getState().Status.SelectedKeyframes
			local animationData = store:getState().AnimationData
			local endTick = animationData.Metadata.EndTick
			expect(selectedKeyframes.Root).to.be.ok()
			expect(selectedKeyframes.Root.Head).to.be.ok()
			expect(selectedKeyframes.Root.Head.Selection[1]).never.to.be.ok()
			expect(selectedKeyframes.Root.Head.Selection[endTick]).to.be.ok()
		end)
	end)

	-- In Keyframe.lua, we set [Roact.Event.InputBegan] and [Roact.Event.InputEnded] for the InputButton element.
	-- Those events are called with a UserInputType=MouseMovement when executed from Studio.
	-- However, they are not called from this unit test.
	itSKIP("should be able to move multiple selected keyframes", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local summaryTrack = TestPaths.getTrack(container, "SummaryTrack")
			TestHelpers.clickInstance(summaryTrack["1"])
			VirtualInput.Keyboard.pressKey(Enum.KeyCode.LeftControl)
			TestHelpers.clickInstance(summaryTrack["2"])
			VirtualInput.Keyboard.releaseKey(Enum.KeyCode.LeftControl)

			local keyframeElement = Element.new(summaryTrack["1"])
			local endPoint = keyframeElement:getCenter() + Vector2.new(20, 0)

			VirtualInput.setCurrentWindow(container)
			VirtualInput.Mouse.mouseLeftDown(keyframeElement:getCenter())
			TestHelpers.delay()
			VirtualInput.Mouse.mouseMove(keyframeElement:getCenter() + Vector2.new(10, 0))
			TestHelpers.delay()
			VirtualInput.Mouse.mouseMove(endPoint)
			TestHelpers.delay()
			VirtualInput.Mouse.mouseLeftUp(endPoint)
			TestHelpers.delay()

			local selectedKeyframes = store:getState().Status.SelectedKeyframes
			local animationData = store:getState().AnimationData
			local endTick = animationData.Metadata.EndTick
			expect(selectedKeyframes.Root).to.be.ok()
			expect(selectedKeyframes.Root.Head).to.be.ok()
			expect(selectedKeyframes.Root.UpperTorso).to.be.ok()

			expect(selectedKeyframes.Root.Head.Selection[0]).never.to.be.ok()
			expect(selectedKeyframes.Root.Head.Selection[endTick]).to.be.ok()
			expect(selectedKeyframes.Root.Head.Selection[endTick - 160]).to.be.ok()
			expect(selectedKeyframes.Root.UpperTorso.Selection[0]).never.to.be.ok()
			expect(selectedKeyframes.Root.UpperTorso.Selection[endTick]).to.be.ok()
			expect(selectedKeyframes.Root.UpperTorso.Selection[endTick - 160]).to.be.ok()
		end)
	end)

	it("should maintain selection after moving keyframes", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local summaryTrack = TestPaths.getTrack(container, "SummaryTrack")
			TestHelpers.clickInstance(summaryTrack["1"])

			local keyframeElement = Element.new(summaryTrack["1"])
			local endPoint = keyframeElement:getCenter() + Vector2.new(20, 0)

			VirtualInput.setCurrentWindow(container)
			VirtualInput.Mouse.mouseLeftDown(keyframeElement:getCenter())
			TestHelpers.delay()
			VirtualInput.Mouse.mouseMove(keyframeElement:getCenter() + Vector2.new(10, 0))
			TestHelpers.delay()
			VirtualInput.Mouse.mouseMove(endPoint)
			TestHelpers.delay()
			VirtualInput.Mouse.mouseLeftUp(endPoint)
			TestHelpers.delay()

			local selectedKeyframes = store:getState().Status.SelectedKeyframes
			expect(isEmpty(selectedKeyframes)).to.equal(false)
		end)
	end)

	itSKIP("should be able to scale multiple selected keyframes", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local summaryTrack = TestPaths.getTrack(container, "SummaryTrack")
			local dopeSheetContainer = TestPaths.getDopeSheetController(container):WaitForChild("DopeSheetContainer")

			TestHelpers.clickInstance(summaryTrack["1"])
			expect(dopeSheetContainer:FindFirstChild("ScaleControls")).never.to.be.ok()
			VirtualInput.Keyboard.pressKey(Enum.KeyCode.LeftControl)
			TestHelpers.clickInstance(summaryTrack["2"])
			VirtualInput.Keyboard.releaseKey(Enum.KeyCode.LeftControl)
			expect(dopeSheetContainer:FindFirstChild("ScaleControls")).to.be.ok()

			local scaleControls = dopeSheetContainer.ScaleControls
			local rightBar = scaleControls.RightHandle.DragListenerArea

			local barElement = Element.new(rightBar)
			local endPoint = barElement:getCenter() + Vector2.new(20, 0)

			VirtualInput.setCurrentWindow(container)
			VirtualInput.mouseLeftDown(barElement:getCenter())
			TestHelpers.delay()
			VirtualInput.Mouse.mouseMove(barElement:getCenter() + Vector2.new(10, 0))
			TestHelpers.delay()
			VirtualInput.Mouse.mouseMove(endPoint)
			TestHelpers.delay()
			VirtualInput.Mouse.mouseLeftUp(endPoint)
			TestHelpers.delay()

			local selectedKeyframes = store:getState().Status.SelectedKeyframes
			local animationData = store:getState().AnimationData
			local endTick = animationData.Metadata.EndTick
			expect(selectedKeyframes.Root).to.be.ok()
			expect(selectedKeyframes.Root.Head).to.be.ok()
			expect(selectedKeyframes.Root.Head[0]).to.be.ok()
			expect(selectedKeyframes.Root.Head[160]).never.to.be.ok()
			expect(selectedKeyframes.Root.Head[endTick]).to.be.ok()
			expect(selectedKeyframes.Root.UpperTorso).to.be.ok()
			expect(selectedKeyframes.Root.UpperTorso[0]).to.be.ok()
			expect(selectedKeyframes.Root.UpperTorso[160]).never.to.be.ok()
			expect(selectedKeyframes.Root.UpperTorso[endTick]).to.be.ok()
		end)
	end)
end

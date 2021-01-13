return function()
	local Plugin = script.Parent.Parent

	local TestHelpers = require(Plugin.RhodiumTestsDeprecated.TestHelpers)
	local TestPaths = require(Plugin.RhodiumTestsDeprecated.TestPaths)
	local VirtualInput = require(Plugin.Rhodium.VirtualInput)
	local Element = require(Plugin.Rhodium.Element)
	local runTest = TestHelpers.runTest

	local Templates = require(Plugin.SrcDeprecated.Util.Templates)

	local testAnimationData = Templates.animationData()
	testAnimationData.Instances = {
		Root = {
			Tracks = {
				Head = {
					Keyframes = {1, 2},
					Data = {
						[1] = {},
						[2] = {},
					},
				},
				UpperTorso = {
					Keyframes = {1, 2, 3},
					Data = {
						[1] = {},
						[2] = {},
						[3] = {},
					},
				},
			},
		},
	}
	testAnimationData.Events = {
		Keyframes = {0, 1},
		Data = {
			[0] = {
				TestEvent = "TestValue",
			},
			[1] = {
				OtherEvent = "OtherValue",
			},
		},
	}

	it("should be able to click to select a keyframe", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local testTrack = TestPaths.getTrack(container, "Track_Head")

			TestHelpers.clickInstance(testTrack["1"])

			local selectedKeyframes = store:getState().Status.SelectedKeyframes
			expect(selectedKeyframes.Root).to.be.ok()
			expect(selectedKeyframes.Root.Head).to.be.ok()
			expect(#selectedKeyframes.Root.Head).to.equal(1)
		end)
	end)

	it("should be able to deselect a keyframe by clicking in the timeline", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local testTrack = TestPaths.getTrack(container, "Track_Head")

			TestHelpers.clickInstance(testTrack["1"])
			TestHelpers.clickInstance(testTrack)

			local selectedKeyframes = store:getState().Status.SelectedKeyframes
			expect(selectedKeyframes.Root).never.to.be.ok()
		end)
	end)

	it("should be able to click a summary keyframe to select all keyframes below it", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local summary = TestPaths.getTrack(container, "SummaryTrack")

			TestHelpers.clickInstance(summary["1"])

			local selectedKeyframes = store:getState().Status.SelectedKeyframes
			expect(selectedKeyframes.Root).to.be.ok()
			expect(selectedKeyframes.Root.Head).to.be.ok()
			expect(#selectedKeyframes.Root.Head).to.equal(1)
			expect(selectedKeyframes.Root.UpperTorso).to.be.ok()
			expect(#selectedKeyframes.Root.UpperTorso).to.equal(1)
		end)
	end)

	it("should be able to multi select keyframes", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local testTrack = TestPaths.getTrack(container, "Track_Head")

			TestHelpers.clickInstance(testTrack["1"])
			VirtualInput.pressKey(Enum.KeyCode.LeftControl)
			TestHelpers.clickInstance(testTrack["2"])
			VirtualInput.releaseKey(Enum.KeyCode.LeftControl)

			local selectedKeyframes = store:getState().Status.SelectedKeyframes
			expect(selectedKeyframes.Root).to.be.ok()
			expect(selectedKeyframes.Root.Head).to.be.ok()
			expect(#selectedKeyframes.Root.Head).to.equal(2)
		end)
	end)

	it("should be able to multi select summary keyframes", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local summary = TestPaths.getTrack(container, "SummaryTrack")

			TestHelpers.clickInstance(summary["1"])
			VirtualInput.pressKey(Enum.KeyCode.LeftControl)
			TestHelpers.clickInstance(summary["2"])
			VirtualInput.releaseKey(Enum.KeyCode.LeftControl)

			local selectedKeyframes = store:getState().Status.SelectedKeyframes
			expect(selectedKeyframes.Root).to.be.ok()
			expect(selectedKeyframes.Root.Head).to.be.ok()
			expect(#selectedKeyframes.Root.Head).to.equal(2)
			expect(selectedKeyframes.Root.UpperTorso).to.be.ok()
			expect(#selectedKeyframes.Root.UpperTorso).to.equal(2)
		end)
	end)

	it("should deselect a keyframe if clicked again when multi selecting", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local testTrack = TestPaths.getTrack(container, "Track_Head")

			TestHelpers.clickInstance(testTrack["1"])
			VirtualInput.pressKey(Enum.KeyCode.LeftControl)
			TestHelpers.clickInstance(testTrack["1"])
			VirtualInput.releaseKey(Enum.KeyCode.LeftControl)

			local selectedKeyframes = store:getState().Status.SelectedKeyframes
			expect(selectedKeyframes.Root).never.to.be.ok()
		end)
	end)

	it("should be able to click and drag to select multiple keyframes", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local testTrack = TestPaths.getTrack(container, "Track_UpperTorso")
			local testTrack2 = TestPaths.getTrack(container, "Track_Head")

			local trackElement = Element.new(testTrack)
			local trackElement2 = Element.new(testTrack2)
			local topLeft = trackElement:getLocation() + Vector2.new(3, 3)
			local bottomRight = trackElement2:getLocation() + trackElement2:getSize() - Vector2.new(3, 3)

			VirtualInput.setCurrentWindow(container)
			VirtualInput.mouseLeftDown(topLeft)
			TestHelpers.delay()
			VirtualInput.mouseMove(trackElement:getCenter())
			TestHelpers.delay()
			VirtualInput.mouseMove(bottomRight)
			TestHelpers.delay()
			VirtualInput.mouseLeftUp(bottomRight)
			TestHelpers.delay()

			local selectedKeyframes = store:getState().Status.SelectedKeyframes
			expect(selectedKeyframes.Root).to.be.ok()
			expect(selectedKeyframes.Root.Head).to.be.ok()
			expect(#selectedKeyframes.Root.Head).to.equal(2)
			expect(selectedKeyframes.Root.UpperTorso).to.be.ok()
			expect(#selectedKeyframes.Root.UpperTorso).to.equal(3)
		end)
	end)

	it("should be able to select an event", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local eventsTrack = TestPaths.getEventsTrack(container)
			TestHelpers.delay()

			TestHelpers.clickInstance(eventsTrack["1"])

			local selectedEvents = store:getState().Status.SelectedEvents
			expect(selectedEvents[0]).to.equal(true)
		end)
	end)

	it("should be able to deselect an event", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local eventsTrack = TestPaths.getEventsTrack(container)
			TestHelpers.delay()

			TestHelpers.clickInstance(eventsTrack["1"])
			TestHelpers.clickInstance(eventsTrack)

			local selectedEvents = store:getState().Status.SelectedEvents
			expect(selectedEvents[0]).never.to.be.ok()
		end)
	end)

	it("should be able to select multiple events", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local eventsTrack = TestPaths.getEventsTrack(container)
			TestHelpers.delay()

			TestHelpers.clickInstance(eventsTrack["1"])
			VirtualInput.pressKey(Enum.KeyCode.LeftControl)
			TestHelpers.clickInstance(eventsTrack["2"])
			VirtualInput.releaseKey(Enum.KeyCode.LeftControl)

			local selectedEvents = store:getState().Status.SelectedEvents
			expect(selectedEvents[0]).to.equal(true)
			expect(selectedEvents[1]).to.equal(true)
		end)
	end)

	it("should deselect an event if clicked again when multi selecting", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local eventsTrack = TestPaths.getEventsTrack(container)
			TestHelpers.delay()

			TestHelpers.clickInstance(eventsTrack["1"])
			VirtualInput.pressKey(Enum.KeyCode.LeftControl)
			TestHelpers.clickInstance(eventsTrack["1"])
			VirtualInput.releaseKey(Enum.KeyCode.LeftControl)

			local selectedEvents = store:getState().Status.SelectedEvents
			expect(selectedEvents[0]).never.to.be.ok()
		end)
	end)

	it("should be able to click and drag to select multiple events", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local eventsTrack = TestPaths.getEventsTrack(container)

			local trackElement = Element.new(eventsTrack)
			local topLeft = trackElement:getLocation() + Vector2.new(-10, 3)
			local bottomRight = trackElement:getLocation() + trackElement:getSize() - Vector2.new(3, 3)

			VirtualInput.setCurrentWindow(container)
			VirtualInput.mouseLeftDown(topLeft)
			TestHelpers.delay()
			VirtualInput.mouseMove(trackElement:getCenter())
			TestHelpers.delay()
			VirtualInput.mouseMove(bottomRight)
			TestHelpers.delay()
			VirtualInput.mouseLeftUp(bottomRight)
			TestHelpers.delay()

			local selectedEvents = store:getState().Status.SelectedEvents
			expect(selectedEvents[0]).to.equal(true)
			expect(selectedEvents[1]).to.equal(true)
		end)
	end)
end
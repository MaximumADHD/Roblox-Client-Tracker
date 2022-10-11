return function()
	local Plugin = script.Parent.Parent
	local Cryo = require(Plugin.Packages.Cryo)

	local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
	local DeleteSelectedEvents = require(Plugin.Src.Thunks.Events.DeleteSelectedEvents)
	local CopySelectedEvents = require(Plugin.Src.Thunks.Events.CopySelectedEvents)
	local PasteEvents = require(Plugin.Src.Thunks.Events.PasteEvents)

	local TestHelpers = require(Plugin.RhodiumTests.TestHelpers)
	local TestPaths = require(Plugin.RhodiumTests.TestPaths)
	local VirtualInput = require(Plugin.Packages.Dev.Rhodium).VirtualInput
	local runTest = TestHelpers.runTest

	local Templates = require(Plugin.Src.Util.Templates)
	local testAnimationData = Templates.animationData()

	testAnimationData.Events = {
		Keyframes = { 0, 800 },
		Data = {
			[0] = {
				TestEvent = "TestValue",
			},
			[800] = {
				OtherEvent = "OtherValue",
			},
		},
	}

	it("should display the events in the events track", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local eventsTrack = TestPaths.getEventsTrack(container)
			TestHelpers.delay()

			expect(#Cryo.Dictionary.keys(eventsTrack:GetChildren())).to.equal(2)
		end)
	end)

	itSKIP("should be able to add an event", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			store:dispatch(StepAnimation(1600))
			local eventsTitle = TestPaths.getEventsTitleTrack(container)
			TestHelpers.clickInstance(eventsTitle:WaitForChild("AddEvent"))

			local eventsDialog = test:getSubWindow(1)
			local addEventEntry = TestPaths.getAddEventEntry(eventsDialog)
			TestHelpers.clickInstance(addEventEntry)

			VirtualInput.Text.sendText("NewEvent")
			TestHelpers.delay()
			VirtualInput.Keyboard.hitKey(Enum.KeyCode.Return)

			TestHelpers.clickInstance(eventsDialog.FocusProvider.Buttons["2"])

			local eventsTrack = TestPaths.getEventsTrack(container)
			expect(#Cryo.Dictionary.keys(eventsTrack:GetChildren())).to.equal(3)
		end)
	end)

	itSKIP("should be able to delete an event", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local eventsTitle = TestPaths.getEventsTitleTrack(container)
			TestHelpers.clickInstance(eventsTitle:WaitForChild("AddEvent"))

			local eventsDialog = test:getSubWindow(1)
			local testEventEntry = TestPaths.getEventEntry(eventsDialog, "TestEvent")

			TestHelpers.clickInstance(testEventEntry["1"].DeleteButton)
			TestHelpers.clickInstance(eventsDialog.FocusProvider.Buttons["2"])

			local eventsTrack = TestPaths.getEventsTrack(container)
			expect(#Cryo.Dictionary.keys(eventsTrack:GetChildren())).to.equal(1)
		end)
	end)

	it("should be able to delete an event marker", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local eventsTrack = TestPaths.getEventsTrack(container)
			TestHelpers.delay()

			TestHelpers.clickInstance(eventsTrack["1"])
			store:dispatch(DeleteSelectedEvents())
			TestHelpers.delay()

			expect(#Cryo.Dictionary.keys(eventsTrack:GetChildren())).to.equal(1)
		end)
	end)

	it("should be able to copy and paste an event marker", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local eventsTrack = TestPaths.getEventsTrack(container)
			TestHelpers.delay()

			TestHelpers.clickInstance(eventsTrack["1"])
			store:dispatch(CopySelectedEvents())
			store:dispatch(PasteEvents(1600))
			TestHelpers.delay()

			expect(#Cryo.Dictionary.keys(eventsTrack:GetChildren())).to.equal(3)
		end)
	end)

	it("should be able to copy and paste multiple event markers", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local eventsTrack = TestPaths.getEventsTrack(container)
			TestHelpers.delay()
			TestHelpers.clickInstance(eventsTrack["1"])
			VirtualInput.Keyboard.pressKey(Enum.KeyCode.LeftControl)
			TestHelpers.clickInstance(eventsTrack["2"])
			VirtualInput.Keyboard.releaseKey(Enum.KeyCode.LeftControl)
			store:dispatch(CopySelectedEvents())
			store:dispatch(PasteEvents(1600))
			TestHelpers.delay()
			expect(#Cryo.Dictionary.keys(eventsTrack:GetChildren())).to.equal(4)
		end)
	end)
end

return function()
	local Plugin = script.Parent.Parent
	local Cryo = require(Plugin.Packages.Cryo)

	local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
	local DeleteSelectedEvents = require(Plugin.Src.Thunks.Events.DeleteSelectedEvents)
	local CopySelectedEvents = require(Plugin.Src.Thunks.Events.CopySelectedEvents)
	local PasteEvents = require(Plugin.Src.Thunks.Events.PasteEvents)

	local TestHelpers = require(Plugin.RhodiumTests.TestHelpers)
	local TestPaths = require(Plugin.RhodiumTests.TestPaths)
	local VirtualInput = require(Plugin.Rhodium.VirtualInput)
	local runTest = TestHelpers.runTest

	local Templates = require(Plugin.Src.Util.Templates)
	local testAnimationData = Templates.animationData()

	local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

	testAnimationData.Events = {
		Keyframes = GetFFlagUseTicks() and {0, 80} or {0, 1},
		Data = {
			[0] = {
				TestEvent = "TestValue",
			},
			[1] = not GetFFlagUseTicks() and {
				OtherEvent = "OtherValue",
			} or nil,
			[80] = GetFFlagUseTicks() and {
				OtherEvent = "OtherValue",
			} or nil,

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
			store:dispatch(StepAnimation(GetFFlagUseTicks() and 160 or 2))
			local eventsTitle = TestPaths.getEventsTitleTrack(container)
			TestHelpers.clickInstance(eventsTitle:WaitForChild("AddEvent"))

			local eventsDialog = test:getSubWindow(1)
			local addEventEntry = TestPaths.getAddEventEntry(eventsDialog)
			TestHelpers.clickInstance(addEventEntry)

			VirtualInput.sendText("NewEvent")
			TestHelpers.delay()
			VirtualInput.hitKey(Enum.KeyCode.Return)

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
			store:dispatch(PasteEvents(GetFFlagUseTicks() and 160 or 2))
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
			VirtualInput.pressKey(Enum.KeyCode.LeftControl)
			TestHelpers.clickInstance(eventsTrack["2"])
			VirtualInput.releaseKey(Enum.KeyCode.LeftControl)
			store:dispatch(CopySelectedEvents())
			store:dispatch(PasteEvents(GetFFlagUseTicks() and 160 or 2))
			TestHelpers.delay()

			expect(#Cryo.Dictionary.keys(eventsTrack:GetChildren())).to.equal(4)
		end)
	end)
end
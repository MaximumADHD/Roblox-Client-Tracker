local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local IXPService = game:GetService("IXPService")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll
local jest = JestGlobals.jest
local ReactTestingLibrary = require(VirtualEvents.Parent.Dev.ReactTestingLibrary)
local Rhodium = require(VirtualEvents.Parent.Dev.Rhodium)
local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventsList = require(script.Parent.EventsList)
local getFStringEventsOnExperienceDetailsPageLayer =
	require(VirtualEvents.Parent.SharedFlags).getFStringEventsOnExperienceDetailsPageLayer
local getFFlagRemoveVirtualEventsExperiment =
	require(VirtualEvents.Parent.SharedFlags).getFFlagRemoveVirtualEventsExperiment

local NUM_MOCK_EVENTS = 5
local CURRENT_TIME = DateTime.now()

local act = ReactTestingLibrary.act
local render = ReactTestingLibrary.render

local mockVirtualEvents = {}
for i = 1, NUM_MOCK_EVENTS do
	local event = GraphQLServer.mocks.createMockVirtualEvent(tostring(i))

	event.eventTime = {
		startUtc = DateTime.fromUnixTimestamp(CURRENT_TIME.UnixTimestamp + ((i - 1) * 24 * 60 * 60)):ToIsoDate(),
		endUtc = DateTime.fromUnixTimestamp(CURRENT_TIME.UnixTimestamp + (i * 24 * 60 * 60)):ToIsoDate(),
	}

	table.insert(mockVirtualEvents, event)
end

if not getFFlagRemoveVirtualEventsExperiment() then
	beforeAll(function()
		IXPService:RegisterUserLayers({
			getFStringEventsOnExperienceDetailsPageLayer(),
		})

		IXPService:InitializeUserLayers(123)
	end)

	afterAll(function()
		IXPService:ClearUserLayers()
	end)
end

it("should show 1 event when rendered", function()
	local element = withMockProviders({
		EventsList = React.createElement(EventsList, {
			universeId = -1,
			virtualEvents = mockVirtualEvents,
			currentTime = CURRENT_TIME,
			mockVirtualEventsMVPEnabled = if getFFlagRemoveVirtualEventsExperiment() then nil else true,
		}),
	})

	local result = render(element)

	local _, joinEvent = result.findByText("Join Event"):await()
	local _, seeMore = result.findByText("See More"):await()

	expect(joinEvent).toBeDefined()
	expect(seeMore).toBeDefined()
	expect(result.queryByText("Notify Me")).toBeNil()
end)

it("should show 3 more events when clicking See More", function()
	local element = withMockProviders({
		EventsList = React.createElement(EventsList, {
			universeId = -1,
			virtualEvents = mockVirtualEvents,
			currentTime = CURRENT_TIME,
			mockVirtualEventsMVPEnabled = if getFFlagRemoveVirtualEventsExperiment() then nil else true,
		}),
	})

	local result = render(element)
	local _, seeMore = result.findByText("See More"):await()

	act(function()
		Rhodium.Element.new(seeMore):click()
	end)

	local events = result.queryAllByText("Event Name")

	expect(#events).toBe(4)
end)

it("should sort events by time", function()
	local reversedVirtualEvents = {}
	-- Events are inserted in reverse so we can check that they render in
	-- chronological order
	for i = NUM_MOCK_EVENTS, 1, -1 do
		local event = GraphQLServer.mocks.createMockVirtualEvent(tostring(i))
		event.title = "Event " .. tostring(i)
		event.eventTime = {
			startUtc = DateTime.fromUnixTimestamp(CURRENT_TIME.UnixTimestamp + ((i - 1) * 24 * 60 * 60)):ToIsoDate(),
			endUtc = DateTime.fromUnixTimestamp(CURRENT_TIME.UnixTimestamp + (i * 24 * 60 * 60)):ToIsoDate(),
		}
		table.insert(reversedVirtualEvents, event)
	end

	local element = withMockProviders({
		EventsList = React.createElement(EventsList, {
			universeId = -1,
			virtualEvents = reversedVirtualEvents,
			currentTime = CURRENT_TIME,
			initialEventsShown = NUM_MOCK_EVENTS,
			mockVirtualEventsMVPEnabled = if getFFlagRemoveVirtualEventsExperiment() then nil else true,
		}),
	})

	local result = render(element)
	local event1 = result.getByText("Event 1")
	local event2 = result.getByText("Event 2")
	local event3 = result.getByText("Event 3")

	expect(event1.AbsolutePosition.Y).toBeLessThan(event2.AbsolutePosition.Y)
	expect(event1.AbsolutePosition.Y).toBeLessThan(event3.AbsolutePosition.Y)
	expect(event2.AbsolutePosition.Y).toBeLessThan(event3.AbsolutePosition.Y)
end)

it("should trigger onRsvpChanged when clicking Notify Me", function()
	local onRsvpChanged = jest.fn()

	local element = withMockProviders({
		EventsList = React.createElement(EventsList, {
			universeId = -1,
			virtualEvents = mockVirtualEvents,
			currentTime = CURRENT_TIME,
			onRsvpChanged = onRsvpChanged,
			initialEventsShown = NUM_MOCK_EVENTS,
			mockVirtualEventsMVPEnabled = if getFFlagRemoveVirtualEventsExperiment() then nil else true,
		}),
	})

	local result = render(element)
	local buttons = result.getAllByText("Notify Me")

	for _, button in buttons do
		act(function()
			Rhodium.Element.new(button):click()
		end)
	end

	expect(onRsvpChanged).toHaveBeenCalledTimes(#buttons)
end)

it("should trigger onJoinEvent when clicking Join Event", function()
	local onJoinEvent = jest.fn()

	local element = withMockProviders({
		EventsList = React.createElement(EventsList, {
			universeId = -1,
			virtualEvents = mockVirtualEvents,
			currentTime = CURRENT_TIME,
			onJoinEvent = onJoinEvent,
			initialEventsShown = NUM_MOCK_EVENTS,
			mockVirtualEventsMVPEnabled = if getFFlagRemoveVirtualEventsExperiment() then nil else true,
		}),
	})

	local result = render(element)
	local buttons = result.getAllByText("Join Event")

	for _, button in buttons do
		act(function()
			Rhodium.Element.new(button):click()
		end)
	end

	expect(onJoinEvent).toHaveBeenCalledTimes(#buttons)
end)

it("should trigger onTileActivated when clicking on the event tile", function()
	local onJoinEvent = jest.fn()

	local element = withMockProviders({
		EventsList = React.createElement(EventsList, {
			universeId = -1,
			virtualEvents = mockVirtualEvents,
			currentTime = CURRENT_TIME,
			onJoinEvent = onJoinEvent,
			initialEventsShown = NUM_MOCK_EVENTS,
			mockVirtualEventsMVPEnabled = if getFFlagRemoveVirtualEventsExperiment() then nil else true,
		}),
	})

	local result = render(element)
	local buttons = result.getAllByText("Join Event")

	for _, button in buttons do
		act(function()
			Rhodium.Element.new(button):click()
		end)
	end

	expect(onJoinEvent).toHaveBeenCalledTimes(#buttons)
end)

it("should render nothing if no VirtualEvents are found", function()
	local element = withMockProviders({
		EventsList = React.createElement(EventsList, {
			universeId = -1,
			virtualEvents = {},
			currentTime = CURRENT_TIME,
			mockVirtualEventsMVPEnabled = if getFFlagRemoveVirtualEventsExperiment() then nil else true,
		}),
	})

	local result = render(element)

	expect(#result.container:GetChildren()).toBe(0)
end)

if not getFFlagRemoveVirtualEventsExperiment() then
	describe("experiment", function()
		it("should render when enrolled", function()
			local element = withMockProviders({
				EventsList = React.createElement(EventsList, {
					universeId = -1,
					virtualEvents = mockVirtualEvents,
					currentTime = CURRENT_TIME,
					initialEventsShown = NUM_MOCK_EVENTS,
					mockVirtualEventsMVPEnabled = true,
				}),
			})

			local result = render(element)

			local eventsList = result.container:FindFirstChild("EventsList")

			-- Expecting 2 children to account for ExposureLogger
			expect(#eventsList:GetChildren()).toBe(2)
		end)

		it("should render nothing if unenrolled", function()
			local element = withMockProviders({
				EventsList = React.createElement(EventsList, {
					universeId = -1,
					virtualEvents = mockVirtualEvents,
					currentTime = CURRENT_TIME,
					initialEventsShown = NUM_MOCK_EVENTS,
					mockVirtualEventsMVPEnabled = false,
				}),
			})

			local result = render(element)

			local eventsList = result.container:FindFirstChild("EventsList")

			-- Expecting 1 child to account for ExposureLogger
			expect(#eventsList:GetChildren()).toBe(1)
		end)
	end)
end

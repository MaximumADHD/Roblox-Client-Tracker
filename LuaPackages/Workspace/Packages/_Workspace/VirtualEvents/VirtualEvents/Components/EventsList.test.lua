local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local ReactTestingLibrary = require(VirtualEvents.Parent.Dev.ReactTestingLibrary)
local Rhodium = require(VirtualEvents.Parent.Dev.Rhodium)
local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local EventsList = require(script.Parent.EventsList)

local NUM_MOCK_EVENTS = 5

local act = ReactTestingLibrary.act
local render = ReactTestingLibrary.render
local waitFor = ReactTestingLibrary.waitFor

local mockResolvers = {
	VirtualEvent = {
		experienceDetails = function()
			return {
				playing = 50000,
			}
		end,
		rsvpCounters = function()
			return {
				going = 2500,
			}
		end,
	},
	Query = {
		virtualEventsByUniverseId = function(_root, args)
			local virtualEvents = {}

			for i = 1, NUM_MOCK_EVENTS do
				local now = DateTime.now()
				local event = VirtualEventModel.mock(tostring(i)) :: any

				event.eventTime.startUtc = DateTime.fromUnixTimestamp(now.UnixTimestamp + ((i - 1) * 24 * 60 * 60))
					:ToIsoDate()
				event.eventTime.endUtc = DateTime.fromUnixTimestamp(now.UnixTimestamp + (i * 24 * 60 * 60)):ToIsoDate()

				table.insert(virtualEvents, event)
			end

			return {
				cursor = "cursor",
				virtualEvents = virtualEvents,
			}
		end,
	},
}

it("should show 1 event when rendered", function()
	local element = withMockProviders({
		EventsList = React.createElement(EventsList, {
			universeId = -1,
		}),
	}, {
		mockResolvers = mockResolvers,
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
		}),
	}, {
		mockResolvers = mockResolvers,
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
	local element = withMockProviders({
		EventsList = React.createElement(EventsList, {
			universeId = -1,
			initialEventsShown = NUM_MOCK_EVENTS,
		}),
	}, {
		mockResolvers = {
			Query = {
				virtualEventsByUniverseId = function(_root, args)
					local virtualEvents = {}

					-- Events are inserted in reverse so we can check that they
					-- render in chronological order
					for i = NUM_MOCK_EVENTS, 1, -1 do
						local now = DateTime.now()
						local event = VirtualEventModel.mock(tostring(i)) :: any
						event.title = "Event " .. tostring(i)

						event.eventTime.startUtc = DateTime.fromUnixTimestamp(now.UnixTimestamp + i * 24 * 60 * 60)
							:ToIsoDate()
						event.eventTime.endUtc = DateTime.fromUnixTimestamp(now.UnixTimestamp + i * 24 * 60 * 60)
							:ToIsoDate()

						table.insert(virtualEvents, event)
					end

					return {
						cursor = "cursor",
						virtualEvents = virtualEvents,
					}
				end,
			},
		},
	})

	local result = render(element)

	local _, event1 = result.findByText("Event 1"):await()
	local _, event2 = result.findByText("Event 2"):await()
	local _, event3 = result.findByText("Event 3"):await()

	expect(event1.AbsolutePosition.Y).toBeLessThan(event2.AbsolutePosition.Y)
	expect(event1.AbsolutePosition.Y).toBeLessThan(event3.AbsolutePosition.Y)
	expect(event2.AbsolutePosition.Y).toBeLessThan(event3.AbsolutePosition.Y)
end)

it("should trigger onRsvpChanged when clicking Notify Me", function()
	local onRsvpChanged = jest.fn()

	local element = withMockProviders({
		EventsList = React.createElement(EventsList, {
			universeId = -1,
			onRsvpChanged = onRsvpChanged,
			initialEventsShown = NUM_MOCK_EVENTS,
		}),
	}, {
		mockResolvers = mockResolvers,
	})

	local result = render(element)

	waitFor(function()
		expect(result.getByText("Notify Me")).toBeDefined()
	end):await()

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
			onJoinEvent = onJoinEvent,
			initialEventsShown = NUM_MOCK_EVENTS,
		}),
	}, {
		mockResolvers = mockResolvers,
	})

	local result = render(element)

	waitFor(function()
		expect(result.getByText("Join Event")).toBeDefined()
	end):await()

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
			onJoinEvent = onJoinEvent,
			initialEventsShown = NUM_MOCK_EVENTS,
		}),
	}, {
		mockResolvers = mockResolvers,
	})

	local result = render(element)

	waitFor(function()
		expect(result.getByText("Join Event")).toBeDefined()
	end):await()

	local buttons = result.getAllByText("Join Event")

	for _, button in buttons do
		act(function()
			Rhodium.Element.new(button):click()
		end)
	end

	expect(onJoinEvent).toHaveBeenCalledTimes(#buttons)
end)

it("should render nothing if the no VirtualEvents are found", function()
	local element = withMockProviders({
		EventsList = React.createElement(EventsList, {
			universeId = -1,
		}),
	}, {
		mockResolvers = {
			Query = {
				virtualEventsByUniverseId = function(_root, args)
					return {
						cursor = "cursor",
						virtualEvents = {},
					}
				end,
			},
		},
	})

	local result = render(element)

	expect(#result.container:GetChildren()).toBe(0)
end)

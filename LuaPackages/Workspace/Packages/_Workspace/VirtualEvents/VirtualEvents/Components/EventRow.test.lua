local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local ReactTestingLibrary = require(VirtualEvents.Parent.Dev.ReactTestingLibrary)
local Rhodium = require(VirtualEvents.Parent.Dev.Rhodium)
local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local types = require(VirtualEvents.types)
local EventRow = require(script.Parent.EventRow)

type VirtualEvent = GraphQLServer.VirtualEvent

local act = ReactTestingLibrary.act
local render = ReactTestingLibrary.render
local waitFor = ReactTestingLibrary.waitFor

local function createMockVirtualEvent(eventStatus: types.EventTimerStatus): GraphQLServer.VirtualEvent
	local virtualEvent = VirtualEventModel.mock("1") :: any

	local now = DateTime.now():ToLocalTime()
	local upcoming = {
		DateTime.fromLocalTime(now.Year, now.Month, now.Day + 1, 12, 0, 0, 0),
		DateTime.fromLocalTime(now.Year, now.Month, now.Day + 2, 12, 0, 0, 0),
	}
	local ongoing = {
		DateTime.fromLocalTime(now.Year, now.Month, now.Day, 0, 0, 0, 0),
		DateTime.fromLocalTime(now.Year, now.Month, now.Day + 1, 12, 0, 0, 0),
	}

	if eventStatus == "Upcoming" then
		virtualEvent.eventTime.startUtc = upcoming[1]:ToIsoDate()
		virtualEvent.eventTime.endUtc = upcoming[2]:ToIsoDate()
	elseif eventStatus == "Ongoing" then
		virtualEvent.eventTime.startUtc = ongoing[1]:ToIsoDate()
		virtualEvent.eventTime.endUtc = ongoing[2]:ToIsoDate()
	end

	virtualEvent.rsvpCounters = {
		going = 2500,
	}

	virtualEvent.experienceDetails = {
		playing = 50000,
	}

	return virtualEvent
end

local upcomingVirtualEvent = createMockVirtualEvent("Upcoming")
local ongoingVirtualEvent = createMockVirtualEvent("Ongoing")

it("should trigger onTileActivated when clicking anywhere except the call-to-action", function()
	local mockOnTileActivated = jest.fn()

	local element = withMockProviders({
		EventRow = React.createElement(EventRow, {
			virtualEvent = upcomingVirtualEvent,
			onTileActivated = mockOnTileActivated,
		}),
	})

	local result = render(element)

	waitFor(function()
		expect(result.container.AbsoluteSize).never.toBe(Vector2.zero)
	end):await()

	act(function()
		Rhodium.Element.new(result.container):click()
	end)

	expect(mockOnTileActivated).toHaveBeenCalledTimes(1)

	local button = result.getByText("Notify Me")

	act(function()
		Rhodium.Element.new(button):click()
	end)

	expect(mockOnTileActivated).toHaveBeenCalledTimes(1)
end)

describe("upcoming event", function()
	it("should show a Notify Me button before the event starts", function()
		local element = withMockProviders({
			EventRow = React.createElement(EventRow, {
				virtualEvent = upcomingVirtualEvent,
			}),
		})

		local result = render(element)

		expect(result.queryByText("Notify Me")).toBeDefined()
	end)

	it("should display the RSVP count", function()
		local element = withMockProviders({
			EventRow = React.createElement(EventRow, {
				virtualEvent = upcomingVirtualEvent,
			}),
		})

		local result = render(element)

		local _, count = result.findByText("2.5K"):await()
		expect(count).toBeDefined()
	end)

	it("should never display the attendance since the event hasn't started yet", function()
		local element = withMockProviders({
			EventRow = React.createElement(EventRow, {
				virtualEvent = upcomingVirtualEvent,
			}),
		})

		local result = render(element)

		expect(result.queryByText("50K")).toBeUndefined()
	end)

	it("should display a separate button when the user has RSVP'd", function()
		local virtualEvent = createMockVirtualEvent("Upcoming")
		virtualEvent.userRsvpStatus = "going"

		local element = withMockProviders({
			EventRow = React.createElement(EventRow, {
				virtualEvent = virtualEvent,
			}),
		})

		local result = render(element)

		expect(result.queryByText("Interested")).toBeDefined()
	end)

	it("should trigger onRsvpChanged when clicking Notify Me", function()
		local mockOnRsvpChanged = jest.fn()

		local element = withMockProviders({
			EventRow = React.createElement(EventRow, {
				virtualEvent = upcomingVirtualEvent,
				onRsvpChanged = mockOnRsvpChanged,
			}),
		})

		local result = render(element)
		local button = result.getByText("Notify Me")

		act(function()
			Rhodium.Element.new(button):click()
		end)

		expect(mockOnRsvpChanged).toHaveBeenCalled()
	end)
end)

describe("ongoing event", function()
	it("should display the RSVP count", function()
		local element = withMockProviders({
			EventRow = React.createElement(EventRow, {
				virtualEvent = ongoingVirtualEvent,
			}),
		})

		local result = render(element)

		local _, count = result.findByText("2.5K"):await()
		expect(count).toBeDefined()
	end)

	it("should display the current attendance count", function()
		local element = withMockProviders({
			EventRow = React.createElement(EventRow, {
				virtualEvent = ongoingVirtualEvent,
			}),
		})

		local result = render(element)

		local _, count = result.findByText("50K"):await()
		expect(count).toBeDefined()
	end)

	it("should show a Join Event button", function()
		local element = withMockProviders({
			EventRow = React.createElement(EventRow, {
				virtualEvent = ongoingVirtualEvent,
			}),
		})

		local result = render(element)

		local button = result.getByText("Join Event")

		expect(button).toBeDefined()
	end)

	it("should trigger onJoinEvent when clicking the Join Event button", function()
		local mockOnJoinEvent = jest.fn()

		local element = withMockProviders({
			EventRow = React.createElement(EventRow, {
				virtualEvent = ongoingVirtualEvent,
				onJoinEvent = mockOnJoinEvent,
			}),
		})

		local result = render(element)
		local button = result.getByText("Join Event")

		act(function()
			Rhodium.Element.new(button):click()
		end)

		expect(mockOnJoinEvent).toHaveBeenCalled()
	end)
end)

describe("text truncation", function()
	local virtualEventWithLongText = createMockVirtualEvent("Upcoming")
	virtualEventWithLongText.title = "A really long event name that shows off truncation"
	virtualEventWithLongText.description =
		"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae congue eu consequat ac felis donec et."

	local elementWithTruncation = withMockProviders({
		Wrapper = React.createElement("Frame", {
			-- Wrap to the same width as the story so we have a predictable size to work with
			Size = UDim2.fromOffset(339, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
		}, {
			EventRow = React.createElement(EventRow, {
				virtualEvent = virtualEventWithLongText,
			}),
		}),
	})

	it("should truncate the title", function()
		local result = render(elementWithTruncation)
		local title = result.getByText(virtualEventWithLongText.title) :: TextLabel

		expect(title.TextFits).toBe(false)
	end)

	it("should truncate the description", function()
		local result = render(elementWithTruncation)
		local description = result.getByText(virtualEventWithLongText.description) :: TextLabel

		expect(description.TextFits).toBe(false)
	end)
end)

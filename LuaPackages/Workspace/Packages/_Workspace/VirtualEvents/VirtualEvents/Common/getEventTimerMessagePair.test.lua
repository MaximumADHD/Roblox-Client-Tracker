local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local getEventTimerMessagePair = require(script.Parent.getEventTimerMessagePair)

local START_HOUR = 12
local END_HOUR = 20

local mockVirtualEvent = VirtualEventModel.mock("1")
mockVirtualEvent.eventTime.startTime = DateTime.fromLocalTime(2022, 1, 10, START_HOUR, 0, 0)
mockVirtualEvent.eventTime.endTime = DateTime.fromLocalTime(2022, 1, 10, END_HOUR, 0, 0)

it("should return the full date for an upcoming event", function()
	local currentTime = DateTime.fromLocalTime(2022, 1, 10, 4, 0, 0)
	local message = getEventTimerMessagePair(mockVirtualEvent, currentTime)

	expect(message.startMessage).toBe("MON, JAN 10 AT 12:00 PM")
	expect(message.endMessage).toBe("MON, JAN 10 AT 8:00 PM")
end)

it("should return 'TODAY AT X' for an event happening soon", function()
	local currentTime = DateTime.fromLocalTime(2022, 1, 10, START_HOUR - 2, 0, 0)
	local message = getEventTimerMessagePair(mockVirtualEvent, currentTime)

	expect(message.startMessage).toBe("TODAY AT 12:00 PM")
	expect(message.endMessage).toBe("MON, JAN 10 AT 8:00 PM")
end)

it("should return 'HAPPENING NOW' for an ongoing event", function()
	local currentTime = DateTime.fromLocalTime(2022, 1, 10, START_HOUR + 1, 0, 0)
	local message = getEventTimerMessagePair(mockVirtualEvent, currentTime)

	expect(message.startMessage).toBe("HAPPENING NOW")
	expect(message.endMessage).toBe("MON, JAN 10 AT 8:00 PM")
end)

it("should return 'ENDS IN X HOURS' when the event is a few hours away from ending", function()
	local currentTime = DateTime.fromLocalTime(2022, 1, 10, END_HOUR - 2, 0, 0)
	local message = getEventTimerMessagePair(mockVirtualEvent, currentTime)

	expect(message.startMessage).toBe("ENDS IN 2 HOURS")
	expect(message.endMessage).toBe("AT 8:00 PM")
end)

it("should return 'ENDS IN 1 HOUR' when there is less than 2 hours until the event ends", function()
	local currentTime = DateTime.fromLocalTime(2022, 1, 10, END_HOUR - 2, 30, 0)
	local message = getEventTimerMessagePair(mockVirtualEvent, currentTime)

	expect(message.startMessage).toBe("ENDS IN 1 HOUR")
	expect(message.endMessage).toBe("AT 8:00 PM")
end)

it("should return 'ENDS IN X MINUTES' when the event is minutes away from ending", function()
	local currentTime = DateTime.fromLocalTime(2022, 1, 10, END_HOUR - 1, 40, 0)
	local message = getEventTimerMessagePair(mockVirtualEvent, currentTime)

	expect(message.startMessage).toBe("ENDS IN 20 MINUTES")
	expect(message.endMessage).toBe("AT 8:00 PM")
end)

it("should return 'EVENT ENDED' for an event that elapsed", function()
	local currentTime = DateTime.fromLocalTime(2022, 1, 10, END_HOUR, 0, 0)
	local message = getEventTimerMessagePair(mockVirtualEvent, currentTime)

	expect(message.startMessage).toBe("EVENT ENDED")
	expect(message.endMessage).toBeNil()
end)

return {}

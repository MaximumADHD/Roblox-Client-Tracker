local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local getEventTimerStatus = require(script.Parent.getEventTimerStatus)
local getFFlagVirtualEventsGraphQL = require(VirtualEvents.Parent.SharedFlags).getFFlagVirtualEventsGraphQL

local START_HOUR = 12
local END_HOUR = 20

local mockVirtualEvent = VirtualEventModel.mock("1")
if getFFlagVirtualEventsGraphQL() then
	mockVirtualEvent.eventTime.startUtc = DateTime.fromLocalTime(2022, 1, 10, START_HOUR, 0, 0):ToIsoDate()
	mockVirtualEvent.eventTime.endUtc = DateTime.fromLocalTime(2022, 1, 10, END_HOUR, 0, 0):ToIsoDate()
else
	mockVirtualEvent.eventTime.startTime = DateTime.fromLocalTime(2022, 1, 10, START_HOUR, 0, 0)
	mockVirtualEvent.eventTime.endTime = DateTime.fromLocalTime(2022, 1, 10, END_HOUR, 0, 0)
end

it("should return Upcoming when the event hasn't started yet", function()
	local currentTime = DateTime.fromLocalTime(2022, 1, 10, START_HOUR - 10, 0, 0)
	expect(getEventTimerStatus(mockVirtualEvent, currentTime)).toBe("Upcoming")

	currentTime = DateTime.fromLocalTime(2022, 1, 10, START_HOUR - 5, 0, 0)
	expect(getEventTimerStatus(mockVirtualEvent, currentTime)).toBe("Upcoming")

	currentTime = DateTime.fromLocalTime(2022, 1, 10, START_HOUR, 0, 0)
	expect(getEventTimerStatus(mockVirtualEvent, currentTime)).never.toBe("Upcoming")
end)

it("should return UpcomingImminent for an event happening soon", function()
	local currentTime = DateTime.fromLocalTime(2022, 1, 10, START_HOUR - 2, 0, 0)
	expect(getEventTimerStatus(mockVirtualEvent, currentTime)).toBe("UpcomingImminent")

	currentTime = DateTime.fromLocalTime(2022, 1, 10, START_HOUR - 1, 0, 0)
	expect(getEventTimerStatus(mockVirtualEvent, currentTime)).toBe("UpcomingImminent")

	currentTime = DateTime.fromLocalTime(2022, 1, 10, START_HOUR, 0, 0)
	expect(getEventTimerStatus(mockVirtualEvent, currentTime)).never.toBe("UpcomingImminent")
end)

it("should return Ongoing when the event is active", function()
	local currentTime = DateTime.fromLocalTime(2022, 1, 10, START_HOUR - 2, 0, 0)
	expect(getEventTimerStatus(mockVirtualEvent, currentTime)).never.toBe("Ongoing")

	currentTime = DateTime.fromLocalTime(2022, 1, 10, START_HOUR + 1, 0, 0)
	expect(getEventTimerStatus(mockVirtualEvent, currentTime)).toBe("Ongoing")

	currentTime = DateTime.fromLocalTime(2022, 1, 10, START_HOUR + 2, 0, 0)
	expect(getEventTimerStatus(mockVirtualEvent, currentTime)).toBe("Ongoing")

	currentTime = DateTime.fromLocalTime(2022, 1, 10, END_HOUR, 0, 0)
	expect(getEventTimerStatus(mockVirtualEvent, currentTime)).never.toBe("Ongoing")
end)

it("should return ElapsedImminent when the event is ending soon", function()
	local currentTime = DateTime.fromLocalTime(2022, 1, 10, START_HOUR + 4, 0, 0)
	expect(getEventTimerStatus(mockVirtualEvent, currentTime)).toBe("ElapsedImminent")

	currentTime = DateTime.fromLocalTime(2022, 1, 10, START_HOUR + 5, 0, 0)
	expect(getEventTimerStatus(mockVirtualEvent, currentTime)).toBe("ElapsedImminent")

	currentTime = DateTime.fromLocalTime(2022, 1, 10, END_HOUR, 0, 0)
	expect(getEventTimerStatus(mockVirtualEvent, currentTime)).never.toBe("ElapsedImminent")
end)

it("should return Elapsed when event has ended", function()
	local currentTime = DateTime.fromLocalTime(2022, 1, 10, END_HOUR + 1, 0, 0)
	expect(getEventTimerStatus(mockVirtualEvent, currentTime)).toBe("Elapsed")

	currentTime = DateTime.fromLocalTime(2022, 1, 10, END_HOUR + 4, 0, 0)
	expect(getEventTimerStatus(mockVirtualEvent, currentTime)).toBe("Elapsed")

	currentTime = DateTime.fromLocalTime(2022, 1, 10, END_HOUR - 2, 0, 0)
	expect(getEventTimerStatus(mockVirtualEvent, currentTime)).never.toBe("Elapsed")
end)

return {}

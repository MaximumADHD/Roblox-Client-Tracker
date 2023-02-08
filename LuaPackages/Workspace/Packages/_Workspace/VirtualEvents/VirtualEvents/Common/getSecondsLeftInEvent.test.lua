local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local getFFlagVirtualEventsGraphQL = require(VirtualEvents.Parent.SharedFlags).getFFlagVirtualEventsGraphQL
local getSecondsLeftInEvent = require(script.Parent.getSecondsLeftInEvent)

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

it("should return the amount of time (in seconds) left in the event", function()
	local currentTime = DateTime.fromLocalTime(2022, 1, 10, 16, 0, 0)
	local seconds = getSecondsLeftInEvent(mockVirtualEvent, currentTime)

	expect(seconds).toBe((20 - 16) * 60 * 60)
end)

it("should return INF if the event hasn't started yet", function()
	local currentTime = DateTime.fromLocalTime(2022, 1, 10, 4, 0, 0)
	local seconds = getSecondsLeftInEvent(mockVirtualEvent, currentTime)

	expect(seconds).toBe(math.huge)
end)

it("should return 0 if the event has ended", function()
	local currentTime = DateTime.fromLocalTime(2022, 1, 10, 22, 0, 0)
	local seconds = getSecondsLeftInEvent(mockVirtualEvent, currentTime)

	expect(seconds).toBe(0)
end)

return {}

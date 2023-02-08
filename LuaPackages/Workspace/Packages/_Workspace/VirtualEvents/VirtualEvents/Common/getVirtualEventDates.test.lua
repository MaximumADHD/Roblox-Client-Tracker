local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local getVirtualEventDates = require(script.Parent.getVirtualEventDates)

it("should convert the UTC times into DateTime instances", function()
	local virtualEvent: GraphQLServer.VirtualEvent = {
		id = "1",
		eventTime = {
			startUtc = "2023-01-18T21:43:36Z",
			endUtc = "2023-02-18T21:43:44Z",
		},
	}

	local dates = getVirtualEventDates(virtualEvent)

	expect(dates.startDate:ToLocalTime().Month).toBe(1)
	expect(dates.endDate:ToLocalTime().Month).toBe(2)
end)

it("should return DateTime.now() for a missing time", function()
	local missingStartTime: GraphQLServer.VirtualEvent = {
		id = "1",
		eventTime = {
			endUtc = "2023-02-18T21:43:44Z",
		},
	}

	local dates = getVirtualEventDates(missingStartTime)

	expect(dates.startDate).toBeDefined()
	expect(dates.endDate).toBeDefined()

	local missingEndTime: GraphQLServer.VirtualEvent = {
		id = "2",
		eventTime = {
			endUtc = "2023-02-18T21:43:44Z",
		},
	}

	dates = getVirtualEventDates(missingEndTime)

	expect(dates.startDate).toBeDefined()
	expect(dates.endDate).toBeDefined()

	local missingBoth: GraphQLServer.VirtualEvent = {
		id = "3",
		eventTime = {},
	}

	dates = getVirtualEventDates(missingBoth)

	expect(dates.startDate).toBeDefined()
	expect(dates.endDate).toBeDefined()
end)

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local sortEventsByStartDate = require(script.Parent.sortEventsByStartDate)

local now = DateTime.now()

local unsortedVirtualEvents = {
	{
		id = "1",
		eventTime = {
			startUtc = DateTime.fromUnixTimestamp(now.UnixTimestamp + 1000):ToIsoDate(),
		},
	},
	{
		id = "2",
		eventTime = {
			startUtc = DateTime.fromUnixTimestamp(now.UnixTimestamp + 500):ToIsoDate(),
		},
	},
	{
		id = "3",
		eventTime = {
			startUtc = DateTime.fromUnixTimestamp(now.UnixTimestamp + 1500):ToIsoDate(),
		},
	},
	{
		id = "4",
		eventTime = {
			startUtc = DateTime.fromUnixTimestamp(now.UnixTimestamp + 250):ToIsoDate(),
		},
	},
}

test("argument is not mutated", function()
	local sorted = sortEventsByStartDate(unsortedVirtualEvents)
	expect(unsortedVirtualEvents).never.toEqual(sorted)
end)

test("VirtualEvents are sorted by start date", function()
	local sorted = sortEventsByStartDate(unsortedVirtualEvents)

	expect(sorted[1].id).toBe("4")
	expect(sorted[2].id).toBe("2")
	expect(sorted[3].id).toBe("1")
	expect(sorted[4].id).toBe("3")
end)

return {}

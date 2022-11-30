local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local formatDate = require(script.Parent.formatDate)

it("should return a string in all caps", function()
	local dateString = formatDate(DateTime.now())
	expect(dateString).toBe(dateString:upper())
end)

it("should return a date in the format X AT Y", function()
	local date = DateTime.now()
	local dateString = formatDate(date)

	expect(dateString).toEqual(expect.stringMatching(".* AT .*"))
end)

it("should display the date's year if the date is in the next year", function()
	local date = DateTime.now():ToLocalTime()
	local futureDate = DateTime.fromLocalTime(date.Year + 1)
	local dateString = formatDate(futureDate)

	expect(dateString).toEqual(expect.stringContaining(tostring(date.Year + 1)))
end)

return {}

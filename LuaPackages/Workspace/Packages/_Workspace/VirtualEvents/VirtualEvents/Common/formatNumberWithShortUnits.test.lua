local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local formatNumberWithShortUnits = require(script.Parent.formatNumberWithShortUnits)

it("should shorten billions", function()
	expect(formatNumberWithShortUnits(1000000000)).toBe("1B")
	expect(formatNumberWithShortUnits(1500000000)).toBe("1B")
	expect(formatNumberWithShortUnits(55500000000)).toBe("55B")
	expect(formatNumberWithShortUnits(999999999999)).toBe("999B")
end)

it("should shorten millions", function()
	expect(formatNumberWithShortUnits(1000000)).toBe("1M")
	expect(formatNumberWithShortUnits(1500000)).toBe("1.5M")
	expect(formatNumberWithShortUnits(55500000)).toBe("55.5M")
	expect(formatNumberWithShortUnits(999999999)).toBe("999M")
end)

it("should shorten thousands", function()
	expect(formatNumberWithShortUnits(1000)).toBe("1K")
	expect(formatNumberWithShortUnits(1500)).toBe("1.5K")
	expect(formatNumberWithShortUnits(55500)).toBe("55.5K")
	expect(formatNumberWithShortUnits(999999)).toBe("999K")
end)

it("should return the same number (as a string) for anything less than a thousand", function()
	expect(formatNumberWithShortUnits(1)).toBe("1")
	expect(formatNumberWithShortUnits(500)).toBe("500")
	expect(formatNumberWithShortUnits(999)).toBe("999")
end)

return {}

local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local computeFairWidths = require(script.Parent.computeFairWidths)

local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

--[[
	computeFairWidths distributes a fixed container width among buttons.

	The algorithm:
	1. If all buttons fit at their natural width, return nil (no constraints).
	2. Otherwise, the longest button shrinks first until it matches the second longest.
	3. Then both shrink together until they match the third, and so on.

	This is equivalent to finding a threshold T where:
	  - Buttons wider than T are capped to T
	  - Buttons narrower than T keep their natural width
	  - The sum of all resulting widths equals the available space
]]

local GAP = 8
-- container=300, gap=8 → available for 3 buttons = 300 - 2*8 = 284
-- container=300, gap=8 → available for 2 buttons = 300 - 1*8 = 292
-- container=300, gap=8 → available for 1 button  = 300 - 0*8 = 300

describe("computeFairWidths", function()
	describe("no overflow — returns nil", function()
		it("when all buttons fit comfortably", function()
			local result = computeFairWidths({ primary = 60, secondary = 80, tertiary = 70 }, 300, 3, GAP)
			expect(result).toBeNil()
		end)

		it("when total exactly equals available space", function()
			local result = computeFairWidths({ primary = 94, secondary = 95, tertiary = 95 }, 300, 3, GAP)
			expect(result).toBeNil()
		end)

		it("for a single button that fits", function()
			local result = computeFairWidths({ primary = 100 }, 300, 1, GAP)
			expect(result).toBeNil()
		end)

		it("for zero buttons", function()
			local result = computeFairWidths({}, 300, 0, GAP)
			expect(result).toBeNil()
		end)
	end)

	describe("single button overflows — only that button is capped", function()
		it("caps the one long button, keeps the two short ones", function()
			-- available = 284. Short buttons use 60+50=110, leaving 174 for secondary
			local result = computeFairWidths({ primary = 60, secondary = 300, tertiary = 50 }, 300, 3, GAP)

			expect(result).toBeDefined()
			assert(result, "widths should exist")
			expect(result.primary).toBe(60)
			expect(result.tertiary).toBe(50)
			expect(result.secondary).toBe(174)
			expect(result.primary + result.secondary + result.tertiary).toBe(284)
		end)

		it("caps a single oversized button", function()
			local result = computeFairWidths({ primary = 500 }, 300, 1, GAP)

			expect(result).toBeDefined()
			assert(result, "widths should exist")
			expect(result.primary).toBe(300)
		end)
	end)

	describe("multiple buttons overflow — they share remaining space equally", function()
		it("caps two equally long buttons, keeps the short one", function()
			-- available = 284. Short button uses 50, leaving 234 / 2 = 117 each
			local result = computeFairWidths({ primary = 200, secondary = 200, tertiary = 50 }, 300, 3, GAP)

			expect(result).toBeDefined()
			assert(result, "widths should exist")
			expect(result.tertiary).toBe(50)
			expect(result.primary).toBe(117)
			expect(result.secondary).toBe(117)
			expect(result.primary + result.secondary + result.tertiary).toBe(284)
		end)

		it("caps two unequal long buttons to the same threshold, keeps the short one", function()
			-- available = 284. Short button uses 30, leaving 254 / 2 = 127 each
			local result = computeFairWidths({ primary = 30, secondary = 200, tertiary = 250 }, 300, 3, GAP)

			expect(result).toBeDefined()
			assert(result, "widths should exist")
			expect(result.primary).toBe(30)
			expect(result.secondary).toBe(127)
			expect(result.tertiary).toBe(127)
			expect(result.primary + result.secondary + result.tertiary).toBe(284)
		end)

		it("caps all three buttons equally when all are long", function()
			-- available = 284 / 3 ≈ 94.67 each
			local result = computeFairWidths({ primary = 200, secondary = 180, tertiary = 170 }, 300, 3, GAP)

			expect(result).toBeDefined()
			assert(result, "widths should exist")
			local expectedWidth = 284 / 3
			expect(result.primary).toBeCloseTo(expectedWidth, 5)
			expect(result.secondary).toBeCloseTo(expectedWidth, 5)
			expect(result.tertiary).toBeCloseTo(expectedWidth, 5)
		end)
	end)

	describe("edge cases", function()
		it("handles two buttons", function()
			-- available = 292 / 2 = 146 each
			local result = computeFairWidths({ primary = 200, secondary = 200 }, 300, 2, GAP)

			expect(result).toBeDefined()
			assert(result, "widths should exist")
			expect(result.primary).toBe(146)
			expect(result.secondary).toBe(146)
		end)

		it("handles zero gap", function()
			-- available = 300 / 2 = 150 each
			local result = computeFairWidths({ primary = 200, secondary = 200 }, 300, 2, 0)

			expect(result).toBeDefined()
			assert(result, "widths should exist")
			expect(result.primary).toBe(150)
			expect(result.secondary).toBe(150)
		end)

		it("scales to four buttons", function()
			-- container=400, available = 400 - 3*8 = 376
			-- Short button uses 50, leaving 326 / 3 ≈ 108.67 each
			local result = computeFairWidths({ a = 50, b = 300, c = 300, d = 300 }, 400, 4, GAP)

			expect(result).toBeDefined()
			assert(result, "widths should exist")
			expect(result.a).toBe(50)

			local threshold = (376 - 50) / 3
			expect(result.b).toBeCloseTo(threshold, 5)
			expect(result.c).toBeCloseTo(threshold, 5)
			expect(result.d).toBeCloseTo(threshold, 5)
		end)
	end)
end)

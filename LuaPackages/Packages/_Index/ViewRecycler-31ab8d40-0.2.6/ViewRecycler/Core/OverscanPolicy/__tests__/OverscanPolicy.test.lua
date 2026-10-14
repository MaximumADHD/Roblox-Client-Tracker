local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local OverscanPolicy = require(Src.Core.OverscanPolicy)
local ScrollDirection = require(Src.Core.Enums.ScrollDirection)

local function context(overrides)
	local result = {
		visibleRange = { firstIndex = 10, lastIndex = 12 },
		scrollOffset = 100,
		viewportLength = 30,
		scrollDirection = ScrollDirection.Forward,
		itemCount = 100,
	}
	for key, value in overrides or {} do
		result[key] = value
	end
	return result
end

describe("OverscanPolicy", function()
	it("preserves symmetric fixed overscan", function()
		local defaultPolicy = OverscanPolicy.fixed()
		local explicitPolicy = OverscanPolicy.fixed(3)

		expect(defaultPolicy.compute(context())).toEqual({ before = 1, after = 1 })
		expect(explicitPolicy.compute(context())).toEqual({ before = 3, after = 3 })
	end)

	it("rejects invalid fixed overscan", function()
		expect(function()
			OverscanPolicy.fixed(-1)
		end).toThrow()
	end)
end)

local SocialTab = script:FindFirstAncestor("SocialTab")

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local compose = require(script.Parent.compose)

local function double(x: number)
	return x * 2
end

local function square(x: number)
	return x * x
end

describe("compose basics", function()
	it("should combine functions last to first", function(c)
		expect(compose(square, double)(5)).toBe(100)
	end)
end)

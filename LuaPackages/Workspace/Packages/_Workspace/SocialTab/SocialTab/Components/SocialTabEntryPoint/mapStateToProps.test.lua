local SocialTab = script:FindFirstAncestor("SocialTab")

local dependencies = require(SocialTab.dependencies)
local Mock = dependencies.Mock

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local mapStateToProps = require(script.Parent.mapStateToProps)

describe("mapStateToProps", function()
	local state = Mock.MagicMock.new()
	local props = Mock.MagicMock.new()

	it("SHOULD return a function", function(c)
		expect(mapStateToProps).toEqual(expect.any("function"))
	end)

	describe("WHEN called", function()
		local returnValue = mapStateToProps(state, props)

		it("SHOULD return a table", function(context)
			expect(type(returnValue)).toBe("table")
		end)
	end)
end)

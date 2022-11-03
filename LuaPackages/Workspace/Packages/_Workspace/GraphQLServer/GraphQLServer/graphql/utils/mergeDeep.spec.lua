-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/@graphql-tools/links@8.3.12/packages/utils/tests/mergeDeep.test.ts
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect
local mergeDeep = require(script.Parent.mergeDeep)

return function()
	describe("mergeDeep", function()
		it("merges deeply", function()
			local x = { a = { one = 1 } }
			local y = { a = { two = 2 } }
			jestExpect(mergeDeep({ x, y }, false)).toEqual({ a = { one = 1, two = 2 } })
		end)
	end)
end

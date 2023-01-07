local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local devDependencies = require(FriendsCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local reducer = require(script.Parent.Presence)

it("SHOULD return function", function()
	jestExpect(reducer).toEqual(jestExpect.any("function"))
end)

it("SHOULD return table", function()
	local result = reducer(nil, { type = "Action" })
	jestExpect(result).toEqual(jestExpect.any("table"))
end)

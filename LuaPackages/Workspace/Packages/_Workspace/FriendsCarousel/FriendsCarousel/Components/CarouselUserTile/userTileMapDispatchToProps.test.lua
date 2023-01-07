local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local mapDispatchToProps = require(script.Parent.userTileMapDispatchToProps)

it("SHOULD return a function", function()
	jestExpect(mapDispatchToProps).toEqual(jestExpect.any("function"))
end)

describe("WHEN called", function()
	it("SHOULD return a dictionary without throwing", function()
		jestExpect(mapDispatchToProps(nil)).toEqual(jestExpect.any("table"))
	end)

	it("SHOULD have expected fields", function()
		local dispatchFields = mapDispatchToProps(nil)

		jestExpect(dispatchFields).toEqual({
			sendFriendRequest = jestExpect.any("function"),
			unfriendUser = jestExpect.any("function"),
		})
	end)
end)

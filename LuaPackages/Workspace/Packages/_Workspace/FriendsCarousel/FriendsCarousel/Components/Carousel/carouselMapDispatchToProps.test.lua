local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local carouselMapDispatchToProps = require(script.Parent.carouselMapDispatchToProps)

describe("lifecycle", function()
	it("SHOULD return fields", function()
		local dispatchProps = carouselMapDispatchToProps(nil)
		jestExpect(dispatchProps).toEqual({})
	end)
end)

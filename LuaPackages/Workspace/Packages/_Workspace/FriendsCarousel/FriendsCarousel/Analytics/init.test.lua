local FriendsCarousel = script.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local Analytics = require(script.Parent)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

describe("Analytics", function()
	it("SHOULD have expected fields", function()
		jestExpect(Analytics).toEqual({
			setupFireEvent = jestExpect.any("function"),
			Context = jestExpect.any("table"),
			connect = jestExpect.any("function"),
			with = jestExpect.any("function"),
			EventNames = jestExpect.any("userdata"),
			useAnalytics = jestExpect.any("function"),
		})
	end)
end)

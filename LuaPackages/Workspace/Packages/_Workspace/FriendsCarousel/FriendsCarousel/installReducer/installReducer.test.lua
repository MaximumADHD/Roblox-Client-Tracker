local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local devDependencies = require(FriendsCarousel.devDependencies)
local dependencies = require(FriendsCarousel.dependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local Rodux = dependencies.Rodux

local installReducer = require(script.Parent.installReducer)

it("SHOULD return function", function()
	jestExpect(installReducer).toEqual(jestExpect.any("function"))
end)

it("SHOULD return expected structure", function()
	local roduxStore = Rodux.Store.new(installReducer(), nil)

	jestExpect(roduxStore:getState()).toEqual({
		Users = jestExpect.any("table"),
		Friends = jestExpect.any("table"),
		Presence = jestExpect.any("table"),
		NetworkStatus = jestExpect.any("table"),
		UserPermissions = jestExpect.any("table"),
		ShowContactImporterParams = jestExpect.any("table"),
		Analytics = jestExpect.any("table"),
	})
end)

local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local devDependencies = require(Squads.devDependencies)

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
		Games = jestExpect.any("table"),
		NetworkStatus = jestExpect.any("table"),
		Squad = jestExpect.any("table"),
	})
end)

local SquadWidget = script:FindFirstAncestor("SquadWidget")
local dependencies = require(SquadWidget.dependencies)
local devDependencies = require(SquadWidget.devDependencies)

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
		Squad = jestExpect.any("table"),
	})
end)

local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Packages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local IsLoaded = require(script.Parent.IsLoaded)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

describe("IsLoaded", function()
	it("should mark the Inspect Menu as loaded or not", function()
		local store = Rodux.Store.new(IsLoaded)
		local newState = store:getState()
		expect(newState).toBe(false)

		newState = IsLoaded(newState, SetAssets({}))
		expect(newState).toBe(true)
	end)
end)

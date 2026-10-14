local InspectAndBuyFolder = script.Parent.Parent
local SetDetailsInformation = require(InspectAndBuyFolder.Actions.SetDetailsInformation)
local DetailsInformation = require(script.Parent.DetailsInformation)

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

--[[
Note: Rthro Animation Bundle is by default in the Bundles reducer.
]]
describe("SetDetailsInformation", function()
	it("should set the details information", function()
		local assetId = "123"
		local newState = DetailsInformation(nil, SetDetailsInformation(true, assetId))
		expect(newState).toEqual({
			viewingDetails = true,
			assetId = assetId,
		})
	end)
end)

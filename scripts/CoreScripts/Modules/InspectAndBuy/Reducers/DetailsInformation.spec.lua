return function()
	local InspectAndBuyFolder = script.Parent.Parent
	local SetDetailsInformation = require(InspectAndBuyFolder.Actions.SetDetailsInformation)
	local DetailsInformation = require(script.Parent.DetailsInformation)

	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

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
end

return function()
	local InspectAndBuyFolder = script.Parent.Parent
	local SetTryingOnInfo = require(InspectAndBuyFolder.Actions.SetTryingOnInfo)
	local TryingOnInfo = require(script.Parent.TryingOnInfo)

	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

--[[
	Note: Rthro Animation Bundle is by default in the Bundles reducer.
]]
	describe("SetTryingOnInfo", function()
		it("should set the trying on information", function()
			local assetId = "123"
			local assetTypeId = "8"
			local newState = TryingOnInfo(nil, SetTryingOnInfo(true, assetId, assetTypeId))

			expect(newState).toEqual({
				tryingOn = true,
				assetId = assetId,
				assetTypeId = assetTypeId,
			})
		end)
	end)
end

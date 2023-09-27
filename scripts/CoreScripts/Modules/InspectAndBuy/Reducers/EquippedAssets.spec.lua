return function()
	local InspectAndBuyFolder = script.Parent.Parent
	local SetEquippedAssets = require(InspectAndBuyFolder.Actions.SetEquippedAssets)
	local EquippedAssets = require(script.Parent.EquippedAssets)

	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local MOCK_ASSET = {
		assetId = "123"
	}
	local MOCK_ASSET2 = {
		assetId = "456"
	}

	describe("SetEquippedAssets", function()
		it("should set a list of assets as equipped", function()
			local equippedAssets = {
				[1] = MOCK_ASSET,
				[2] = MOCK_ASSET2,
			}
			local newState = EquippedAssets(nil, SetEquippedAssets(equippedAssets))
			expect(newState).toEqual({
				[MOCK_ASSET.assetId] = true,
				[MOCK_ASSET2.assetId] = true,
			})
		end)
	end)
end

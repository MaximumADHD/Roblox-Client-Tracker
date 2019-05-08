return function()
	local InspectAndBuyFolder = script.Parent.Parent
	local SetEquippedAssets = require(InspectAndBuyFolder.Actions.SetEquippedAssets)
	local EquippedAssets = require(script.Parent.EquippedAssets)

	local MOCK_ASSET = {
		assetId = "123"
	}
	local MOCK_ASSET2 = {
		assetId = "456"
	}

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	describe("SetEquippedAssets", function()
		it("should set a list of assets as equipped", function()
			local equippedAssets = {
				[1] = MOCK_ASSET,
				[2] = MOCK_ASSET2,
			}
			local newState = EquippedAssets(nil, SetEquippedAssets(equippedAssets))
			expect(newState[MOCK_ASSET.assetId]).to.equal(true)
			expect(newState[MOCK_ASSET2.assetId]).to.equal(true)
			expect(newState["TEST"]).to.never.equal(true)
			expect(countKeys(newState)).to.equal(2)
		end)
	end)
end
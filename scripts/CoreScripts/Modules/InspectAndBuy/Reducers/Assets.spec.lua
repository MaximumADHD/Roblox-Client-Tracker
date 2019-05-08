return function()
	local InspectAndBuyFolder = script.Parent.Parent
	local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
	local SetBundlesAssetIsPartOf = require(InspectAndBuyFolder.Actions.SetBundlesAssetIsPartOf)
	local Assets = require(script.Parent.Assets)
	local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)

	local MOCK_ASSET_1 = AssetInfo.mock()
	MOCK_ASSET_1.assetId = "123"

	local MOCK_ASSET_2 = AssetInfo.mock()
	MOCK_ASSET_2.assetId = "456"

	local MOCK_NAME = "Mock Name"

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	describe("SetAssets", function()
		it("should set a single asset", function()
			local newState = Assets(nil, SetAssets({MOCK_ASSET_1}))

			expect(newState[MOCK_ASSET_1.assetId].assetId).to.equal(MOCK_ASSET_1.assetId)
			expect(countKeys(newState)).to.equal(1)
		end)

		it("should set a list of assets", function()
			local newState = Assets(nil, SetAssets({MOCK_ASSET_1, MOCK_ASSET_2}))

			expect(newState[MOCK_ASSET_1.assetId].assetId).to.equal(MOCK_ASSET_1.assetId)
			expect(newState[MOCK_ASSET_2.assetId].assetId).to.equal(MOCK_ASSET_2.assetId)
			expect(countKeys(newState)).to.equal(2)
		end)

		it("should update an asset", function()
			local newState = Assets(nil, SetAssets({MOCK_ASSET_1}))

			expect(newState[MOCK_ASSET_1.assetId].assetId).to.equal(MOCK_ASSET_1.assetId)

			local updatedAsset = MOCK_ASSET_1
			updatedAsset.name = MOCK_NAME

			newState = Assets(newState, SetAssets({updatedAsset}))

			expect(newState[MOCK_ASSET_1.assetId].assetId).to.equal(MOCK_ASSET_1.assetId)
			expect(newState[MOCK_ASSET_1.assetId].name).to.equal(MOCK_NAME)
			expect(countKeys(newState)).to.equal(1)
		end)
	end)

	describe("SetBundlesAssetIsPartOf", function()
		it("should set the bundles an asset is part of", function()
			local newState = Assets(nil, SetAssets({MOCK_ASSET_1}))

			newState = Assets(newState, SetBundlesAssetIsPartOf(
				MOCK_ASSET_1.assetId,
				{"1", "2", "3"}
			))

			expect(newState[MOCK_ASSET_1.assetId].assetId).to.equal(MOCK_ASSET_1.assetId)
			expect(newState[MOCK_ASSET_1.assetId].bundlesAssetIsIn[1]).to.equal("1")
			expect(#newState[MOCK_ASSET_1.assetId].bundlesAssetIsIn).to.equal(3)
		end)
	end)
end

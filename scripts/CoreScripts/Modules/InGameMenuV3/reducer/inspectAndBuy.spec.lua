return function()
	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local InGameMenu = script.Parent.Parent
	local AssetInfo = require(InGameMenu.Models.AssetInfo)
	local BundleInfo = require(InGameMenu.Models.BundleInfo)
	local SetInspectedUserInfo = require(InGameMenu.Actions.InspectAndBuy.SetInspectedUserInfo)
	local SetAssets = require(InGameMenu.Actions.InspectAndBuy.SetAssets)
	local SetBundlesAssetIsPartOf = require(InGameMenu.Actions.InspectAndBuy.SetBundlesAssetIsPartOf)
	local SetBundles = require(InGameMenu.Actions.InspectAndBuy.SetBundles)
	local SelectItem = require(InGameMenu.Actions.InspectAndBuy.SelectItem)
	local SetTryOnItemInfo = require(InGameMenu.Actions.InspectAndBuy.SetTryOnItemInfo)
	local UpdateStoreId = require(InGameMenu.Actions.InspectAndBuy.UpdateStoreId)
	local SetIsSubjectToChinaPolicies = require(InGameMenu.Actions.InspectAndBuy.SetIsSubjectToChinaPolicies)
	local inspectAndBuy = require(script.Parent.inspectAndBuy)

	local MOCK_ASSET_1 = AssetInfo.mock()
	MOCK_ASSET_1.assetId = "123"

	local MOCK_ASSET_2 = AssetInfo.mock()
	MOCK_ASSET_2.assetId = "456"

	local MOCK_BUNDLE_1 = BundleInfo.mock()
	MOCK_BUNDLE_1.bundleId = "000"

	local MOCK_BUNDLE_2 = BundleInfo.mock()
	MOCK_BUNDLE_2.bundleId = "111"

	local MOCK_NAME = "Mock Name"

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	it("should have default values.", function()
		local state = inspectAndBuy(nil, {})
		expect(state.Assets).toEqual({})
		expect(state.Bundles).toEqual({})
		expect(state.SelectedItem).toEqual({})
		expect(state.UserId).toEqual(0)
		expect(state.DisplayName).toEqual("")
		expect(state.StoreId).toEqual("0")
		expect(state.TryingOn).toEqual(false)
		expect(state.IsSubjectToChinaPolicies).toEqual(true)
	end)

	describe("SetInspectedUserInfo", function()
		it("should add user info", function()
			local state = inspectAndBuy(nil, SetInspectedUserInfo(1234, "displayNameTest"))
			expect(state.UserId).toEqual(1234)
			expect(state.DisplayName).toEqual("displayNameTest")
		end)
	end)

	describe("SetAssets", function()
		it("should set a single asset", function()
			local newState = inspectAndBuy(nil, SetAssets({MOCK_ASSET_1}))

			expect(newState.Assets[MOCK_ASSET_1.assetId].assetId).toEqual(MOCK_ASSET_1.assetId)
			expect(countKeys(newState.Assets)).toEqual(1)
		end)

		it("should set a list of assets", function()
			local newState = inspectAndBuy(nil, SetAssets({MOCK_ASSET_1, MOCK_ASSET_2}))

			expect(newState.Assets[MOCK_ASSET_1.assetId].assetId).toEqual(MOCK_ASSET_1.assetId)
			expect(newState.Assets[MOCK_ASSET_2.assetId].assetId).toEqual(MOCK_ASSET_2.assetId)
			expect(countKeys(newState.Assets)).toEqual(2)
		end)

		it("should update an asset", function()
			local newState = inspectAndBuy(nil, SetAssets({MOCK_ASSET_1}))

			expect(newState.Assets[MOCK_ASSET_1.assetId].assetId).toEqual(MOCK_ASSET_1.assetId)

			local updatedAsset = MOCK_ASSET_1
			updatedAsset.name = MOCK_NAME

			newState = inspectAndBuy(newState, SetAssets({updatedAsset}))

			expect(newState.Assets[MOCK_ASSET_1.assetId].assetId).toEqual(MOCK_ASSET_1.assetId)
			expect(newState.Assets[MOCK_ASSET_1.assetId].name).toEqual(MOCK_NAME)
			expect(countKeys(newState.Assets)).toEqual(1)
		end)
	end)

	describe("SetBundlesAssetIsPartOf", function()
		it("should set the bundles an asset is part of", function()
			local newState = inspectAndBuy(nil, SetAssets({MOCK_ASSET_1}))

			newState = inspectAndBuy(newState, SetBundlesAssetIsPartOf(
				MOCK_ASSET_1.assetId,
				{"1", "2", "3"}
			))

			expect(newState.Assets[MOCK_ASSET_1.assetId].assetId).toEqual(MOCK_ASSET_1.assetId)
			expect(newState.Assets[MOCK_ASSET_1.assetId].bundlesAssetIsIn[1]).toEqual("1")
			expect(#newState.Assets[MOCK_ASSET_1.assetId].bundlesAssetIsIn).toEqual(3)
		end)
	end)

	describe("SetBundles", function()
		it("should set a bundle's information", function()
			local newState = inspectAndBuy(nil, SetBundles({
				[1] = MOCK_BUNDLE_1,
			}))

			expect(newState.Bundles[MOCK_BUNDLE_1.bundleId].bundleId).toEqual(MOCK_BUNDLE_1.bundleId)
			expect(countKeys(newState.Bundles)).toEqual(1)
		end)

		it("should set multiple bundles information", function()
			local newState = inspectAndBuy(nil, SetBundles({
				[1] = MOCK_BUNDLE_1,
				[2] = MOCK_BUNDLE_2,
			}))

			expect(newState.Bundles[MOCK_BUNDLE_1.bundleId].bundleId).toEqual(MOCK_BUNDLE_1.bundleId)
			expect(newState.Bundles[MOCK_BUNDLE_2.bundleId].bundleId).toEqual(MOCK_BUNDLE_2.bundleId)
			expect(countKeys(newState.Bundles)).toEqual(2)
		end)

		it("should update a bundle's information", function()
			local bundle1 = MOCK_BUNDLE_1
			local numFavorites = 500
			local newState = inspectAndBuy(nil, SetBundles({
				[1] = bundle1,
			}))

			expect(newState.Bundles[bundle1.bundleId].bundleId).toEqual(bundle1.bundleId)

			bundle1.numFavorites = numFavorites
			newState = inspectAndBuy(newState, SetBundles({
				[1] = bundle1,
			}))

			expect(newState.Bundles[bundle1.bundleId].numFavorites).toEqual(numFavorites)
			expect(countKeys(newState.Bundles)).toEqual(1)
		end)
	end)

	describe("SelectItem", function()
		it("should set selected item", function()
			local selectItem = {
				assetId = "1"
			}
			local state = inspectAndBuy(nil, SelectItem(selectItem))
			expect(state.SelectedItem.assetId).toEqual("1")
		end)

		it("should override selected item", function()
			local selectItem = {
				assetId = "1"
			}
			local state = inspectAndBuy(nil, SelectItem(selectItem))
			expect(state.SelectedItem.assetId).toEqual("1")

			local selectItem2 = {
				assetId = "2"
			}
			local newState = inspectAndBuy(state, SelectItem(selectItem2))
			expect(newState.SelectedItem.assetId).toEqual("2")
		end)
	end)

	describe("SelectItem", function()
		it("should set when trying on an item", function()
			local state = inspectAndBuy(nil, SetTryOnItemInfo(true))
			expect(state.TryingOn).toEqual(true)
		end)
	end)

	describe("StoreId", function()
		it("should update store id", function()
			local state = inspectAndBuy(nil, UpdateStoreId())
			expect(state.StoreId).toEqual("1")
		end)
	end)

	describe("IsSubjectToChinaPolicies", function()
		it("should update china policy", function()
			local state = inspectAndBuy(nil, SetIsSubjectToChinaPolicies(false))
			expect(state.IsSubjectToChinaPolicies).toEqual(false)
		end)
	end)
end

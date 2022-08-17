return function()
	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local InGameMenu = script.Parent.Parent
	local AssetInfo = require(InGameMenu.Models.AssetInfo)
	local SetInspectedUserInfo = require(InGameMenu.Actions.InspectAndBuy.SetInspectedUserInfo)
	local SetAssets = require(InGameMenu.Actions.InspectAndBuy.SetAssets)
	local UpdateStoreId = require(InGameMenu.Actions.InspectAndBuy.UpdateStoreId)
	local inspectAndBuy = require(script.Parent.inspectAndBuy)

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

	it("should have default values.", function()
		local state = inspectAndBuy(nil, {})
		local assets = state.Assets
		local bundles = state.Bundles
		local selectedItem = state.SelectedItem
		local userId = state.UserId
		local displayName = state.DisplayName
		local storeId = state.StoreId

		expect(assets).toEqual({})
		expect(bundles).toEqual({})
		expect(selectedItem).toEqual({})
		expect(userId).toEqual(0)
		expect(displayName).toEqual("")
		expect(storeId).toEqual("0")
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

	describe("StoreId", function()
		it("should update store id", function()
			local state = inspectAndBuy(nil, UpdateStoreId())
			expect(state.StoreId).toEqual("1")
		end)
	end)
end

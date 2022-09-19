--[[
	Mock network implementation that returns values in the expected
	formats, or returns promise rejections if specified
]]
local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)

local MOCK_PRODUCT_INFO = {
	Name = "test name",
	Description = "test description",
	PriceInRobux = 100,
	Creator = {
		Id = 1,
		Name = "TEST CREATOR",
	},
	AssetId = 100425207,
	AssetTypeId = 8,
	ProductId = 18929548,
}

local MOCK_HUMANOID_DESCRIPTION = Instance.new("HumanoidDescription")
MOCK_HUMANOID_DESCRIPTION.HatAccessory = "1"
MOCK_HUMANOID_DESCRIPTION.LeftArm = 2
MOCK_HUMANOID_DESCRIPTION.ClimbAnimation = 3
MOCK_HUMANOID_DESCRIPTION.BodyTypeScale = 0.3
MOCK_HUMANOID_DESCRIPTION.LeftLegColor = Color3.new(0, 0, 0)
MOCK_HUMANOID_DESCRIPTION.GraphicTShirt = 4

local MOCK_HUMANOID_DESCRIPTION_EMOTES = Instance.new("HumanoidDescription")
local emoteTable = {
	["Wave"] = { 1 },
	["Laugh"] = { 2 },
	["Cheer"] = { 3 },
}
MOCK_HUMANOID_DESCRIPTION_EMOTES:SetEmotes(emoteTable)

local MOCK_GET_ASSET_BUNDLES_DATA = {
	data = {
		[1] = {
			id = 451,
			name = "test name",
			description = "test description",
			bundleType = "testBundleType",
			items = {
				[1] = {
					owned = false,
					id = 2510230574,
					name = "test asset name",
				},
				[2] = {
					owned = false,
					id = 2510233257,
					name = "test asset name 2",
				},
				[3] = {
					owned = false,
					type = "UserOutfit",
					id = 2510233258,
					name = "Outfit",
				},
			},
			creator = {
				id = 1,
				name = "test creator name",
			},
			product = {
				id = 480872498,
				isForSale = true,
				priceInRobux = 250,
			},
		},
	},
}

local MOCK_ITEM_DETAILS = {
	PriceStatus = "Offsale",
	Owned = true,
	Price = 200,
	Id = 10,
}

local MOCK_FAVORITE_COUNT = 120
local GET_FAVORITE_MODEL_FOR_ASSET = "GetFavoriteModelForAsset"
local GET_FAVORITE_MODEL_FOR_BUNDLE = "GetFavoriteModelForBundle"

local function getProductInfo(id)
	local info = Cryo.Dictionary.join(MOCK_PRODUCT_INFO, { AssetId = id })
	info.Creator.Id = 2 -- setting this to anything except 1
	return Promise.resolve(info)
end

local function networkFailure()
	return Promise.reject("Failed to access network service")
end

local function getAssetBundles(id)
	return Promise.resolve(MOCK_GET_ASSET_BUNDLES_DATA)
end

local function getItemDetails(productId)
	return Promise.resolve(MOCK_ITEM_DETAILS)
end

local function getBundleFavoriteCount(id)
	return Promise.resolve(MOCK_FAVORITE_COUNT)
end

local function getItemFavorite(id, type)
	if type == Enum.AvatarItemType.Asset and id == GET_FAVORITE_MODEL_FOR_ASSET or
		type == Enum.AvatarItemType.Bundle and id == GET_FAVORITE_MODEL_FOR_BUNDLE then
		return Promise.resolve(true)
	else
		return Promise.resolve(false)
	end
end

local function getHumanoidDescriptionFromCostumeId(costumeId)
	return Promise.resolve(MOCK_HUMANOID_DESCRIPTION)
end

local function setItemFavorite(itemId, itemType, shouldFavorite)
	return Promise.resolve()
end

local MockNetwork = {}
MockNetwork.__index = MockNetwork

function MockNetwork.new(shouldFail: boolean?)
	local mockNetworkService : any

	if shouldFail then
		mockNetworkService = {
			getProductInfo = networkFailure,
			getAssetBundles = networkFailure,
			getItemDetails = networkFailure,
			getBundleFavoriteCount = networkFailure,
			getItemFavorite = networkFailure,
			getHumanoidDescriptionFromCostumeId = networkFailure,
			setItemFavorite = networkFailure,
		}
	else
		mockNetworkService = {
			getProductInfo = getProductInfo,
			getAssetBundles = getAssetBundles,
			getItemDetails = getItemDetails,
			getBundleFavoriteCount = getBundleFavoriteCount,
			getItemFavorite = getItemFavorite,
			getHumanoidDescriptionFromCostumeId = getHumanoidDescriptionFromCostumeId,
			setItemFavorite = setItemFavorite,
		}
	end

	setmetatable(mockNetworkService, {
		__tostring = function()
			return "MockService(Network)"
		end
	})

	return mockNetworkService
end

function MockNetwork.GetMockHumanoidDescription()
	return MOCK_HUMANOID_DESCRIPTION
end

function MockNetwork.GetProductInfo()
	return MOCK_PRODUCT_INFO
end

function MockNetwork.GetMockHumanoidDescriptionEmotes()
	return MOCK_HUMANOID_DESCRIPTION_EMOTES
end

function MockNetwork.GetMockAssetBundlesData()
	return MOCK_GET_ASSET_BUNDLES_DATA
end

function MockNetwork.GetItemDetails()
	return MOCK_ITEM_DETAILS
end

function MockNetwork.GetMockFavoriteCount()
	return MOCK_FAVORITE_COUNT
end

function MockNetwork.GetFavoriteModelIdForAsset()
	return GET_FAVORITE_MODEL_FOR_ASSET
end

function MockNetwork.GetFavoriteModelIdForBundle()
	return GET_FAVORITE_MODEL_FOR_BUNDLE
end

return MockNetwork

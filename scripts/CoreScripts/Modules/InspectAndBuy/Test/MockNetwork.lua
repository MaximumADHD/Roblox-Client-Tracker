--[[
	Mock network implementation that returns values in the expected
	formats, or returns promise rejections if specified
]]
local CorePackages = game:GetService("CorePackages")
local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
local MOCK_ASSET_DATA = {
	[1] = {
		id = 100425207,
		name = "Reinforced Wizard",
		assetType = {
			id = 8,
			name = "Hat",
		}
	},
	[2] = {
		id = 2510238627,
		name = "Rthro Run",
		assetType = {
			id = 53,
			name = "Run Animation",
		}
	},
	[3] = {
		id = 2807164805,
		name = "Mech Golem - Head",
		assetType = {
			id = 17,
			name = "Head",
		}
	}
}

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

local MOCK_HUMANOID_DESCRIPTION = Instance.new("HumanoidDescription")
MOCK_HUMANOID_DESCRIPTION.HatAccessory = 1
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

local MOCK_HUMANOID_DESCRIPTION_EMPTY = Instance.new("HumanoidDescription")

local MOCK_PLAYER_NAME = "TEST"
local MOCK_FAVORITE_COUNT = 120

local MOCK_FAVORITE_MODEL = {
	assetId = 123,
	userId = 401784814,
	created = "",
}

local MOCK_EMPTY_FAVORITE_MODEL = "null"
local GET_FAVORITE_MODEL = "GetFavoriteModel"

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

local MOCK_ECONOMY_PRODUCT_INFO = {
	purchasable = false,
	reason = "InsufficientFunds",
	price = 200,
	assetId = 10,
}

local function getProductInfo(id)
	return Promise.resolve(MOCK_PRODUCT_INFO)
end

local function getAssetBundles(id)
	return Promise.resolve(MOCK_GET_ASSET_BUNDLES_DATA)
end

local function getPlayerName(id)
	return Promise.resolve(MOCK_PLAYER_NAME)
end

local function createFavoriteForAsset(id)
	return Promise.resolve()
end

local function createFavoriteForBundle(id)
	return Promise.resolve()
end

local function deleteFavoriteForAsset(id)
	return Promise.resolve()
end

local function deleteFavoriteForBundle(id)
	return Promise.resolve()
end

local function getAssetFavoriteCount(id)
	return Promise.resolve(MOCK_FAVORITE_COUNT)
end

local function getBundleFavoriteCount(id)
	return Promise.resolve(MOCK_FAVORITE_COUNT)
end

local function getFavoriteForAsset(id)
	if id == GET_FAVORITE_MODEL then
		return Promise.resolve(MOCK_FAVORITE_MODEL)
	else
		return Promise.resolve(MOCK_EMPTY_FAVORITE_MODEL)
	end
end

local function getFavoriteForBundle(id)
	if id == GET_FAVORITE_MODEL then
		return Promise.resolve(MOCK_FAVORITE_MODEL)
	else
		return Promise.resolve(MOCK_EMPTY_FAVORITE_MODEL)
	end
end

local function getEconomyProductInfo(productId)
	return Promise.resolve(MOCK_ECONOMY_PRODUCT_INFO)
end

local function getModelFromUserId(userId)
	return Promise.resolve()
end

local function networkFailure(id, infoType)
	return Promise.reject("Failed to access network service")
end

local MockNetwork = {}
MockNetwork.__index = MockNetwork

function MockNetwork.new(shouldFail)
	local mockNetworkService

	if shouldFail then
		mockNetworkService = {
			getProductInfo = networkFailure,
			getPlayerName = networkFailure,
			getAssetBundles = networkFailure,
			createFavoriteForAsset = networkFailure,
			createFavoriteForBundle = networkFailure,
			deleteFavoriteForAsset = networkFailure,
			deleteFavoriteForBundle = networkFailure,
			getAssetFavoriteCount = networkFailure,
			getBundleFavoriteCount = networkFailure,
			getFavoriteForAsset = networkFailure,
			getFavoriteForBundle = networkFailure,
			getEconomyProductInfo = networkFailure,
			getModelFromUserId = networkFailure,
		}
	else
		mockNetworkService = {
			getProductInfo = getProductInfo,
			getPlayerName = getPlayerName,
			getAssetBundles = getAssetBundles,
			createFavoriteForAsset = createFavoriteForAsset,
			createFavoriteForBundle = createFavoriteForBundle,
			deleteFavoriteForAsset = deleteFavoriteForAsset,
			deleteFavoriteForBundle = deleteFavoriteForBundle,
			getAssetFavoriteCount = getAssetFavoriteCount,
			getBundleFavoriteCount = getBundleFavoriteCount,
			getFavoriteForAsset = getFavoriteForAsset,
			getFavoriteForBundle = getFavoriteForBundle,
			getEconomyProductInfo = getEconomyProductInfo,
			getModelFromUserId = getModelFromUserId,
		}
	end

	setmetatable(mockNetworkService, {
		__tostring = function()
			return "MockService(Network)"
		end
	})

	return mockNetworkService
end

function MockNetwork.GetMockAssetData()
	return MOCK_ASSET_DATA
end

function MockNetwork.GetMockHumanoidDescription()
	return MOCK_HUMANOID_DESCRIPTION
end

function MockNetwork.GetMockHumanoidDescriptionEmpty()
	return MOCK_HUMANOID_DESCRIPTION_EMPTY
end

function MockNetwork.GetMockPlayerName()
	return MOCK_PLAYER_NAME
end

function MockNetwork.GetMockAssetBundlesData()
	return MOCK_GET_ASSET_BUNDLES_DATA
end

function MockNetwork.GetMockFavoriteCount()
	return MOCK_FAVORITE_COUNT
end

function MockNetwork.GetFavoriteModelId()
	return GET_FAVORITE_MODEL
end

function MockNetwork.GetProductInfo()
	return MOCK_PRODUCT_INFO
end

function MockNetwork.GetEconomyProductInfo()
	return MOCK_ECONOMY_PRODUCT_INFO
end

function MockNetwork.GetMockHumanoidDescriptionEmotes()
	return MOCK_HUMANOID_DESCRIPTION_EMOTES
end

return MockNetwork
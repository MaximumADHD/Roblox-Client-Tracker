--!nonstrict
--[[
	Mock network implementation that returns values in the expected
	formats, or returns promise rejections if specified
]]
local Root = script.Parent.Parent
local Promise = require(Root.Promise)

local PurchaseWarning = require(Root.Enums.PurchaseWarning)

local GetFFlagUseCatalogItemDetailsToResolveBundlePurchase =
	require(Root.Flags.GetFFlagUseCatalogItemDetailsToResolveBundlePurchase)

local function getABTestGroup()
	return Promise.resolve(false)
end

local function getProductInfo(id, infoType)
	return Promise.resolve({
		AssetId = 1,
		AssetTypeId = 2,
		ContentRatingTypeId = 0,
		Creator = {
			CreatorType = "Group",
			CreatorTargetId = 1,
			Name = "ROBLOX",
			Id = 1,
		},
		Description = "This item isn't real!",
		IconImageAssetId = 1,
		IsForSale = true,
		IsLimited = false,
		IsLimitedUnique = false,
		IsNew = false,
		IsPublicDomain = false,
		MinimumMembershipLevel = 0,
		Name = "Test Item",
		PriceInRobux = 100,
		ProductId = 1,
	})
end

local function getPlayerOwns(player, id, infoType)
	return Promise.resolve(false)
end

local function performPurchase(infoType, productId, expectedPrice, requestId)
	return Promise.resolve({
		success = true,
		purchased = true,
		receipt = "fake-receipt-hash",
	})
end

local function loadAssetForEquip(assetId)
	return Promise.resolve(Instance.new("Tool"))
end

local function getAccountInfo()
	return Promise.resolve({
		isPremium = false,
	})
end

local function getBalanceInfo()
	return Promise.resolve({
		robux = 2147483647,
	})
end

local function getBundleDetails(bundleId)
	return Promise.resolve({
		id = 1,
		name = "mock-name",
		description = "mock-description",
		items = {
			[1] = {
				id = 1,
				name = "outfit-name",
				type = "UserOutfit",
			},
		},
		creator = {
			id = 1,
			name = "ROBLOX",
			type = "User",
		},
		product = {
			id = 1,
			isForSale = true,
			priceInRobux = 100,
		},
	})
end

local function getProductPurchasableDetails(productId)
	return Promise.resolve({
		purchasable = false,
		reason = "mock-reason",
		price = 100,
	})
end

local function getCatalogItemDetails(itemId: number, itemType: ("asset" | "bundle"))
	return Promise.resolve({
		bundleType = 1,
		bundledItems = {
			[1] = {
				["id"] = 10001,
				["name"] = "Mock bundle - Left Arm",
				["owned"] = true,
				["type"] = "Asset",
			},
			[2] = {
				["id"] = 1002,
				["name"] = "Mock bundle - Right Leg",
				["owned"] = true,
				["type"] = "Asset",
			},
			[3] = {
				["id"] = 1003,
				["name"] = "Mock bundle - Right Arm",
				["owned"] = true,
				["type"] = "Asset",
			},
			[4] = {
				["id"] = 1004,
				["name"] = "Mock bundle - Left Leg",
				["owned"] = true,
				["type"] = "Asset",
			},
			[5] = {
				["id"] = 1005,
				["name"] = "Mock bundle - Dynamic Head",
				["owned"] = true,
				["type"] = "Asset",
			},
			[6] = {
				["id"] = 1006,
				["name"] = "Default Mood",
				["owned"] = true,
				["type"] = "Asset",
			},
			[7] = {
				["id"] = 1007,
				["name"] = "Mock bundle - Torso",
				["owned"] = true,
				["type"] = "Asset",
			},
			[8] = {
				["id"] = 1008,
				["name"] = "Mock item",
				["owned"] = true,
				["type"] = "UserOutfit",
			},
			[9] = {
				["id"] = 1009,
				["name"] = "Mock bundle Head",
				["owned"] = true,
				["type"] = "UserOutfit",
			},
		},
		collectibleItemId = "random-collectible-item-id-123",
		creatorHasVerifiedBadge = true,
		creatorName = "mockRobloxCreator",
		creatorTargetId = 123,
		creatorType = "User",
		description = "Mock bundle",
		expectedSellerId = 123,
		favoriteCount = 908,
		hasReseller = false,
		id = 123456,
		isPurchasable = true,
		itemRestrictions = {},
		itemStatus = {},
		itemType = "Bundle",
		lowestPrice = 175,
		lowestResalePrice = 0,
		name = "Roblox Collectible Bundle",
		owned = false,
		price = 175,
		productId = 1234567890123456,
		purchaseCount = 0,
		saleLocationType = "ShopAndAllExperiences",
		totalQuantity = 0,
		unitsAvailableForConsumption = 0,
	})
end

local function getRobuxUpsellProduct(price, robuxBalance, paymentPlatform)
	return Promise.resolve({
		roblox_product_id = 50,
		provider_product_id = "robux50",
		roblox_product_name = "providerRobux50",
		robux_amount = 500,
	})
end

local function postPremiumImpression()
	return Promise.resolve()
end

local function getPremiumUpsellPrecheck()
	return Promise.resolve(true)
end

local function getPurchaseWarning(productId)
	return Promise.resolve({
		action = PurchaseWarning.NoAction,
	})
end

local function postPurchaseWarningAcknowledge()
	return Promise.resolve()
end

local function checkUserPurchaseSettings()
	return Promise.resolve({
		isEligible = false,
		failureReason = "PurchaseNotEnabled"
	})
end


local MockNetwork = {}
MockNetwork.__index = MockNetwork

function MockNetwork.new(successResult, failureResult)
	local mockNetworkService

	if failureResult or successResult then
		local retFunction = function()
			if successResult then
				return Promise.resolve(successResult)
			else
				return Promise.reject(failureResult)
			end
		end
		mockNetworkService = {
			getABTestGroup = retFunction,
			getProductInfo = retFunction,
			getPlayerOwns = retFunction,
			performPurchase = retFunction,
			loadAssetForEquip = retFunction,
			getAccountInfo = retFunction,
			getBalanceInfo = retFunction,
			getBundleDetails = retFunction,
			getProductPurchasableDetails = retFunction,
			getCatalogItemDetails = if GetFFlagUseCatalogItemDetailsToResolveBundlePurchase() then retFunction else nil,
			getRobuxUpsellProduct = retFunction,
			postPremiumImpression = retFunction,
			getPremiumUpsellPrecheck = retFunction,
			getPurchaseWarning = retFunction,
			postPurchaseWarningAcknowledge = retFunction,
			checkUserPurchaseSettings = retFunction,
		}
	else
		mockNetworkService = {
			getABTestGroup = getABTestGroup,
			getProductInfo = getProductInfo,
			getPlayerOwns = getPlayerOwns,
			performPurchase = performPurchase,
			loadAssetForEquip = loadAssetForEquip,
			getAccountInfo = getAccountInfo,
			getBalanceInfo = getBalanceInfo,
			getBundleDetails = getBundleDetails,
			getProductPurchasableDetails = getProductPurchasableDetails,
			getCatalogItemDetails = if GetFFlagUseCatalogItemDetailsToResolveBundlePurchase()
				then getCatalogItemDetails
				else nil,
			getRobuxUpsellProduct = getRobuxUpsellProduct,
			postPremiumImpression = postPremiumImpression,
			getPremiumUpsellPrecheck = getPremiumUpsellPrecheck,
			getPurchaseWarning = getPurchaseWarning,
			postPurchaseWarningAcknowledge = postPurchaseWarningAcknowledge,
			checkUserPurchaseSettings = checkUserPurchaseSettings,
		}
	end

	setmetatable(mockNetworkService, {
		__tostring = function()
			return "MockService(Network)"
		end,
	})

	return mockNetworkService
end

return MockNetwork

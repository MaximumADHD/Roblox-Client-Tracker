--!nonstrict
--[[
	Mock network implementation that returns values in the expected
	formats, or returns promise rejections if specified
]]
local Root = script.Parent.Parent
local Promise = require(Root.Promise)

local PurchaseWarning = require(Root.Enums.PurchaseWarning)

local function getABTestGroup()
	return Promise.resolve(false)
end

local function getProductInfo(id, infoType)
	return Promise.resolve({
		AssetId	= 1,
		AssetTypeId	= 2,
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
		}
	})
end

local function getProductPurchasableDetails(productId)
	return Promise.resolve({
		purchasable = false,
		reason = "mock-reason",
		price = 100,
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
		action = PurchaseWarning.NoAction
	})
end

local function postPurchaseWarningAcknowledge()
	return Promise.resolve()
end

local MockNetwork = {}
MockNetwork.__index = MockNetwork

function MockNetwork.new(successResult, failureResult)
	local mockNetworkService

	if failureResult or successResult then
		local retFunction = function ()
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
			getRobuxUpsellProduct = retFunction,
			postPremiumImpression = retFunction,
			getPremiumUpsellPrecheck = retFunction,
			getPurchaseWarning = retFunction,
			postPurchaseWarningAcknowledge = retFunction,
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
			getRobuxUpsellProduct = getRobuxUpsellProduct,
			postPremiumImpression = postPremiumImpression,
			getPremiumUpsellPrecheck = getPremiumUpsellPrecheck,
			getPurchaseWarning = getPurchaseWarning,
			postPurchaseWarningAcknowledge = postPurchaseWarningAcknowledge,
		}
	end

	setmetatable(mockNetworkService, {
		__tostring = function()
			return "MockService(Network)"
		end
	})

	return mockNetworkService
end

return MockNetwork

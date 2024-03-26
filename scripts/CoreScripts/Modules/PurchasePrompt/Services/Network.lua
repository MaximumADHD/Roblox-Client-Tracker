--!nonstrict
local Root = script.Parent.Parent
local HttpService = game:GetService("HttpService")
local ContentProvider = game:GetService("ContentProvider")
local MarketplaceService = game:GetService("MarketplaceService")
local InsertService = game:GetService("InsertService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")

local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local UrlBuilder = PurchasePromptDeps.UrlBuilder.UrlBuilder

local Promise = require(Root.Promise)
local PremiumProduct = require(Root.Models.PremiumProduct)

local debugLog = require(Root.Utils.debugLog)
local serializeTable = require(Root.Utils.serializeTable)
local isGenericChallengeResponse = require(Root.Utils.isGenericChallengeResponse)

local EngineFeatureEnablePlayerOwnsBundleApi = game:GetEngineFeature("EnablePlayerOwnsBundleApi")

local GetFFlagEnablePromptPurchaseRequestedV2 = require(Root.Flags.GetFFlagEnablePromptPurchaseRequestedV2)
local GetFFlagEnablePromptPurchaseRequestedV2Take2 = require(Root.Flags.GetFFlagEnablePromptPurchaseRequestedV2Take2)

-- This is the approximate strategy for URL building that we use elsewhere
local BASE_URL = string.gsub(ContentProvider.BaseUrl:lower(), "/m.", "/www.")
BASE_URL = string.gsub(BASE_URL, "http:", "https:")

local API_URL = string.gsub(BASE_URL, "https://www", "https://api")
local APIS_URL = string.gsub(BASE_URL, "https://www", "https://apis")
local AB_TEST_URL = string.gsub(BASE_URL, "https://www", "https://abtesting")
local CATALOG_URL = string.gsub(BASE_URL, "https://www.", "https://catalog.")
local ECONOMY_URL = string.gsub(BASE_URL, "https://www.", "https://economy.")
local PREMIUM_FEATURES_URL = string.gsub(BASE_URL, "https://www.", "https://premiumfeatures.")
local ECONOMY_CREATOR_STATS_URL = string.gsub(BASE_URL, "https://www.", "https://economycreatorstats.")
local USERS_URL = string.gsub(BASE_URL, "https://www", "https://users")

local function request(options, resolve, reject)
	debugLog(function()
		return "Request " .. options.Url .. "\n" .. serializeTable(options)
	end)
	return HttpService:RequestInternal(options):Start(function(success, response)
		debugLog(function()
			return "Response " .. options.Url .. "\n" .. serializeTable(response)
		end)
		if success then
			local result
			success, result = pcall(HttpService.JSONDecode, HttpService, response.Body)

			if success then
				resolve(result)
			else
				reject("Could not parse JSON.")
			end
		else
			reject(tostring(response.StatusMessage))
		end
	end)
end

local AB_SUBJECT_TYPE_USER_ID = 1

local function getABTestGroup(userId, testName)
	local abTestRequest = {
		{
			ExperimentName = testName,
			SubjectType = AB_SUBJECT_TYPE_USER_ID,
			SubjectTargetId = userId,
		},
	}

	return Promise.new(function(resolve, reject)
		return request({
			Url = AB_TEST_URL .. "v1/get-enrollments",
			Method = "POST",
			Body = HttpService:JSONEncode(abTestRequest),
			Headers = {
				["Content-Type"] = "application/json",
				["Accept"] = "application/json",
			},
		}, resolve, reject)
	end)
end

local function getProductInfo(id, infoType)
	return MarketplaceService:GetProductInfo(id, infoType)
end

local function getPremiumProductInfo()
	return Promise.new(function(resolve, reject)
		request({
			Url = PREMIUM_FEATURES_URL .. "v1/products?typeName=Subscription",
			Method = "GET",
		}, function(response)
			-- Gets cheapest premium package
			local subscription
			for _, product in ipairs(response.products) do
				local iapProduct = PremiumProduct(product)
				if iapProduct ~= nil then
					if subscription == nil or subscription.robuxAmount > iapProduct.robuxAmount then
						subscription = iapProduct
					end
				end
			end

			-- Remove after backend fixes their end...
			local platform = UserInputService:GetPlatform()
			if platform == Enum.Platform.Android and subscription ~= nil and subscription.mobileProductId ~= nil then
				subscription.mobileProductId = subscription.mobileProductId:lower()
			end

			resolve(subscription)
		end, reject)
	end)
end

local function getPlayerOwns(player, id, infoType)
	if infoType == Enum.InfoType.Asset then
		return MarketplaceService:PlayerOwnsAsset(player, id)
	elseif EngineFeatureEnablePlayerOwnsBundleApi and infoType == Enum.InfoType.Bundle then
		return MarketplaceService:PlayerOwnsBundle(player, id)
	elseif infoType == Enum.InfoType.GamePass then
		return MarketplaceService:UserOwnsGamePassAsync(player.UserId, id)
	elseif infoType == Enum.InfoType.Subscription then
		return MarketplaceService:IsPlayerSubscribed(player, id)
	end

	return false
end

local function performPurchase(
	infoType,
	productId,
	expectedPrice,
	requestId,
	isRobloxPurchase,
	collectibleItemId,
	collectibleProductId,
	idempotencyKey,
	purchaseAuthToken
)
	local success, result = pcall(function()
		if GetFFlagEnablePromptPurchaseRequestedV2() or GetFFlagEnablePromptPurchaseRequestedV2Take2() then
			return MarketplaceService:PerformPurchase(
				infoType,
				productId,
				expectedPrice,
				requestId,
				isRobloxPurchase,
				collectibleItemId,
				collectibleProductId,
				idempotencyKey,
				purchaseAuthToken
			)
		end
		return MarketplaceService:PerformPurchase(
			infoType,
			productId,
			expectedPrice,
			requestId,
			isRobloxPurchase,
			collectibleItemId,
			collectibleProductId,
			idempotencyKey
		)
	end)

	if success then
		return result
	end

	--[[ Generic Challenge Responses are HTTP 403 Forbidden responses with a unique
	response pattern. We explicitly identify the response and return the result.
	]]
	--
	if isGenericChallengeResponse(result) then
		return result
	end

	error(tostring(result))
end

local function performPurchaseV2(
	infoType,
	productId,
	expectedPrice,
	requestId,
	isRobloxPurchase,
	collectibleItemId,
	collectibleProductId,
	idempotencyKey,
	purchaseAuthToken,
	collectibleItemInstanceId
)
	local success, result = pcall(function()
		local collectiblesProductDetails = {
			CollectibleItemId = collectibleItemId,
			CollectibleProductId = collectibleProductId,
			IdempotencyKey = idempotencyKey,
			PurchaseAuthToken = purchaseAuthToken,
			CollectibleItemInstanceId = collectibleItemInstanceId,
		}
		return MarketplaceService:PerformPurchaseV2(
			infoType,
			productId,
			expectedPrice,
			requestId,
			isRobloxPurchase,
			collectiblesProductDetails
		)
	end)

	if success then
		return result
	end

	--[[ Generic Challenge Responses are HTTP 403 Forbidden responses with a unique
	response pattern. We explicitly identify the response and return the result.
	]]
	--
	if isGenericChallengeResponse(result) then
		return result
	end

	error(tostring(result))
end

local function loadAssetForEquip(assetId)
	return InsertService:LoadAsset(assetId)
end

local function getAccountInfo()
	return Promise.new(function(resolve, reject)
		request({
			Url = USERS_URL .. "v1/users/authenticated/app-launch-info",
			Method = "GET",
		}, resolve, reject)
	end)
end

local function getBalanceInfo()
	return Promise.new(function(resolve, reject)
		request({
			Url = ECONOMY_URL .. "v1/user/currency",
			Method = "GET",
		}, resolve, reject)
	end)
end

local function getBundleDetails(bundleId)
	local url = CATALOG_URL .. "v1/bundles/" .. tostring(bundleId) .. "/details"
	local options = {
		Url = url,
		Method = "GET",
	}

	return Promise.new(function(resolve, reject)
		spawn(function()
			request(options, resolve, reject)
		end)
	end)
end

local function getProductPurchasableDetails(productId)
	local url = ECONOMY_URL .. "v1/products/" .. tostring(productId) .. "?showPurchasable=true"
	local options = {
		Url = url,
		Method = "GET",
	}

	return Promise.new(function(resolve, reject)
		spawn(function()
			request(options, resolve, reject)
		end)
	end)
end

local function getRobuxUpsellProduct(price: number, robuxBalance: number, upsellPlatform: string)
	local options = {
		Url = APIS_URL .. "payments-gateway/v1/products/get-upsell-product",
		Method = "POST",
		Body = HttpService:JSONEncode({
			upsell_platform = upsellPlatform,
			user_robux_balance = robuxBalance,
			attempt_robux_amount = price,
		}),
		Headers = {
			["Content-Type"] = "application/json",
			["Accept"] = "application/json",
		},
	}

	return Promise.new(function(resolve, reject)
		spawn(function()
			request(options, resolve, reject)
		end)
	end)
end

local function postPremiumImpression()
	local url = ECONOMY_CREATOR_STATS_URL
		.. "v1/universes/"
		.. tostring(game.GameId)
		.. "/premium-impressions/increment"
	local options = {
		Url = url,
		Method = "POST",
		Body = HttpService:JSONEncode("{}"),
		Headers = {
			["Content-Type"] = "application/json",
			["Accept"] = "application/json",
		},
	}

	return Promise.new(function(resolve, reject)
		spawn(function()
			return HttpService:RequestInternal(options):Start(function(success, response)
				-- Ignore all responses, don't need to do anything
			end)
		end)
	end)
end

local function getPremiumUpsellPrecheck()
	local options = {
		Url = string.format(
			"%sv1/users/%d/premium-upsell-precheck?universeId=%d&placeId=%d",
			PREMIUM_FEATURES_URL,
			Players.LocalPlayer.UserId,
			game.GameId,
			game.PlaceId
		),
		Method = "GET",
	}

	return Promise.new(function(resolve, reject)
		spawn(function()
			return HttpService:RequestInternal(options):Start(function(success, response)
				if success and response.StatusCode == 200 then
					resolve()
				else
					reject()
				end
			end)
		end)
	end)
end

local function getSubscriptionPurchaseInfo(subscriptinId)
	return MarketplaceService:GetSubscriptionPurchaseInfoAsync(subscriptinId)
end

local function DEPRECATED_performSubscriptionPurchase(subscriptinId)
	-- remove with Flag EnableRobloxCreditPurchase
	return MarketplaceService:performSubscriptionPurchase(subscriptinId)
end

local function performSubscriptionPurchase(subscriptinId, paymentMethod)
	return MarketplaceService:PerformSubscriptionPurchaseV2(subscriptinId, paymentMethod)
end

local function getPurchaseWarning(mobileProductId: string?, productId: number?, isPremium: boolean)
	local url = UrlBuilder.economy.purchaseWarning.getPurchaseWarning(mobileProductId, productId, not isPremium)
	local options = {
		Url = url,
		Method = "GET",
	}

	return Promise.new(function(resolve, reject)
		spawn(function()
			request(options, resolve, reject)
		end)
	end)
end

local function postPurchaseWarningAcknowledge(userAction)
	local url = UrlBuilder.economy.purchaseWarning.ackPurchaseWarning()
	local options = {
		Url = url,
		Method = "POST",
		Body = HttpService:JSONEncode({
			acknowledgement = userAction,
		}),
		Headers = {
			["Content-Type"] = "application/json",
			["Accept"] = "application/json",
		},
	}

	return Promise.new(function(resolve, reject)
		spawn(function()
			return HttpService:RequestInternal(options):Start(function(success, response)
				-- Ignore all responses, don't need to do anything
			end)
		end)
	end)
end

local Network = {}

-- TODO: "Promisify" is not strictly necessary with the new `request` structure,
-- refactor this to clean up the overzealous promise-wrapping
function Network.new()
	local networkService = {
		getABTestGroup = Promise.promisify(getABTestGroup),
		getProductInfo = Promise.promisify(getProductInfo),
		getPlayerOwns = Promise.promisify(getPlayerOwns),
		performPurchase = Promise.promisify(performPurchase),
		performPurchaseV2 = Promise.promisify(performPurchaseV2),
		loadAssetForEquip = Promise.promisify(loadAssetForEquip),
		getAccountInfo = Promise.promisify(getAccountInfo),
		getBalanceInfo = Promise.promisify(getBalanceInfo),
		getBundleDetails = getBundleDetails,
		getProductPurchasableDetails = getProductPurchasableDetails,
		getRobuxUpsellProduct = Promise.promisify(getRobuxUpsellProduct),
		getPremiumProductInfo = Promise.promisify(getPremiumProductInfo),
		postPremiumImpression = Promise.promisify(postPremiumImpression),
		getPremiumUpsellPrecheck = Promise.promisify(getPremiumUpsellPrecheck),
		getSubscriptionPurchaseInfo = Promise.promisify(getSubscriptionPurchaseInfo),
		DEPRECATED_performSubscriptionPurchase = Promise.promisify(DEPRECATED_performSubscriptionPurchase),
		performSubscriptionPurchase = Promise.promisify(performSubscriptionPurchase),
		getPurchaseWarning = Promise.promisify(getPurchaseWarning),
		postPurchaseWarningAcknowledge = Promise.promisify(postPurchaseWarningAcknowledge),
	}

	setmetatable(networkService, {
		__tostring = function()
			return "Service(Network)"
		end,
	})

	return networkService
end

return Network

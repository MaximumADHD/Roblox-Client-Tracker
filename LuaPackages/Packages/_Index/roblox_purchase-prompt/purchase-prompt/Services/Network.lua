local Root = script.Parent.Parent
local HttpService = game:GetService("HttpService")
local ContentProvider = game:GetService("ContentProvider")
local MarketplaceService = game:GetService("MarketplaceService")
local InsertService = game:GetService("InsertService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local Promise = require(Root.Promise)
local PremiumProduct = require(Root.Models.PremiumProduct)

-- This is the approximate strategy for URL building that we use elsewhere
local BASE_URL = string.gsub(ContentProvider.BaseUrl:lower(), "/m.", "/www.")
BASE_URL = string.gsub(BASE_URL, "http:", "https:")

local API_URL = string.gsub(BASE_URL, "https://www", "https://api")
local AB_TEST_URL = string.gsub(BASE_URL, "https://www", "https://abtesting")
local BASE_CATALOG_URL = string.gsub(BASE_URL, "https://www.", "https://catalog.")
local BASE_ECONOMY_URL = string.gsub(BASE_URL, "https://www.", "https://economy.")
local PREMIUM_FEATURES_URL = string.gsub(BASE_URL, "https://www.", "https://premiumfeatures.")
local ECONOMY_CREATOR_STATS_URL = string.gsub(BASE_URL, "https://www.", "https://economycreatorstats.")

local function request(options, resolve, reject)
	return HttpService:RequestInternal(options):Start(function(success, response)
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
		}
	}

	return Promise.new(function(resolve, reject)
		return request({
			Url = AB_TEST_URL .. "v1/get-enrollments",
			Method = "POST",
			Body = HttpService:JSONEncode(abTestRequest),
			Headers = {
				["Content-Type"] = "application/json",
				["Accept"] = "application/json",
			}
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
	elseif infoType == Enum.InfoType.GamePass then
		return MarketplaceService:UserOwnsGamePassAsync(player.UserId, id)
	elseif infoType == Enum.InfoType.Subscription then
		return MarketplaceService:IsPlayerSubscribed(player, id)
	end

	return false
end

local function performPurchase(infoType, productId, expectedPrice, requestId, isRobloxPurchase)
	local success, result = pcall(function()
		return MarketplaceService:PerformPurchase(infoType, productId, expectedPrice, requestId, isRobloxPurchase)
	end)

	if success then
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
			Url = API_URL .. "users/account-info",
			Method = "GET",
		}, resolve, reject)
	end)
end

local function getXboxRobuxBalance()
	return Promise.new(function(resolve, reject)
		request({
			Url = API_URL .. "my/platform-currency-budget",
			Method = "GET",
		}, resolve, reject)
	end)
end

local function getBundleDetails(bundleId)
	local url = BASE_CATALOG_URL .."v1/bundles/" ..tostring(bundleId) .."/details"
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
	local url = BASE_ECONOMY_URL .."v1/products/" ..tostring(productId) .."?showPurchasable=true"
	local options = {
		Url = url,
		Method = "GET"
	}

	return Promise.new(function(resolve, reject)
		spawn(function()
			request(options, resolve, reject)
		end)
	end)
end

local function postPremiumImpression()
	local url = ECONOMY_CREATOR_STATS_URL.."v1/universes/" ..tostring(game.GameId) .."/premium-impressions/increment"
	local options = {
		Url = url,
		Method = "POST",
		Body = HttpService:JSONEncode("{}"),
		Headers = {
			["Content-Type"] = "application/json",
			["Accept"] = "application/json",
		}
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
		Url = string.format("%sv1/users/%d/premium-upsell-precheck?universeId=%d&placeId=%d",
			PREMIUM_FEATURES_URL, Players.LocalPlayer.UserId, game.GameId, game.PlaceId),
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

local Network = {}

-- TODO: "Promisify" is not strictly necessary with the new `request` structure,
-- refactor this to clean up the overzealous promise-wrapping
function Network.new()
	local networkService = {
		getABTestGroup = Promise.promisify(getABTestGroup),
		getProductInfo = Promise.promisify(getProductInfo),
		getPlayerOwns = Promise.promisify(getPlayerOwns),
		performPurchase = Promise.promisify(performPurchase),
		loadAssetForEquip = Promise.promisify(loadAssetForEquip),
		getAccountInfo = Promise.promisify(getAccountInfo),
		getXboxRobuxBalance = Promise.promisify(getXboxRobuxBalance),
		getBundleDetails = getBundleDetails,
		getProductPurchasableDetails = getProductPurchasableDetails,
		getPremiumProductInfo = Promise.promisify(getPremiumProductInfo),
		postPremiumImpression = Promise.promisify(postPremiumImpression),
		getPremiumUpsellPrecheck = Promise.promisify(getPremiumUpsellPrecheck),
	}

	setmetatable(networkService, {
		__tostring = function()
			return "Service(Network)"
		end
	})

	return networkService
end

return Network
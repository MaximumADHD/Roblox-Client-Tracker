local HttpService = game:GetService("HttpService")
local ContentProvider = game:GetService("ContentProvider")
local MarketplaceService = game:GetService("MarketplaceService")
local InsertService = game:GetService("InsertService")

local Promise = require(script.Parent.Parent.Promise)

-- This is the approximate strategy for URL building that we use elsewhere
local BASE_URL = string.gsub(ContentProvider.BaseUrl:lower(), "/m.", "/www.")
BASE_URL = string.gsub(BASE_URL, "http:", "https:")

local API_URL = string.gsub(BASE_URL, "https://www", "https://api")
local AB_TEST_URL = string.gsub(BASE_URL, "https://www", "https://abtesting")

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

local function getPlayerOwns(player, id, infoType)
	if infoType == Enum.InfoType.Asset then
		return MarketplaceService:PlayerOwnsAsset(player, id)
	elseif infoType == Enum.InfoType.GamePass then
		return MarketplaceService:UserOwnsGamePassAsync(player.UserId, id)
	end

	return false
end

local function performPurchase(infoType, productId, expectedPrice, requestId)
	local success, result = pcall(function()
		return MarketplaceService:PerformPurchase(infoType, productId, expectedPrice, requestId)
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

local Network = {}

function Network.new()
	local networkService = {
		getABTestGroup = Promise.promisify(getABTestGroup),
		getProductInfo = Promise.promisify(getProductInfo),
		getPlayerOwns = Promise.promisify(getPlayerOwns),
		performPurchase = Promise.promisify(performPurchase),
		loadAssetForEquip = Promise.promisify(loadAssetForEquip),
		getAccountInfo = Promise.promisify(getAccountInfo),
	}

	setmetatable(networkService, {
		__tostring = function()
			return "Service(Network)"
		end
	})

	return networkService
end

return Network
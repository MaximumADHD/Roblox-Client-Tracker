local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")

local MarketplaceService = game:GetService("MarketplaceService")
local InsertService = game:GetService("InsertService")

local Promise = require(script.Parent.Parent.Promise)

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
	local success, result = pcall(function()
		return HttpRbxApiService:GetAsync("users/account-info")
	end)

	if success and type(result) == "string" then
		local decodeSuccess, decodeResult = pcall(function()
			return HttpService:JSONDecode(result)
		end)
		if decodeSuccess then
			return decodeResult
		end
	end

	error(tostring(result))
end

local Network = {}

function Network.new()
	local networkService = {
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
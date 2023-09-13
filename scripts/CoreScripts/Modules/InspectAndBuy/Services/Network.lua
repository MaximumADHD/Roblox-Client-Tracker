--!nonstrict
--[[
	Contains a list of networking functions used to get or send data. These functions
	are wrapped in a promise and injected into thunks through middleware.
]]
local CorePackages = game:GetService("CorePackages")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
local Url = require(CorePackages.Workspace.Packages.Http).Url

--[[
	TODO AVBURST-12905:
		Remove and use item details endpoint for getting attribution data
		instead of using the asset-versions endpoint.
--]]
local DEVELOPER_URL = string.format("https://develop.%s", Url.DOMAIN)

--[[
	Expects a Promise. Hits the url given and resolves/rejects appropriately.
	Some endpoints return a string so no JSON parsing will be done.
]]
local function request(options, parseJson, resolve, reject)
	return HttpService:RequestInternal(options):Start(function(success, response)
		if success and response.StatusCode == 200 then
			local jsonDecodeSuccess = true
			local result

			if parseJson and response.Body ~= "null" then
				jsonDecodeSuccess, result = pcall(HttpService.JSONDecode, HttpService, response.Body)
			else
				result = response.Body
			end

			if jsonDecodeSuccess then
				resolve(result)
			else
				reject("Could not parse JSON.")
			end
		else
			reject(response)
		end
	end)
end

local function createYieldingPromise(options, decodeJson)
	return Promise.new(function(resolve, reject)
		coroutine.wrap(function()
			request(options, decodeJson, resolve, reject)
		end)()
	end)
end

--[[
	Get an asset's product information.
]]
local function getProductInfo(id)
	return Promise.new(function(resolve, reject)
		local success, result = pcall(function()
			return MarketplaceService:GetProductInfo(id)
		end)

		if success then
			resolve(result)
		else
			reject("Failure in getProductInfo: ", tostring(result))
		end
	end)
end

--[[
	Get a player name given a user id.
]]
local function getPlayerName(id)
	return Promise.new(function(resolve, reject)
		local success, result = pcall(function()
			return Players:GetNameFromUserIdAsync(id)
		end)

		if success then
			resolve(result)
		else
			reject("Failure in getPlayerName: ", tostring(result))
		end
	end)
end

--[[
	Get a list of bundles an asset is part of.
]]
local function getAssetBundles(id)
	local url = Url.CATALOG_URL .."v1/assets/" ..tostring(id) .."/bundles"
	local options = {
		Url = url,
		Method = "GET",
	}

	return createYieldingPromise(options, true)
end

--[[
	Get a humanoid description object from a costume id.
]]
local function getHumanoidDescriptionFromCostumeId(costumeId)
	return Promise.new(function(resolve, reject)
		spawn(function()
			local humanoidDescription = Players:GetHumanoidDescriptionFromOutfitId(costumeId)

			if humanoidDescription then
				resolve(humanoidDescription)
			end
		end)
	end)
end

--[[
	Gets the favorite count for an asset.
]]
local function getAssetFavoriteCount(assetId)
	local url = Url.CATALOG_URL .."v1/favorites/assets/" ..tostring(assetId) .."/count"
	local options = {
		Url = url,
		Method = "GET",
	}

	return createYieldingPromise(options, false)
end

--[[
	Gets the favorite count for a bundle.
]]
local function getBundleFavoriteCount(bundleId)
	local url = Url.CATALOG_URL .."v1/favorites/bundles/" ..tostring(bundleId) .."/count"
	local options = {
		Url = url,
		Method = "GET",
	}

	return createYieldingPromise(options, false)
end

--[[
	Returns the favorite model for an asset.
]]
local function getFavoriteForAsset(assetId)
	local userId = Players.LocalPlayer.UserId
	local url = Url.CATALOG_URL .."v1/favorites/users/" ..tostring(userId) .."/assets/" ..tostring(assetId) .."/favorite"
	local options = {
		Url = url,
		Method = "GET",
	}

	return createYieldingPromise(options, true)
end

--[[
	Returned the favorite model for an asset.
]]
local function getFavoriteForBundle(bundleId)
	local userId = Players.LocalPlayer.UserId
	local url = Url.CATALOG_URL .."v1/favorites/users/" ..tostring(userId) .."/bundles/" ..tostring(bundleId) .."/favorite"
	local options = {
		Url = url,
		Method = "GET",
	}

	return createYieldingPromise(options, true)
end

--[[
	Favorite an asset.
]]
local function createFavoriteForAsset(assetId)
	local userId = Players.LocalPlayer.UserId
	local url = Url.CATALOG_URL .."v1/favorites/users/" ..tostring(userId) .."/assets/" ..tostring(assetId) .."/favorite"
	local options = {
		Url = url,
		Method = "POST",
		Body = HttpService:JSONEncode({ }), -- Avoids 411 length errors.
	}

	return createYieldingPromise(options, true)
end

--[[
	Delete a favorite an asset.
]]
local function deleteFavoriteForAsset(assetId)
	local userId = Players.LocalPlayer.UserId
	local url = Url.CATALOG_URL .."v1/favorites/users/" ..tostring(userId) .."/assets/" ..tostring(assetId) .."/favorite"
	local options = {
		Url = url,
		Method = "DELETE",
	}

	return createYieldingPromise(options, true)
end

--[[
	Favorite an asset.
]]
local function createFavoriteForBundle(bundleId)
	local userId = Players.LocalPlayer.UserId
	local url = Url.CATALOG_URL .."v1/favorites/users/" ..tostring(userId) .."/bundles/" ..tostring(bundleId) .."/favorite"
	local options = {
		Url = url,
		Method = "POST",
		Body = HttpService:JSONEncode({ }), -- Avoids 411 length errors.
	}

	return createYieldingPromise(options, true)
end

--[[
	Delete a favorite an asset.
]]
local function deleteFavoriteForBundle(bundleId)
	local userId = Players.LocalPlayer.UserId
	local url = Url.CATALOG_URL .."v1/favorites/users/" ..tostring(userId) .."/bundles/" ..tostring(bundleId) .."/favorite"
	local options = {
		Url = url,
		Method = "DELETE",
	}

	return createYieldingPromise(options, true)
end

--[[
	Get details for a costume.
]]
local function getEconomyProductInfo(productId)
	local url = Url.ECONOMY_URL .."v1/products/" ..tostring(productId) .."?showPurchasable=true"
	local options = {
		Url = url,
		Method = "GET",
	}

	return createYieldingPromise(options, true)
end

--[[
	Get a character model from a userId.
]]
local function getModelFromUserId(userId)
	return Promise.new(function(resolve, reject)
		spawn(function()
			local model = Players:CreateHumanoidModelFromUserId(userId)

			if model then
				resolve(model)
			else
				reject("Failure in getModelFromUserId")
			end
		end)
	end)
end

--[[
	Get collectible resellable instances for an id and a user.
]]
local function getCollectibleResellableInstances(collectibleItemId, userId)
	local query = Url:makeQueryString({
		ownerId = tostring(userId),
		ownerType = "User",
		cursor = "",
		limit = 500,
	})

	local url =
		string.format("%smarketplace-sales/v1/item/%s/resellable-instances?%s", Url.APIS_URL, collectibleItemId, query)
	local options = {
		Url = url,
		Method = "GET",
	}
	return createYieldingPromise(options, true)
end

--[[
	TODO AVBURST-12905:
		Remove and use item details endpoint for getting attribution data
		instead of using the asset-versions endpoint.
--]]
local function getVersionInfo(assetId)
	local url = string.format("%sv1/assets/%s/saved-versions", DEVELOPER_URL, assetId)
	local options = {
		Url = url,
		Method = "GET",
	}
	return createYieldingPromise(options, true)
end


local Network = {}

function Network.new()
	local networkService = {
		getProductInfo = getProductInfo,
		getEconomyProductInfo = getEconomyProductInfo,
		getPlayerName = getPlayerName,
		getAssetBundles = getAssetBundles,
		getHumanoidDescriptionFromCostumeId = getHumanoidDescriptionFromCostumeId,
		getAssetFavoriteCount = getAssetFavoriteCount,
		getBundleFavoriteCount = getBundleFavoriteCount,
		getFavoriteForAsset = getFavoriteForAsset,
		getFavoriteForBundle = getFavoriteForBundle,
		createFavoriteForAsset = createFavoriteForAsset,
		deleteFavoriteForAsset = deleteFavoriteForAsset,
		createFavoriteForBundle = createFavoriteForBundle,
		deleteFavoriteForBundle = deleteFavoriteForBundle,
		getModelFromUserId = getModelFromUserId,
		getCollectibleResellableInstances = getCollectibleResellableInstances,
		--TODO AVBURST-12905: use item details endpoint for getting attribution data
		getVersionInfo = getVersionInfo
	}

	setmetatable(networkService, {
		__tostring = function()
			return "Service(Network)"
		end
	})

	return networkService
end

return Network

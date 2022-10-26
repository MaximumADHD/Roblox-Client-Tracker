local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local AvatarEditorService = game:GetService("AvatarEditorService")
local HttpService = game:GetService("HttpService")

local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
local Url = require(CorePackages.Workspace.Packages.Http).Url

--[[
	Expects a Promise. Hits the url given and resolves/rejects appropriately.
	Some endpoints return a string so no JSON parsing will be done.
]]
local function request(options, parseJson, resolve, reject: (any) -> ())
	return (HttpService:RequestInternal(options) :: any):Start(function(success, response)
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
		request(options, decodeJson, resolve, reject)
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
	Get a character model from a userId.
]]
local function getModelFromUserId(userId)
	return Promise.new(function(resolve, reject)
		task.spawn(function()
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
	Get an asset's product information.
]]
local function getItemDetails(assetId)
	return Promise.new(function(resolve, reject)
		local success, result = pcall(function()
			return AvatarEditorService:GetItemDetails(assetId, Enum.AvatarItemType.Asset)
		end)

		if success then
			resolve(result)
		else
			reject("Failure in getItemDetails: ", tostring(result))
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
	Gets the favorite status of an item for a user.
]]
local function getItemFavorite(itemId, itemType)
	return Promise.new(function(resolve, reject)
		local success, result = pcall(function()
			return AvatarEditorService:GetFavorite(itemId, itemType)
		end)

		if success then
			resolve(result)
		else
			reject("Failure in getItemFavorite: ", tostring(result))
		end
	end)
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
	Sets the favorite status of an item for a user.
]]
local function setItemFavorite(itemId, itemType, shouldFavorite)
	return Promise.new(function(resolve, reject)
		local setFavoriteSuccess = AvatarEditorService:NoPromptSetFavorite(itemId, itemType, shouldFavorite)
		while not setFavoriteSuccess do
			-- currently, a call to SetFavorite is in progress. Wait for that call to be completed before trying to call
			-- SetFavorite here. This exhibits an edge case where a call to SetFavorite does not complete before trying
			-- to do the same with another item
			AvatarEditorService.PromptSetFavoriteCompleted:Wait()
			setFavoriteSuccess = AvatarEditorService:NoPromptSetFavorite(itemId, itemType, shouldFavorite)
		end

		local avatarPromptResult = AvatarEditorService.PromptSetFavoriteCompleted:Wait()
		if avatarPromptResult == Enum.AvatarPromptResult.Success then
			resolve()
		else
			reject("Failure in setItemFavorite")
		end
	end)
end

local Network = {}

function Network.new()
	local networkService = {
		getProductInfo = getProductInfo,
		getModelFromUserId = getModelFromUserId,
		getItemDetails = getItemDetails,
		getAssetBundles = getAssetBundles,
		getBundleFavoriteCount = getBundleFavoriteCount,
		getItemFavorite = getItemFavorite,
		setItemFavorite = setItemFavorite,
		getHumanoidDescriptionFromCostumeId = getHumanoidDescriptionFromCostumeId,
	}

	setmetatable(networkService, {
		__tostring = function()
			return "Service(Network)"
		end
	})

	return networkService
end

return Network

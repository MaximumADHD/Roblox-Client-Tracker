--[[
// PackageData.lua

// Created by Kip Turner, Bo Zhang
// Copyright Roblox 2017
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")


local Utility = require(ShellModules:FindFirstChild('Utility'))

local Http = require(ShellModules:FindFirstChild('Http'))
local UserData = require(ShellModules:FindFirstChild('UserData'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))


local ContentProvider = game:GetService("ContentProvider")
local MarketplaceService = Game:GetService('MarketplaceService')
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local ReloaderManager = require(ShellModules:FindFirstChild('ReloaderManager'))
local CreateCacheData = require(ShellModules:FindFirstChild('CachedData'))
local ThumbnailLoader = require(ShellModules:FindFirstChild('ThumbnailLoader'))
local PlatformService = nil
pcall(function()PlatformService = game:GetService('PlatformService') end)
local ThirdPartyUserService = nil
pcall(function()ThirdPartyUserService = game:GetService('ThirdPartyUserService') end)


local RequestingWearAsset = false
local function AwaitWearAssetRequest()
	while RequestingWearAsset do wait(0.1) end
end

local RequestingBuyAsset = false
local function AwaitBuyAssetRequest()
	while RequestingBuyAsset do wait(0.1) end
end

local function AwaitBuyOrWearAssetRequest()
	while RequestingBuyAsset or RequestingWearAsset do wait(0.1) end
end


local function PreloadCharacterAppearanceAsync()
	local character = nil
	local success, msg = pcall(function()
		character = game.Players:GetCharacterAppearanceAsync(UserData:GetLocalUserIdAsync())
	end)
	if character then
		ContentProvider:PreloadAsync({ character })
	end

	return success
end

--Hard code the assetId to productId map
local AvatarAssetId_XboxProductIdMap =
{
	['807301633'] = '899a379d-0a66-4b07-8bcd-29b1e38699ba';  --Boy Avatar
	['807340263'] = '7dba5b02-02be-4442-814e-9b9ebf6d66bf';  --Girl Avatar
}

local function CreatePackageItem(data)
	local this = {}

	this.Owned = false
	this.Wearing = false
	this.OwnershipChanged = Utility.Signal()
	this.IsWearingChanged = Utility.Signal()

	local productInfo = nil
	local partIds = {}

	function this:GetAssetId()
		local assetId = data and data['AssetId']
		if not assetId then
			assetId = data and data['Item'] and data['Item']['AssetId']
		end
		return tonumber(assetId)
	end

	function this:OpenAvatarDetailInXboxStore()
		local assetId = self:GetAssetId()
		if PlatformService then
			local XboxProductId = AvatarAssetId_XboxProductIdMap[tostring(assetId)]
			if XboxProductId then
				PlatformService:OpenProductDetail(XboxProductId)
			end
		end
	end

	function this:IsXboxAddOn()
		return AvatarAssetId_XboxProductIdMap[tostring(self:GetAssetId())] and true or false
	end

	function this:GetProductIdAsync()
		while not productInfo do wait() end
		return productInfo and productInfo['ProductId']
	end

	function this:GetPartIdsAsync()
		while not partIds do wait() end
		return partIds
	end

	function this:UpdatePartIdsAsync()
		local assetId = self:GetAssetId()
		if assetId then
			while not partIds do wait() end
			--Reset partIds
			partIds = nil
			partIds = Http.GetAssetIdsForPackageIdAsync(assetId)
			if partIds == nil then
				partIds = {}
			else
				table.sort(partIds)
			end
		end
		return partIds
	end

	function this:IsWearing()
		return self.Wearing
	end

	function this:SetWearing(newWearing)
		if newWearing ~= self.Wearing then
			self.Wearing = newWearing
			self.IsWearingChanged:fire(newWearing)
		end
	end


	function this:BuyAsync()
		EventHub:dispatchEvent(EventHub.Notifications["AvatarPurchaseBegin"], self:GetAssetId())

		Utility.DebugLog("Do buy", 'productId', self:GetProductIdAsync(), 'robuxPrice', self:GetRobuxPrice())
		AwaitBuyAssetRequest()

		RequestingBuyAsset = true
		local purchaseResult = Http.PurchaseProductAsync(self:GetProductIdAsync(), self:GetRobuxPrice(), self:GetCreatorId(), 1)
		RequestingBuyAsset = false

		local nowOwns = purchaseResult and purchaseResult['TransactionVerb'] == 'bought'
		if nowOwns then
			EventHub:dispatchEvent(EventHub.Notifications["AvatarPurchaseSuccess"], self:GetAssetId(), nowOwns)
		end
		return purchaseResult
	end

	function this:IsOwned()
		return self.Owned
	end

	function this:SetOwned(newOwned)
		if self.Owned ~= newOwned then
			self.Owned = newOwned
			self.OwnershipChanged:fire(newOwned)
		end
	end

	function this:GetRobuxPrice()
		local robuxPrice = data and data['PriceInRobux']
		if not robuxPrice then
			robuxPrice = data and data['Product'] and data['Product']['PriceInRobux']
		end
		local isPublicDomain = data and data['IsPublicDomain'] == true
		if isPublicDomain == nil then
			isPublicDomain = data and data['Product'] and data['Product']['IsPublicDomain'] == true
		end
		if not robuxPrice and isPublicDomain then
			robuxPrice = 0
		end

		return robuxPrice
	end

	function this:GetCreatorId()
		return data and data['Creator'] and data['Creator']['Id']
	end

	function this:WearAsync()
		local assetId = self:GetAssetId()
		if assetId then
			EventHub:dispatchEvent(EventHub.Notifications["AvatarEquipBegin"], assetId)
			AwaitWearAssetRequest()

			RequestingWearAsset = true
			local result = Http.PostWearAssetAsync(assetId)
			RequestingWearAsset = false

			if result and result['success'] == true then
				EventHub:dispatchEvent(EventHub.Notifications["AvatarEquipSuccess"], assetId)
			end
			return result
		end
	end

	function this:GetName()
		local resultPackageName = self:GetFullName()

		if resultPackageName then
			local colonPosition = string.find(resultPackageName, ":")
			if colonPosition then
				resultPackageName = string.sub(resultPackageName, 1, colonPosition - 1)
			end
		else
			resultPackageName = "Unknown"
		end

		return resultPackageName
	end

	function this:GetFullName()
		local name = data and data['Name']
		if not name then
			name = data and data['Item'] and data["Item"]['Name']
		end
		return name or "Unknown"
	end

	function this:GetDescriptionAsync()
		while not productInfo do wait() end
		return productInfo and productInfo['Description']
	end

	spawn(function()
		productInfo = MarketplaceService:GetProductInfo(this:GetAssetId())
		if productInfo == nil then productInfo = {} end
	end)

	--We get partIds when we create package
	this:UpdatePartIdsAsync()
	return this
end

local PackageData = {}
do
	--Cached Data
	--InternalPackageDataCache only gets updated at intervals
	local InternalPackageDataCache = nil

	--VisiblePackageDataCache gets updated by user operation
	--and will be checked and updated when GetCachedData() is called
	local VisiblePackageDataCache = nil
	local ProfileImageThumbnailLoader = nil
	local UpdateFuncId = nil

	--Start Image Update Times for wearing
	local ProfileImageUpdateForWearing = 0

	--Bool to check whether we update pane while updating caching data
	local visiblePackageUpdating = false

	local function ResetCacheData()
		InternalPackageDataCache = nil
		VisiblePackageDataCache = nil
		ProfileImageThumbnailLoader = nil
		UpdateFuncId = nil
		ProfileImageUpdateForWearing = 0
		visiblePackageUpdating = false
	end

	local function deepcopy(orig)
		local orig_type = type(orig)
		local copy
		if orig_type == 'table' then
			copy = {}
			for orig_key, orig_value in next, orig, nil do
				copy[deepcopy(orig_key)] = deepcopy(orig_value)
			end
			setmetatable(copy, deepcopy(getmetatable(orig)))
		else -- number, string, boolean, etc
			copy = orig
		end
		return copy
	end

	local UserChangedCount = 0
	--Add to cope with avatar purchase through Xbox Store
	local ConsumePurchasedConn = nil
	local function OnUserAccountChanged()
		local startCount = UserChangedCount
		ResetCacheData()
		spawn(function()
			if startCount == UserChangedCount then
				spawn(PreloadCharacterAppearanceAsync)
				local RefreshInterval = GlobalSettings.AvatarPaneRefreshInterval

				ReloaderManager:removeReloader("PackageData")
				UpdateFuncId = ReloaderManager:addReloaderFunc("PackageData", PackageData.UpdateCachedDataAsync, RefreshInterval)
				ReloaderManager:callReloaderFunc("PackageData", UpdateFuncId)

				Utility.DisconnectEvent(ConsumePurchasedConn)
				if PlatformService then
					ConsumePurchasedConn = PlatformService.ConsumePurchased:connect(function(platformPurchaseResult, purchasedConsumablesInfo)
						if platformPurchaseResult == 3 then
							spawn(function()
								PackageData:UpdatePurchasedConsumablesAsync(purchasedConsumablesInfo)
							end)
						end
					end)
				end
			end
		end)
	end

	EventHub:addEventListener(EventHub.Notifications["AuthenticationSuccess"], "PackageData", OnUserAccountChanged)

	local function OnUserSignOut()
		UserChangedCount = UserChangedCount + 1
		ReloaderManager:removeReloader("PackageData")
		EventHub:removeEventListener(EventHub.Notifications["AvatarEquipBegin"], "VisiblePackageDataCache")
		EventHub:removeEventListener(EventHub.Notifications["AvatarPurchaseBegin"], "VisiblePackageDataCache")
		EventHub:removeEventListener(EventHub.Notifications["AvatarEquipSuccess"], "VisiblePackageDataCache")
		EventHub:removeEventListener(EventHub.Notifications["AvatarPurchaseSuccess"], "VisiblePackageDataCache")
		EventHub:removeEventListener(EventHub.Notifications["CharacterUpdated"], "VisiblePackageDataCache")
		EventHub:removeEventListener(EventHub.Notifications["CharacterEquipped"], "VisiblePackageDataCache")
		Utility.DisconnectEvent(ConsumePurchasedConn)
	end

	if ThirdPartyUserService then
		ThirdPartyUserService.ActiveUserSignedOut:connect(OnUserSignOut)
	end


	local function GetAvailableXboxCatalogPackagesAsync()
		local isFinalPage = false

		local packages = {}
		local index = 0
		local count = 100

		repeat
			local result = nil

			Utility.ExponentialRepeat(
				function() return result == nil end,
				function()result = Http.GetXboxProductsAsync(index, count) end,
				2)

			if result then
				local items = result['Products']
				if items then
					if #items < count then
						isFinalPage = true
					end
					for _, itemInfo in pairs(items) do
						table.insert(packages, itemInfo)
					end
				end
			end

			index = index + count
		until result == nil or isFinalPage
		if isFinalPage then
			return packages
		end
	end

	local function GetOwnedCatalogPackageIdsByUserAsync(userId)
		local packages = Http.GetUserOwnedPackagesAsync(userId)
		if packages then
			local data = packages['IsValid'] and packages['Data']
			local items = data and data['Items']
			local result = {}
			if items then
				for _, itemInfo in pairs(items) do
					local assetId = itemInfo and itemInfo['Item'] and itemInfo['Item']['AssetId']
					result[assetId] = itemInfo
				end
			end
			return result
		end
	end


	local function getCatalogPackagesAsync()
		local xboxCatalogPackages = GetAvailableXboxCatalogPackagesAsync()
		local myPackages = GetOwnedCatalogPackageIdsByUserAsync(UserData:GetRbxUserId())

		if xboxCatalogPackages and myPackages then
			local result = {}
			result.Packages = {}
			result.OwnedInfo = {}

			--We use array to store xboxCatalogPackages as the order is important
			--and then use result.OwnedInfo to store OwnedInfo to avoid duplicate with myPackages
			for _, packageInfo in pairs(xboxCatalogPackages) do
				local package = CreatePackageItem(packageInfo)
				local assetId = package:GetAssetId()
				local owned = (myPackages[assetId] ~= nil)
				result.OwnedInfo[assetId] = owned
				table.insert(result.Packages, package)
			end

			for assetId, packageInfo in pairs(myPackages) do
				if result.OwnedInfo[assetId] == nil then
					local package = CreatePackageItem(packageInfo)
					result.OwnedInfo[assetId] = true
					table.insert(result.Packages, package)
				end
			end
			return result
		end
	end


	--Get new packages and owned info
	function PackageData:GetPackagesAndOwnedInfoAsync()
		local startCount = UserChangedCount
		local result = nil

		Utility.ExponentialRepeat(
			function() return result == nil and startCount == UserChangedCount end,
			function()result = getCatalogPackagesAsync() end,
			3)

		if startCount ~= UserChangedCount then
			result = nil
		end

		return result
	end

	--Utility function to compare arrays
	local function CompareAssetIdArrays(arr1, arr2)
		if type(arr1) == 'table' and type(arr2) == 'table' then
			if #arr1 == #arr2 then
				for i = 1, #arr1 do
					if tonumber(arr1[i]) ~= tonumber(arr2[i]) then
						return false
					end
				end
				return true
			end
		end

		return false
	end

	--Get WearingAssetId from packages
	function PackageData:GetWearingPackageAssetIdAsync(packages)
		local startCount = UserChangedCount
		local newWearingAssetId = nil

		if UserData:GetRbxUserId() then
			if packages then
				local WornAssetIds = Http.GetWornAssetsAsync(UserData:GetRbxUserId())
				--Compare package assetids with wearing assetids
				for _, package in pairs(packages) do
					if CompareAssetIdArrays(package:GetPartIdsAsync(), WornAssetIds) then
						newWearingAssetId = tonumber(package:GetAssetId())
						break
					end
				end
			end
		end

		if startCount ~= UserChangedCount then
			newWearingAssetId = nil
		end

		return newWearingAssetId
	end

	function PackageData:GetProfileImageAsync()
		local startCount = UserChangedCount
		local newProfileImage = {}
		if ProfileImageThumbnailLoader then
			ProfileImageThumbnailLoader:Cancel()
		end
		ProfileImageThumbnailLoader = ThumbnailLoader:Create(newProfileImage, UserData:GetRbxUserId(),
			ThumbnailLoader.AvatarSizes.Size352x352, ThumbnailLoader.AssetType.Avatar, true)
		ProfileImageThumbnailLoader:LoadAsync(false, false)

		--If user has changed or we fail to get the ImageUrl, return nil
		if newProfileImage.Image == "" or startCount ~= UserChangedCount then
			newProfileImage = nil
		end
		return newProfileImage
	end

	--Called at intervals, try to fetch latest CachedData
	local debounceUpdateCachedData = false
	function PackageData.UpdateCachedDataAsync()
		if debounceUpdateCachedData then
			while debounceUpdateCachedData do wait() end
		end
		debounceUpdateCachedData = true

		local startCount = UserChangedCount
		local maxRetry = 2
		local valid = false
		Utility.ExponentialRepeat(
			function() return valid == false and startCount == UserChangedCount end,
			function() valid = PackageData:UpdateCachedData() end,
			maxRetry)

		debounceUpdateCachedData = false
	end

	--Three Utility functions to update data
	local function UpdateDataProfileImage(data, newProfileImage)
		if not data then return end
		data.ProfileImage:Update(CreateCacheData(newProfileImage, tick()))
	end

	local function UpdateDataWearing(data, newWearingAssetId)
		if not data then return end
		local packages = data.Packages.Data
		data.WearingAssetId:Update(CreateCacheData(newWearingAssetId, tick()))

		for _, package in pairs(packages) do
			if package then
				if package:IsOwned() then
					package:SetWearing(newWearingAssetId == package:GetAssetId())
				else
					package:SetWearing(false)
				end
			end
		end
	end

	local function UpdateDataOwned(data, newOwnedAssetId, newOwned)
		if not data then return end
		local packages = data.Packages.Data
		if data.OwnedInfo then
			if data.OwnedInfo[newOwnedAssetId] then
				data.OwnedInfo[newOwnedAssetId]:Update(CreateCacheData(newOwned, tick()))
			else
				data.OwnedInfo[newOwnedAssetId] = CreateCacheData(newOwned, tick())
			end
		end
		for _, package in pairs(packages) do
			if package then
				if package:GetAssetId() == newOwnedAssetId then
					package:SetOwned(newOwned)
					if not newOwned then --We can't wear not owned packages
						package:SetWearing(false)
					end
					break
				end
			end
		end
	end

	function PackageData:UpdateCachedData()
		local validUpdate = false
		local startCount = UserChangedCount
		visiblePackageUpdating = false

		--Get Packages and OwnedInfo
		local newResult = PackageData:GetPackagesAndOwnedInfoAsync()
		local newPackages = newResult and newResult.Packages
		local newOwnedInfo = newResult and newResult.OwnedInfo

		--Must make sure we get valid Packages and OwnedInfo
		if newResult and newPackages and newOwnedInfo then
			local newPackageDataCache = {}
			newPackageDataCache.Packages = CreateCacheData(newPackages, tick())
			newPackageDataCache.OwnedInfo = {}
			if newOwnedInfo then
				for assetId, owned in pairs(newOwnedInfo) do
					newPackageDataCache.OwnedInfo[assetId] = CreateCacheData(owned, tick())
				end
			end

			--Get WearingAssetId
			local newWearingAssetId = PackageData:GetWearingPackageAssetIdAsync(newPackages)
			newPackageDataCache.WearingAssetId = CreateCacheData(newWearingAssetId, tick())

			--Get ProfileImage
			local newProfileImage = PackageData:GetProfileImageAsync()
			newPackageDataCache.ProfileImage = CreateCacheData(newProfileImage, tick())


			--Make sure the user doesn't change, then
			--if the user worn/purchased while we update in BG, we damp the data as it may be stale
			if startCount == UserChangedCount and not visiblePackageUpdating then
				--New CachedData
				InternalPackageDataCache = newPackageDataCache
				InternalPackageDataCache.Version = tick()

				--VisiblePackageDataCache is the CacheData used in app and will turn into visible elements
				--user can operate on these visible elements and update VisiblePackageDataCache like wear/buy and so on
				--We need the PackageDataCache to init VisiblePackageDataCache
				if not VisiblePackageDataCache then
					VisiblePackageDataCache = deepcopy(InternalPackageDataCache)
					VisiblePackageDataCache.OnProfileImageUpdateBegin = Utility.Signal()
					VisiblePackageDataCache.OnProfileImageUpdateEnd = Utility.Signal()
					VisiblePackageDataCache.OnDifferentWearing = Utility.Signal()
					VisiblePackageDataCache.OnDifferentOwned = Utility.Signal()

					--Each single pacakge can fire AvatarEquipSuccess and AvatarPurchaseSuccess.
					--As whenever one single package data changes, other packages(previous wearing/not owned) may also be influenced,
					--so we need listen to the signals to update all packages wearing and owned
					EventHub:removeEventListener(EventHub.Notifications["AvatarEquipBegin"], "VisiblePackageDataCache")
					EventHub:removeEventListener(EventHub.Notifications["AvatarPurchaseBegin"], "VisiblePackageDataCache")
					EventHub:removeEventListener(EventHub.Notifications["AvatarEquipSuccess"], "VisiblePackageDataCache")
					EventHub:removeEventListener(EventHub.Notifications["AvatarPurchaseSuccess"], "VisiblePackageDataCache")

					--Listen to Character update/equip from Avatar Editor
					EventHub:removeEventListener(EventHub.Notifications["CharacterUpdated"], "VisiblePackageDataCache")
					EventHub:removeEventListener(EventHub.Notifications["CharacterEquipped"], "VisiblePackageDataCache")

					EventHub:addEventListener(EventHub.Notifications["AvatarEquipBegin"], "VisiblePackageDataCache", function(assetId) visiblePackageUpdating = true end)
					EventHub:addEventListener(EventHub.Notifications["AvatarPurchaseBegin"], "VisiblePackageDataCache", function(assetId) visiblePackageUpdating = true end)
					EventHub:addEventListener(EventHub.Notifications["AvatarEquipSuccess"], "VisiblePackageDataCache",
						function(assetId, skipProfileImageUpdate)
							local startCount = UserChangedCount
							UpdateDataWearing(VisiblePackageDataCache, assetId)
							VisiblePackageDataCache.OnDifferentWearing:fire(assetId)
							spawn(PreloadCharacterAppearanceAsync)

							if not skipProfileImageUpdate then
								--Update Profile Image for wearing
								ProfileImageUpdateForWearing = ProfileImageUpdateForWearing + 1
								local thisProfileImageUpdateForWearing = ProfileImageUpdateForWearing
								VisiblePackageDataCache.OnProfileImageUpdateBegin:fire()
								visiblePackageUpdating = true
								local newProfileImage = PackageData:GetProfileImageAsync()
								if startCount == UserChangedCount and VisiblePackageDataCache then
									if thisProfileImageUpdateForWearing == ProfileImageUpdateForWearing and newProfileImage then
										UpdateDataProfileImage(VisiblePackageDataCache, newProfileImage)
										VisiblePackageDataCache.OnProfileImageUpdateEnd:fire(newProfileImage)
									else
										VisiblePackageDataCache.OnProfileImageUpdateEnd:fire()
									end
								end
							end
						end)
					EventHub:addEventListener(EventHub.Notifications["AvatarPurchaseSuccess"], "VisiblePackageDataCache",
						function(assetId, owned)
							UpdateDataOwned(VisiblePackageDataCache, assetId, owned)
							VisiblePackageDataCache.OnDifferentOwned:fire(assetId, owned)
						end)

					--CharacterUpdate: If anything changed on character, reload the profile image
					EventHub:addEventListener(EventHub.Notifications["CharacterUpdated"], "VisiblePackageDataCache",
						function()
							local startCount = UserChangedCount
							--Update Profile Image for wearing
							ProfileImageUpdateForWearing = ProfileImageUpdateForWearing + 1
							local thisProfileImageUpdateForWearing = ProfileImageUpdateForWearing
							VisiblePackageDataCache.OnProfileImageUpdateBegin:fire()
							visiblePackageUpdating = true
							local newProfileImage = PackageData:GetProfileImageAsync()
							if startCount == UserChangedCount and VisiblePackageDataCache then
								if thisProfileImageUpdateForWearing == ProfileImageUpdateForWearing and newProfileImage then
									UpdateDataProfileImage(VisiblePackageDataCache, newProfileImage)
									VisiblePackageDataCache.OnProfileImageUpdateEnd:fire(newProfileImage)
								else
									VisiblePackageDataCache.OnProfileImageUpdateEnd:fire()
								end
							end
						end)

					--If we equipped any asset on character, make wearing update
					EventHub:addEventListener(EventHub.Notifications["CharacterEquipped"], "VisiblePackageDataCache",
						function(newAssets, skipProfileImageUpdate)
							--Get assets array from store assets
							local assetsArray = {}
							for assetType, assetIds in pairs(newAssets) do
								for _, assetId in pairs(assetIds) do
									table.insert(assetsArray, tonumber(assetId))
								end
							end
							table.sort(assetsArray)

							local newWearingAssetId = nil
							local curWearingAssetId = nil
							local packages = VisiblePackageDataCache.Packages.Data
							--Compare package assetids with wearing assetids
							for _, package in pairs(packages) do
								if package:IsWearing() then
									curWearingAssetId = tonumber(package:GetAssetId())
								end
							end
							for _, package in pairs(packages) do
								if CompareAssetIdArrays(package:GetPartIdsAsync(), assetsArray) then
									newWearingAssetId = tonumber(package:GetAssetId())
									break
								end
							end
							if curWearingAssetId ~= newWearingAssetId then
								--Fire AvatarEquipSuccess event for achievement and wearing update
								EventHub:dispatchEvent(EventHub.Notifications["AvatarEquipSuccess"], newWearingAssetId, skipProfileImageUpdate)
							end
						end)
				end

				validUpdate = true
			end
		end
		return validUpdate
	end

	--"Sync" call to get VisiblePackageDataCache unless VisiblePackageDataCache is not initialized
	function PackageData:GetCachedData()
		--If not cached data, we wait until UpdateCachedData is done
		if not VisiblePackageDataCache then
			while debounceUpdateCachedData do wait() end
			--If still no data, try to fetch VisiblePackageDataCache again manually
			if not VisiblePackageDataCache then
				ReloaderManager:callReloaderFunc("PackageData", UpdateFuncId)
			end
		else
			if InternalPackageDataCache then
				--We merge VisiblePackageDataCache with InternalPackageDataCache if it's Version is behind
				--use Update to make sure we are using the latest cached data
				if VisiblePackageDataCache.Version < InternalPackageDataCache.Version then
					VisiblePackageDataCache.Packages:Update(InternalPackageDataCache.Packages)
					VisiblePackageDataCache.WearingAssetId:Update(InternalPackageDataCache.WearingAssetId)
					VisiblePackageDataCache.ProfileImage:Update(InternalPackageDataCache.ProfileImage)
					for assetId, owned in pairs(InternalPackageDataCache.OwnedInfo) do
						if VisiblePackageDataCache.OwnedInfo[assetId] then
							VisiblePackageDataCache.OwnedInfo[assetId]:Update(InternalPackageDataCache.OwnedInfo[assetId])
						else
							VisiblePackageDataCache.OwnedInfo[assetId] = InternalPackageDataCache.OwnedInfo[assetId]
						end
					end
					VisiblePackageDataCache.Version = InternalPackageDataCache.Version
				end
			end
		end

		if VisiblePackageDataCache then
			--Update Packages Owned and Wearing based on the merged data
			for _, package in pairs(VisiblePackageDataCache.Packages.Data) do
				local assetId = package:GetAssetId()
				local wearingAssetId = VisiblePackageDataCache.WearingAssetId.Data
				if VisiblePackageDataCache.OwnedInfo[assetId].Data then
					package:SetOwned(true)
					package:SetWearing(wearingAssetId == assetId)
				else
					package:SetOwned(false)
					package:SetWearing(false)
				end
			end
		end

		return VisiblePackageDataCache
	end

	--Check whether the VisiblePackageDataCache has been initialized
	function PackageData:HasCachedData()
		return VisiblePackageDataCache  ~= nil
	end


	--Update Avatar Pane for purchasing consumables
	local debounceUpdatePurchasedConsumables = false
	function PackageData:UpdatePurchasedConsumablesAsync(purchasedConsumablesInfo)
		local startCount = UserChangedCount
		--Wait until we get VisiblePackageDataCache
		if not VisiblePackageDataCache then
			while debounceUpdateCachedData do wait() end
		end

		while debounceUpdatePurchasedConsumables do wait() end
		debounceUpdatePurchasedConsumables = true
		if startCount == UserChangedCount and purchasedConsumablesInfo and #purchasedConsumablesInfo > 0 and VisiblePackageDataCache then
			--Check if any consumable is an Avatar
			local purchasedAvatarAssetIdMap = {}
			local purchasedAvatar = false
			for _, consumable in pairs(purchasedConsumablesInfo) do
				if consumable and tostring(consumable['Type']) == 'Avatar' then
					purchasedAvatarAssetIdMap[tostring(consumable['Roblox_AssetId'])] = true
					purchasedAvatar = true
				end
			end

			if purchasedAvatar then
				local consumedAssetIds = {}
				for _, package in pairs(VisiblePackageDataCache.Packages.Data) do
					local assetId = package:GetAssetId()
					if purchasedAvatarAssetIdMap[tostring(assetId)] then
						table.insert(consumedAssetIds, assetId)
					end
				end

				--if user consumed Avatar and still in the same session, we update the owned
				if startCount == UserChangedCount and VisiblePackageDataCache then
					--inform the BG update that we are updating the visible packages
					visiblePackageUpdating = true
					for i = 1, #consumedAssetIds do
						EventHub:dispatchEvent(EventHub.Notifications["AvatarPurchaseSuccess"], consumedAssetIds[i], true)
					end
				end
			end
		end
		debounceUpdatePurchasedConsumables = false
	end
end
return PackageData

--[[
	Interface for changing ingame settings.

	Flow:
		SettingsImpl can be provided via a SettingsImplProvider, then
		used as an Interface by the SaveChanges and LoadAllSettings thunks
		to save and load settings. Other implementations, such as
		SettingsImpl_mock, can be provided to allow testing.
]]

local HttpService = game:GetService("HttpService")
local StudioService = game:GetService("StudioService")

local FFlagStudioLuaGameSettingsDialog3 = settings():GetFFlag("StudioLuaGameSettingsDialog3")
local FFlagGameSettingsUsesNewIconEndpoint = settings():GetFFlag("GameSettingsUsesNewIconEndpoint")
local FFlagGameSettingsAnalyticsEnabled = settings():GetFFlag("GameSettingsAnalyticsEnabled")
local FFlagGameSettingsUpdatesUniverseDisplayName = settings():GetFFlag("GameSettingsUpdatesUniverseDisplayName")
local FFlagStudioLocalizationGameSettings = settings():GetFFlag("StudioLocalizationGameSettings")

local Plugin = script.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Cryo = require(Plugin.Cryo)
local Http = require(Plugin.Src.Networking.Http)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local fastFlags = require(Plugin.Src.Util.FastFlags)
local Analytics = require(Plugin.Src.Util.Analytics)

local AssetOverrides = nil

if fastFlags.isMorphingHumanoidDescriptionSystemOn() then
	AssetOverrides = require(Plugin.Src.Util.AssetOverrides)
end

local CAN_MANAGE_URL = "users/%d/canmanage/%d"
local CAN_MANAGE_TYPE = "api"

local CONFIGURATION_REQUEST_URL = "v1/universes/%d/configuration"
if fastFlags.isMorphingHumanoidDescriptionSystemOn() then
	CONFIGURATION_REQUEST_URL = "v2/universes/%d/configuration"
end
local CONFIGURATION_REQUEST_TYPE = "develop"

local UNIVERSES_REQUEST_URL = "v1/universes/%d"
local UNIVERSES_REQUEST_TYPE = "develop"

local ACTIVATE_REQUEST_URL = "v1/universes/%d/activate"
local ACTIVATE_REQUEST_TYPE = "develop"

local DEACTIVATE_REQUEST_URL = "v1/universes/%d/deactivate"
local DEACTIVATE_REQUEST_TYPE = "develop"

local PLACES_GET_URL = "v1/universes/%d/places"
local PLACES_GET_REQUEST_TYPE = "develop"

local PLACES_PATCH_URL = "v1/places/%d"
local PLACES_PATCH_REQUEST_TYPE = "develop"

local THUMBNAILS_GET_URL = "v1/games/%d/media"
local THUMBNAILS_GET_REQUEST_TYPE = "games"

local THUMBNAIL_ORDER_URL = "v1/universes/%d/thumbnails/order"
local THUMBNAIL_ORDER_REQUEST_TYPE = "develop"

local THUMBNAIL_DELETE_URL = "v1/universes/%d/thumbnails/%d"
local THUMBNAIL_DELETE_REQUEST_TYPE = "develop"

local ICON_URL_OLD = "places/icons/json?placeId=%d"
local ICON_REQUEST_TYPE_OLD = "www"

local ICON_URL = "v1/games/%d/icon"
local ICON_REQUEST_TYPE = "games"

local LOCALIZATION_GET_URL = "v1/autolocalization/games/%d/autolocalizationtable"
local LOCALIZATION_GET_REQUEST_TYPE = "gameinternationalization"

local LOCALIZATION_SET_URL = "v1/autolocalization/games/%d/settings"
local LOCALIZATION_SET_REQUEST_TYPE = "gameinternationalization"


local PLAYABLE_DEVICES = {
	Computer = false,
	Phone = false,
	Tablet = false,
	Console = false,
}

local fromUniverseConfigurationEndpoint = {
	universeAvatarType = true,
	universeScaleType = true,
	universeAnimationType = true,
	universeCollisionType = true,
	playableDevices = true,
	isFriendsOnly = true,
	name = true,
}

if fastFlags.isMorphingHumanoidDescriptionSystemOn() then
	fromUniverseConfigurationEndpoint = Cryo.Dictionary.join(fromUniverseConfigurationEndpoint, {
		universeAvatarAssetOverrides = true,
		universeAvatarMinScales = true,
		universeAvatarMaxScales = true,
	})
end

if FFlagStudioLuaGameSettingsDialog3 then
	fromUniverseConfigurationEndpoint = Cryo.Dictionary.join(fromUniverseConfigurationEndpoint, {
		genre = true,
	})
end

local fromUniversesEndpoint = {
	isActive = true,
}

if FFlagStudioLuaGameSettingsDialog3 then
	fromUniversesEndpoint = Cryo.Dictionary.join(fromUniversesEndpoint, {
		creatorType = true,
		creatorName = true,
	})
end

local fromRootPlaceInfoEndpoint = {
	description = true,
}

local SettingsImpl = {}
SettingsImpl.__index = SettingsImpl

local function extractRelevantEntries(body, fromEndpointList)
	local loadedSettings = {}
	for entry, _ in pairs(fromEndpointList) do
		loadedSettings[entry] = body[entry]
	end
	return loadedSettings
end

function SettingsImpl.new(userId)
	local self = setmetatable({}, SettingsImpl)
	self.userId = userId
	self.canManage = false
	return self
end

function SettingsImpl:GetUserId()
	return self.userId
end

function SettingsImpl:CanManagePlace()
	local requestInfo = {
		Url = Http.BuildRobloxUrl(CAN_MANAGE_TYPE, CAN_MANAGE_URL, self.userId, game.PlaceId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		return result.CanManage or false
	end)
	:catch(function()
		warn("Game Settings: Could not determine if the current Studio user can manage game settings.")
		return Promise.resolve(false)
	end)
end

--[[
	Used to get the state of the game settings by downloading them from web
	endpoints or reading their properties from the datamodel.
]]
function SettingsImpl:GetSettings()
	local settings = {
		HttpEnabled = HttpService:GetHttpEnabled()
	}

	return self:CanManagePlace():andThen(function(canManage)
		self.canManage = canManage

		local getRequests = {
			self:GetUniverseConfiguration(),
			self:GetRootPlaceInfo(),
			self:GetUniversesInfo(),
		}

		if FFlagStudioLuaGameSettingsDialog3 then
			table.insert(getRequests, self:GetThumbnails())

			if FFlagGameSettingsUsesNewIconEndpoint then
				table.insert(getRequests, self:GetIcon())
			end
		end

		if FFlagStudioLocalizationGameSettings then
			table.insert(getRequests, self:GetLocalizationInfo())
		end

		return Promise.all(getRequests)
		:andThen(function(loaded)
			for _, values in ipairs(loaded) do
				settings = Cryo.Dictionary.join(settings, values)
			end
			return settings
		end)
	end)
end

--[[
	Used to save the chosen state of all game settings by saving to web
	endpoints or setting properties in the datamodel.
]]
function SettingsImpl:SaveAll(state)
	if state.Changed.HttpEnabled ~= nil then
		HttpService:SetHttpEnabled(state.Changed.HttpEnabled)
	end

	return self:CanManagePlace():andThen(function(canManage)
		self.canManage = canManage

		local universeConfigValues = {}
		local rootPlaceInfoValues = {}
		local isActive = nil
		local thumbnailOrder = nil
		local thumbnails = nil
		local autoscrapingOn = nil

		for setting, value in pairs(state.Changed) do
			if fromUniverseConfigurationEndpoint[setting] then
				if fastFlags.isMorphingHumanoidDescriptionSystemOn() and "universeAvatarAssetOverrides" == setting then
					universeConfigValues[setting] = AssetOverrides.processSaveData(state.Current[setting], value)
				else
					universeConfigValues[setting] = value
				end
			elseif fromRootPlaceInfoEndpoint[setting] then
				rootPlaceInfoValues[setting] = value
			elseif setting == "isActive" then
				isActive = value
			elseif FFlagStudioLuaGameSettingsDialog3 and setting == "thumbnails" then
				thumbnails = {
					Current = state.Current.thumbnails,
					Changed = state.Changed.thumbnails,
				}
			elseif FFlagStudioLuaGameSettingsDialog3 and setting == "thumbnailOrder" then
				thumbnailOrder = value
			elseif FFlagStudioLocalizationGameSettings and setting == "autoscrapingOn" then
				autoscrapingOn = value
			end
		end

		local setRequests = {
			self:SetUniverseConfiguration(universeConfigValues),
			self:SetRootPlaceInfo(rootPlaceInfoValues),
			self:SetUniverseActive(isActive),
		}

		if FFlagStudioLuaGameSettingsDialog3 then
			table.insert(setRequests, self:SetThumbnails(thumbnails))
			table.insert(setRequests, self:SetThumbnailOrder(thumbnailOrder))
		end

		if FFlagStudioLocalizationGameSettings then
			table.insert(setRequests, self:SetLocalizationInfo(autoscrapingOn))
		end

		return Promise.all(setRequests):andThen(function()
			if FFlagGameSettingsUpdatesUniverseDisplayName and universeConfigValues.name then
				StudioService:SetUniverseDisplayName(universeConfigValues.name)
			end
		end)
	end)
end

--[[
	Specific implementations for individual settings endpoints.
	Because some settings use the same endpoint, we want to be able to save
	and load entire categories at the same time, based on the endpoints.
	Get functions should return a table mapping settings names to values.
]]

-- Avatar, description, and name settings
function SettingsImpl:GetUniverseConfiguration()
	if not self.canManage then
		return Promise.resolve({})
	end

	local universeId = game.GameId

	local requestInfo = {
		Url = Http.BuildRobloxUrl(CONFIGURATION_REQUEST_TYPE, CONFIGURATION_REQUEST_URL, universeId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		local values = extractRelevantEntries(result, fromUniverseConfigurationEndpoint)
		if values.playableDevices then
			local toDict = Cryo.Dictionary.join(PLAYABLE_DEVICES, {})
			for _, key in pairs(values.playableDevices) do
				toDict[key] = true
			end
			values.playableDevices = toDict
		end
		return values
	end)
	:catch(function()
		warn("Game Settings: Could not load settings from universe configuration.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onLoadError("UniverseConfiguration")
			return Promise.reject()
		else
			return Promise.resolve({})
		end
	end)
end

function SettingsImpl:SetUniverseConfiguration(body)
	if not self.canManage or isEmpty(body) then
		return Promise.resolve()
	end

	local universeId = game.GameId

	-- JSONEncode doesn't handle lua numbers well, this fixes API errors that come from that.
	if body.universeAvatarMaxScales then
		for scale, value in pairs(body.universeAvatarMaxScales) do
			body.universeAvatarMaxScales[scale] = tostring(value)
		end
	end

	if body.universeAvatarMinScales then
		for scale, value in pairs(body.universeAvatarMinScales) do
			body.universeAvatarMinScales[scale] = tostring(value)
		end
	end

	if body.playableDevices then
		local toTable = {}
		for key, value in pairs(body.playableDevices) do
			if value then
				table.insert(toTable, key)
			end
		end
		body.playableDevices = toTable
	end

	local requestInfo = {
		Url = Http.BuildRobloxUrl(CONFIGURATION_REQUEST_TYPE, CONFIGURATION_REQUEST_URL, universeId),
		Method = "PATCH",
		Body = HttpService:JSONEncode(body),
	}

	return Http.Request(requestInfo)
	:catch(function(err)
		warn("Game Settings: Could not save universe configuration settings.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onSaveError("UniverseConfiguration")
		end
		if string.find(err, "HTTP 400") then
			local errors = {}
			if body.name then
				errors.name = "Moderated"
			end
			return Promise.reject(errors)
		elseif not FFlagGameSettingsAnalyticsEnabled then
			return Promise.resolve()
		end
	end)
end

-- Starting place info (description)
function SettingsImpl:GetRootPlaceInfo()
	if not self.canManage then
		return Promise.resolve({})
	end

	local universeId = game.GameId

	local requestInfo = {
		Url = Http.BuildRobloxUrl(UNIVERSES_REQUEST_TYPE, UNIVERSES_REQUEST_URL, universeId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		local rootPlaceId = result.rootPlaceId

		local placesRequestInfo = {
			Url = Http.BuildRobloxUrl(PLACES_GET_REQUEST_TYPE, PLACES_GET_URL, universeId),
			Method = "GET",
		}

		return Http.Request(placesRequestInfo):andThen(function(placesJsonResult)
			local placesResult = HttpService:JSONDecode(placesJsonResult)

			for _, place in ipairs(placesResult.data) do
				if place.id == rootPlaceId then
					return Cryo.Dictionary.join(extractRelevantEntries(place, fromRootPlaceInfoEndpoint), {
						rootPlaceId = place.id,
					})
				end
			end
		end)
	end)
	:andThen(function(result)
		if FFlagStudioLuaGameSettingsDialog3 and not FFlagGameSettingsUsesNewIconEndpoint then
			return self:DEPRECATED_GetIcon(result.rootPlaceId):andThen(function(iconEntry)
				return Cryo.Dictionary.join(result, iconEntry)
			end)
		else
			return result
		end
	end)
	:catch(function()
		warn("Game Settings: Could not load root place configuration settings.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onLoadError("RootPlace")
			return Promise.reject()
		else
			return Promise.resolve({})
		end
	end)
end

function SettingsImpl:SetRootPlaceInfo(body)
	if not self.canManage or isEmpty(body) then
		return Promise.resolve()
	end

	local universeId = game.GameId

	local requestInfo = {
		Url = Http.BuildRobloxUrl(UNIVERSES_REQUEST_TYPE, UNIVERSES_REQUEST_URL, universeId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		local rootPlaceId = result.rootPlaceId

		local placeRequestInfo = {
			Url = Http.BuildRobloxUrl(PLACES_PATCH_REQUEST_TYPE, PLACES_PATCH_URL, rootPlaceId),
			Method = "PATCH",
			Body = HttpService:JSONEncode(body),
		}

		return Http.Request(placeRequestInfo)
	end)
	:catch(function(err)
		warn("Game Settings: Could not save root place configuration settings.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onSaveError("RootPlace")
		end
		if string.find(err, "HTTP 400") then
			local errors = {}
			if body.description then
				errors.description = "Moderated"
			end
			return Promise.reject(errors)
		elseif not FFlagGameSettingsAnalyticsEnabled then
			return Promise.resolve()
		end
	end)
end

-- Place activation settings
function SettingsImpl:GetUniversesInfo()
	if not self.canManage then
		return Promise.resolve({})
	end

	local universeId = game.GameId

	local requestInfo = {
		Url = Http.BuildRobloxUrl(UNIVERSES_REQUEST_TYPE, UNIVERSES_REQUEST_URL, universeId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		return extractRelevantEntries(result, fromUniversesEndpoint)
	end)
	:catch(function()
		warn("Game Settings: Could not load settings from universes.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onLoadError("Universes")
			return Promise.reject()
		else
			return Promise.resolve({})
		end
	end)
end

function SettingsImpl:SetUniverseActive(isActive)
	if not self.canManage or isActive == nil then
		return Promise.resolve()
	end

	local universeId = game.GameId

	local requestInfo = {
		Method = "POST",
	}

	if isActive then
		requestInfo.Url = Http.BuildRobloxUrl(ACTIVATE_REQUEST_TYPE, ACTIVATE_REQUEST_URL, universeId)
	else
		requestInfo.Url = Http.BuildRobloxUrl(DEACTIVATE_REQUEST_TYPE, DEACTIVATE_REQUEST_URL, universeId)
	end

	return Http.Request(requestInfo)
	:catch(function()
		warn("Game Settings: Could not change universe Active status.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onSaveError("UniverseActive")
			return Promise.reject()
		else
			return Promise.resolve()
		end
	end)
end

-- Screenshots and video
function SettingsImpl:GetThumbnails()
	if not self.canManage then
		return Promise.resolve({})
	end

	local universeId = game.GameId

	local requestInfo = {
		Url = Http.BuildRobloxUrl(THUMBNAILS_GET_REQUEST_TYPE, THUMBNAILS_GET_URL, universeId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local thumbnails = HttpService:JSONDecode(jsonResult).data
		local formatted = {}
		local order = {}

		for _, thumbnail in pairs(thumbnails) do
			local stringId = tostring(thumbnail.id)
			formatted[stringId] = thumbnail
			table.insert(order, stringId)
		end

		return {
			thumbnails = formatted,
			thumbnailOrder = order,
		}
	end)
	:catch(function()
		warn("Game Settings: Could not load thumbnails.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onLoadError("Thumbnails")
			return Promise.reject()
		else
			return Promise.resolve({})
		end
	end)
end

function SettingsImpl:SetThumbnails(thumbnails)
	if not self.canManage or thumbnails == nil then
		return Promise.resolve()
	end

	local universeId = game.GameId
	local oldThumbs = thumbnails.Current
	local newThumbs = thumbnails.Changed

	-- Delete thumbnails not present in newThumbs that exist in oldThumbs.
	local thumbsToDelete = {}
	local deleteRequests = {}
	for thumbnailId in pairs(oldThumbs) do
		if newThumbs[thumbnailId] == nil then
			table.insert(thumbsToDelete, thumbnailId)
		end
	end

	for _, thumbnailId in ipairs(thumbsToDelete) do
		local requestInfo = {
			Url = Http.BuildRobloxUrl(THUMBNAIL_DELETE_REQUEST_TYPE, THUMBNAIL_DELETE_URL, universeId, thumbnailId),
			Method = "DELETE",
		}

		table.insert(deleteRequests, Http.Request(requestInfo))
	end

	return Promise.all(deleteRequests)
	:catch(function()
		warn("Game Settings: Could not delete thumbnails.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onSaveError("Thumbnails")
			return Promise.reject()
		else
			return Promise.resolve()
		end
	end)
end

function SettingsImpl:SetThumbnailOrder(thumbnailOrder)
	if not self.canManage or thumbnailOrder == nil then
		return Promise.resolve()
	end

	local universeId = game.GameId
	local body = HttpService:JSONEncode({
		thumbnailIds = thumbnailOrder,
	})

	local requestInfo = {
		Url = Http.BuildRobloxUrl(THUMBNAIL_ORDER_REQUEST_TYPE, THUMBNAIL_ORDER_URL, universeId),
		Method = "POST",
		Body = body,
	}

	return Http.Request(requestInfo)
	:catch(function()
		warn("Game Settings: Could not change thumbnail order.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onSaveError("ThumbnailOrder")
			return Promise.reject()
		else
			return Promise.resolve()
		end
	end)
end

-- Game Icon
function SettingsImpl:GetIcon()
	if not self.canManage then
		return Promise.resolve({})
	end

	local universeId = game.GameId

	local requestInfo = {
		Url = Http.BuildRobloxUrl(ICON_REQUEST_TYPE, ICON_URL, universeId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)

		return {
			gameIcon = result.imageId and ("rbxassetid://" .. result.imageId) or "None"
		}
	end)
	:catch(function()
		warn("Game Settings: Could not load game icon.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onLoadError("Icon")
			return Promise.reject()
		else
			return Promise.resolve({})
		end
	end)
end

-- Deprecated, remove when removing FFlagGameSettingsUsesNewIconEndpoint
function SettingsImpl:DEPRECATED_GetIcon(rootPlaceId)
	if not self.canManage then
		return Promise.resolve({})
	end

	local requestInfo = {
		Url = Http.BuildRobloxUrl(ICON_REQUEST_TYPE_OLD, ICON_URL_OLD, rootPlaceId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		local imageId = result.ImageId

		return {
			gameIcon = imageId ~= rootPlaceId and ("rbxassetid://" .. imageId) or "None"
		}
	end)
	:catch(function()
		warn("Game Settings: Could not load game icon.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onLoadError("Icon")
			return Promise.reject()
		else
			return Promise.resolve({})
		end
	end)
end

function SettingsImpl:GetLocalizationInfo()
	if not self.canManage then
		return Promise.resolve({})
	end

	local universeId = game.GameId

	local bodyObject = {
		name = "MyLocalizationTable",
		ownerType = "User",
		ownerId = self.userId,
	}

	local requestInfo = {
		Url = Http.BuildRobloxUrl(LOCALIZATION_GET_REQUEST_TYPE, LOCALIZATION_GET_URL, universeId),
		Method = "POST",
		Body = HttpService:JSONEncode(bodyObject),
		CachePolicy = Enum.HttpCachePolicy.None,
		Headers = {
			["Content-Type"] = "application/json"
		},
	}

	return Http.RequestInternal(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		return {
			autoscrapingOn = result.isAutolocalizationEnabled,
		}
	end)
	:catch(function()
		warn("Game Settings: Could not load Game Localization Table settings.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onLoadError("Localization")
			return Promise.reject()
		else
			return Promise.resolve({})
		end
	end)
end

function SettingsImpl:SetLocalizationInfo(autoscrapingOn)
	if not self.canManage then
		return Promise.resolve({})
	end

	local universeId = game.GameId

	local requestInfo = {
		Url = Http.BuildRobloxUrl(LOCALIZATION_SET_REQUEST_TYPE, LOCALIZATION_SET_URL, universeId),
		Method = "PATCH",
		Body = HttpService:JSONEncode({
			isAutolocalizationEnabled = autoscrapingOn,
		}),
		CachePolicy = Enum.HttpCachePolicy.None,
		Headers = {
			["Content-Type"] = "application/json"
		}
	}

	return Http.RequestInternal(requestInfo)
	:catch(function()
		warn("Game Settings: Could not save Game Localization Table settings.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onSaveError("Localization")
			return Promise.reject()
		else
			return Promise.resolve({})
		end
	end)
end

return SettingsImpl

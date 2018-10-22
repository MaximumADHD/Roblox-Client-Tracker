--[[
	Interface for changing ingame settings.

	Flow:
		SettingsImpl can be provided via a SettingsImplProvider, then
		used as an Interface by the SaveChanges and LoadAllSettings thunks
		to save and load settings. Other implementations, such as
		SettingsImpl_mock, can be provided to allow testing.
]]

local Plugin = script.Parent.Parent.Parent
local fastFlags = require(Plugin.Src.Util.FastFlags)

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
		fromUniverseConfigurationEndpoint = {
			universeAvatarType = true,
			universeScaleType = true,
			universeAnimationType = true,
			universeCollisionType = true,
			playableDevices = true,
			isFriendsOnly = true,
			name = true,
			universeAvatarAssetOverrides = true,
			universeAvatarMinScales = true,
			universeAvatarMaxScales = true,
		}
end

local fromUniversesEndpoint = {
	isActive = true,
}

local fromRootPlaceInfoEndpoint = {
	description = true,
}

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Cryo = require(Plugin.Cryo)
local Http = require(Plugin.Src.Networking.Http)
local isEmpty = require(Plugin.Src.Util.isEmpty)

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

		return Promise.all({
			self:GetUniverseConfiguration(),
			self:GetRootPlaceInfo(),
			self:GetUniversesInfo(),
		})
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
			end
		end

		return Promise.all({
			self:SetUniverseConfiguration(universeConfigValues),
			self:SetRootPlaceInfo(rootPlaceInfoValues),
			self:SetUniverseActive(isActive),
		})
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
		return Promise.resolve({})
	end)
end

function SettingsImpl:SetUniverseConfiguration(body)
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

	if not self.canManage or isEmpty(body) then
		return Promise.resolve()
	end

	local universeId = game.GameId

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
		if string.find(err, "HTTP 400") then
			local errors = {}
			if body.name then
				errors.name = "Moderated"
			end
			return Promise.reject(errors)
		else
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
					return extractRelevantEntries(place, fromRootPlaceInfoEndpoint)
				end
			end
		end)
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
		if string.find(err, "HTTP 400") then
			local errors = {}
			if body.description then
				errors.description = "Moderated"
			end
			return Promise.reject(errors)
		else
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
		return Promise.resolve({})
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
		return Promise.resolve()
	end)
end

return SettingsImpl
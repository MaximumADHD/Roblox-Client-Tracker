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

local FFlagGameSettingsUsesNewIconEndpoint = settings():GetFFlag("GameSettingsUsesNewIconEndpoint")
local FFlagGameSettingsUpdatesUniverseDisplayName = settings():GetFFlag("GameSettingsUpdatesUniverseDisplayName")
local FFlagStudioLocalizationGameSettings = settings():GetFFlag("StudioLocalizationGameSettings")
local FFlagGameSettingsImageUploadingEnabled = settings():GetFFlag("GameSettingsImageUploadingEnabled")
local DFFlagGameSettingsWorldPanel = settings():GetFFlag("GameSettingsWorldPanel3")
local FFlagStudioGameSettingsAccessPermissions = settings():GetFFlag("StudioGameSettingsAccessPermissions")

local Plugin = script.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Cryo = require(Plugin.Cryo)
local fastFlags = require(Plugin.Src.Util.FastFlags)

local WorkspaceSettings = nil
if DFFlagGameSettingsWorldPanel or fastFlags.isPlaceFilesGameSettingsSerializationOn() then
	WorkspaceSettings = require(Plugin.Src.Util.WorkspaceSettings)
end

local AssetOverrides = nil
if fastFlags.isMorphingHumanoidDescriptionSystemOn() then
	AssetOverrides = require(Plugin.Src.Util.AssetOverrides)
end

local RequestsFolder = Plugin.Src.Networking.Requests
local Requests = {
	CanManage = require(RequestsFolder.CanManage),
	Configuration = require(RequestsFolder.Configuration),
	Universes = require(RequestsFolder.Universes),
	RootPlaceInfo = require(RequestsFolder.RootPlaceInfo),
	Localization = require(RequestsFolder.Localization),
	GameIcon = require(RequestsFolder.GameIcon),
	Thumbnails = require(RequestsFolder.Thumbnails),
	GamePermissions = FFlagStudioGameSettingsAccessPermissions and require(RequestsFolder.GamePermissions) or nil
}

local SettingsImpl = {}
SettingsImpl.__index = SettingsImpl

function SettingsImpl.new(userId)
	local self = setmetatable({}, SettingsImpl)
	self.userId = userId
	return self
end

function SettingsImpl:GetUserId()
	return self.userId
end

function SettingsImpl:CanManagePlace()
	local universeId = game.PlaceId
	return Requests.CanManage.Get(universeId, self.userId)
end

--[[
	Used to get the state of the game settings by downloading them from web
	endpoints or reading their properties from the datamodel.
]]
function SettingsImpl:GetSettings()
	local settings = {
		HttpEnabled = HttpService:GetHttpEnabled()
	}
	if DFFlagGameSettingsWorldPanel then
		settings = Cryo.Dictionary.join(settings, WorkspaceSettings.getWorldSettings(settings))
	end

	return self:CanManagePlace():andThen(function(canManage)
		if fastFlags.isPlaceFilesGameSettingsSerializationOn() then
			settings = Cryo.Dictionary.join(settings, {["canManage"] = canManage })
		end
		if not canManage then
			if fastFlags.isPlaceFilesGameSettingsSerializationOn() then
				settings = Cryo.Dictionary.join(settings, WorkspaceSettings.getAvatarSettings(settings))
			end
			return settings
		end

		local universeId = game.GameId

		local getRequests = {
			Requests.Configuration.Get(universeId),
			Requests.Universes.Get(universeId),
			Requests.Thumbnails.Get(universeId),
		}

		if FFlagGameSettingsUsesNewIconEndpoint then
			table.insert(getRequests, Requests.RootPlaceInfo.Get(universeId))
			table.insert(getRequests, Requests.GameIcon.Get(universeId))
		else
			table.insert(getRequests, Requests.RootPlaceInfo.Get(universeId):andThen(function(result)
				settings = Cryo.Dictionary.join(settings, result)
				return Requests.GameIcon.DEPRECATED_Get(result.rootPlaceId)
			end))
		end

		if FFlagStudioLocalizationGameSettings then
			table.insert(getRequests, Requests.Localization.Get(universeId))
		end
		
		if FFlagStudioGameSettingsAccessPermissions then
			local DEBUG_loggedInUserId = self:GetUserId() -- Used to populate with dummy data. Remove when backend returns real data
			table.insert(getRequests, Requests.GamePermissions.Get(universeId, DEBUG_loggedInUserId))
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
	if DFFlagGameSettingsWorldPanel then
		WorkspaceSettings.saveAllWorldSettings(state.Changed)
	end

	return self:CanManagePlace():andThen(function(canManage)
		if not fastFlags.isPlaceFilesGameSettingsSerializationOn() then
			if not canManage then
				return
			end
		end

		local saveInfo = {}

		for setting, value in pairs(state.Changed) do
			if Requests.Configuration.AcceptsValue(setting) then
				saveInfo.Configuration = saveInfo.Configuration or {}
				if fastFlags.isMorphingHumanoidDescriptionSystemOn() and "universeAvatarAssetOverrides" == setting then
					saveInfo.Configuration[setting] = AssetOverrides.processSaveData(state.Current[setting], value)
				else
					saveInfo.Configuration[setting] = value
				end

			elseif Requests.RootPlaceInfo.AcceptsValue(setting) then
				saveInfo.RootPlaceInfo = saveInfo.RootPlaceInfo or {}
				saveInfo.RootPlaceInfo[setting] = value

			elseif Requests.Thumbnails.AcceptsValue(setting) then
				if setting == "thumbnails" then
					saveInfo[setting] = {
						Current = state.Current.thumbnails,
						Changed = state.Changed.thumbnails,
					}
				else
					saveInfo[setting] = value
				end

			elseif Requests.Universes.AcceptsValue(setting) then
				saveInfo[setting] = value

			elseif FFlagStudioLocalizationGameSettings and Requests.Localization.AcceptsValue(setting) then
				saveInfo[setting] = value

			elseif FFlagGameSettingsImageUploadingEnabled and Requests.GameIcon.AcceptsValue(setting) then
				saveInfo[setting] = value
			end
		end

		if fastFlags.isPlaceFilesGameSettingsSerializationOn() then
			WorkspaceSettings.saveAllAvatarSettings(saveInfo)
			if not canManage then
				return
			end
		end

		local universeId = game.GameId

		local setRequests = {
			Requests.Configuration.Set(universeId, saveInfo.Configuration),
			Requests.RootPlaceInfo.Set(universeId, saveInfo.RootPlaceInfo),
			Requests.Universes.Set(universeId, saveInfo.isActive),
		}

		if FFlagGameSettingsImageUploadingEnabled then
			table.insert(setRequests, Requests.Thumbnails.Set(universeId, saveInfo.thumbnails, saveInfo.thumbnailOrder))
			table.insert(setRequests, Requests.GameIcon.Set(universeId, saveInfo.gameIcon))
		else
			table.insert(setRequests, Requests.Thumbnails.DEPRECATED_Set(universeId, saveInfo.thumbnails))
			table.insert(setRequests, Requests.Thumbnails.SetOrder(universeId, saveInfo.thumbnailOrder))
		end

		if FFlagStudioLocalizationGameSettings then
			table.insert(setRequests, Requests.Localization.Set(universeId, saveInfo.autoscrapingOn))
		end

		return Promise.all(setRequests):andThen(function()
			if FFlagGameSettingsUpdatesUniverseDisplayName and saveInfo.Configuration
				and saveInfo.Configuration.name then
				StudioService:SetUniverseDisplayName(saveInfo.Configuration.name)
			end
		end)
	end)
end

return SettingsImpl

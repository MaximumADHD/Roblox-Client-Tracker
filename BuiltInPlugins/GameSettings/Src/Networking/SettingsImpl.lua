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
local FFlagStudioGameSettingsAccessPermissions = settings():GetFFlag("StudioGameSettingsAccessPermissions")
local FFlagStudioGameSettingsDisablePlayabilityForDrafts = game:GetFastFlag("StudioGameSettingsDisablePlayabilityForDrafts")

local DFFlagDeveloperSubscriptionsEnabled = settings():GetFFlag("DeveloperSubscriptionsEnabled")

local Plugin = script.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Cryo = require(Plugin.Cryo)
local fastFlags = require(Plugin.Src.Util.FastFlags)

local WorkspaceSettings = require(Plugin.Src.Util.WorkspaceSettings)

local AssetOverrides = require(Plugin.Src.Util.AssetOverrides)

local RequestsFolder = Plugin.Src.Networking.Requests
local Requests = {
	CanManage = require(RequestsFolder.CanManage),
	Configuration = require(RequestsFolder.Configuration),
	Universes = require(RequestsFolder.Universes),
	RootPlaceInfo = require(RequestsFolder.RootPlaceInfo),
	GameIcon = require(RequestsFolder.GameIcon),
	Thumbnails = require(RequestsFolder.Thumbnails),
	GamePermissions = FFlagStudioGameSettingsAccessPermissions and require(RequestsFolder.GamePermissions) or nil,
	DeveloperSubscriptions = DFFlagDeveloperSubscriptionsEnabled and require(RequestsFolder.DevSubs.DeveloperSubscriptions) or nil,
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
	if FFlagStudioGameSettingsAccessPermissions and not self:IsPublished() then
		return Promise.new(function(resolve, _) resolve(true) end)
	end

	local placeId = game.PlaceId
	return Requests.CanManage.Get(placeId, self.userId)
end

function SettingsImpl:IsPublished()
	return game.GameId ~= 0
end

--[[
	Used to get the state of the game settings by downloading them from web
	endpoints or reading their properties from the datamodel.
]]
function SettingsImpl:GetSettings_Old()
	local settings = {
		HttpEnabled = HttpService:GetHttpEnabled(),
		studioUserId = FFlagStudioGameSettingsAccessPermissions and self:GetUserId() or nil,
	}
	settings = Cryo.Dictionary.join(settings, WorkspaceSettings.getWorldSettings(settings))

	return self:CanManagePlace():andThen(function(canManage)
		if fastFlags.isPlaceFilesGameSettingsSerializationOn() then
			settings = Cryo.Dictionary.join(settings, {["canManage"] = canManage })
		end
		if not canManage then
			if fastFlags.isPlaceFilesGameSettingsSerializationOn() then
				settings = Cryo.Dictionary.join(settings, WorkspaceSettings.getAvatarSettings(settings))
			end
			
			if FFlagStudioGameSettingsDisablePlayabilityForDrafts then
				settings = Cryo.Dictionary.join(settings, {["privacyType"] = "Draft"})
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

		if DFFlagDeveloperSubscriptionsEnabled then
			table.insert(getRequests, Requests.DeveloperSubscriptions.Get())
		end

		if FFlagStudioGameSettingsAccessPermissions then
			table.insert(getRequests, Requests.GamePermissions.Get(universeId))
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

function SettingsImpl:GetSettings_New()
	assert(fastFlags.isPlaceFilesGameSettingsSerializationOn(),
		"Required flags are not enabled")

	local settings = {
		HttpEnabled = HttpService:GetHttpEnabled(),
		studioUserId = self:GetUserId(),
	}
	settings = Cryo.Dictionary.join(settings, WorkspaceSettings.getWorldSettings(settings))

	return Promise.new(function(resolve, reject)
		spawn(function()
			local isPublished = self:IsPublished()
			local gameId = game.GameId

			local success,loaded = Promise.all({
				self:CanManagePlace(),
				Requests.Universes.Get(gameId, self:GetUserId()),
			}):await()
			if not success then reject(loaded) return end

			local canManage = loaded[1]
			local creatorId = loaded[2].creatorId
			local creatorType = loaded[2].creatorType
			local creatorName = loaded[2].creatorName

			settings = Cryo.Dictionary.join(settings, {["canManage"] = canManage })
			settings = Cryo.Dictionary.join(settings, loaded[2])

			if (not isPublished) then
				local getRequests = {
					Requests.GamePermissions.Get(gameId, creatorName, creatorId, creatorType),
				}
				local success,loaded = Promise.all(getRequests):await()
				if not success then reject(loaded) return end
				for _, values in ipairs(loaded) do
					settings = Cryo.Dictionary.join(settings, values)
				end
			elseif (not canManage) then
				settings = Cryo.Dictionary.join(settings, WorkspaceSettings.getAvatarSettings(settings))
			else
				local getRequests = {
					Requests.Configuration.Get(gameId),
					Requests.Thumbnails.Get(gameId),
					Requests.GamePermissions.Get(gameId, creatorName, creatorId, creatorType),
				}

				if FFlagGameSettingsUsesNewIconEndpoint then
					table.insert(getRequests, Requests.RootPlaceInfo.Get(gameId))
					table.insert(getRequests, Requests.GameIcon.Get(gameId))
				else
					table.insert(getRequests, Requests.RootPlaceInfo.Get(gameId):andThen(function(result)
						settings = Cryo.Dictionary.join(settings, result)
						return Requests.GameIcon.DEPRECATED_Get(result.rootPlaceId)
					end))
				end

				if DFFlagDeveloperSubscriptionsEnabled then
					table.insert(getRequests, Requests.DeveloperSubscriptions.Get())
				end

				local success,loaded = Promise.all(getRequests):await()
				if not success then reject(loaded) return end
				for _, values in ipairs(loaded) do
					settings = Cryo.Dictionary.join(settings, values)
				end
			end

			resolve(settings)
		end)
	end)
end

-- TODO (awarwick) 6/5/2019 Remove with flag
function SettingsImpl:GetSettings()
	if FFlagStudioGameSettingsAccessPermissions then
		return self:GetSettings_New()
	else
		return self:GetSettings_Old()
	end
end

--[[
	Used to save the chosen state of all game settings by saving to web
	endpoints or setting properties in the datamodel.
]]
function SettingsImpl:SaveAll(state)
	if state.Changed.HttpEnabled ~= nil then
		HttpService:SetHttpEnabled(state.Changed.HttpEnabled)
	end
	WorkspaceSettings.saveAllWorldSettings(state.Changed)

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
				if "universeAvatarAssetOverrides" == setting then
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

			elseif Requests.GameIcon.AcceptsValue(setting) then
				saveInfo[setting] = value

			elseif DFFlagDeveloperSubscriptionsEnabled and Requests.DeveloperSubscriptions.AcceptsValue(setting) then
				saveInfo[setting] = {
					Current = state.Current.DeveloperSubscriptions,
					Changed = state.Changed.DeveloperSubscriptions,
				}
			elseif FFlagStudioGameSettingsAccessPermissions and Requests.GamePermissions.AcceptsValue(setting) then
				saveInfo[setting] = {
					Current = {permissions=state.Current.permissions, groupMetadata=state.Current.groupMetadata},
					Changed = {permissions=state.Changed.permissions, groupMetadata=state.Changed.groupMetadata or state.Current.groupMetadata},
				}
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

		table.insert(setRequests, Requests.Thumbnails.Set(universeId, saveInfo.thumbnails, saveInfo.thumbnailOrder))
		table.insert(setRequests, Requests.GameIcon.Set(universeId, saveInfo.gameIcon))

		if DFFlagDeveloperSubscriptionsEnabled then
			table.insert(setRequests, Requests.DeveloperSubscriptions.Set(universeId, saveInfo.DeveloperSubscriptions))
		end

		if FFlagStudioGameSettingsAccessPermissions and saveInfo.permissions then
			table.insert(setRequests, Requests.GamePermissions.Set(universeId, saveInfo.permissions))
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

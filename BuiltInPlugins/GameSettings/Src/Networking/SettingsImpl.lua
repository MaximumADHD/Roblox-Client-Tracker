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

local FFlagVersionControlServiceScriptCollabEnabled = settings():GetFFlag("VersionControlServiceScriptCollabEnabled")
local FFlagsEnableVersionHistorySetting = settings():GetFFlag("CollabEditVersionHistoryEnabled") and
	(settings():GetFFlag("StudioInternalScriptVersionHistorySetting") or settings():GetFFlag("StudioPlaceFilterScriptVersionHistorySetting"))
local DFFlagDeveloperSubscriptionsEnabled = settings():GetFFlag("DeveloperSubscriptionsEnabled")
local FFlagStudioLocalizationInGameSettingsEnabled = game:GetFastFlag("StudioLocalizationInGameSettingsEnabled")
local FFlagStudioAddMonetizationToGameSettings = game:GetFastFlag("StudioAddMonetizationToGameSettings")
local FFlagGameSettingsPlaceSettings = game:GetFastFlag("GameSettingsPlaceSettings")

local Plugin = script.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Cryo = require(Plugin.Cryo)

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
	ScriptCollabEnabled = FFlagVersionControlServiceScriptCollabEnabled and require(RequestsFolder.ScriptCollabEnabled) or nil,
	ScriptVersionHistoryEnabled = FFlagsEnableVersionHistorySetting and require(RequestsFolder.ScriptVersionHistoryEnabled) or nil,
	GamePermissions = require(RequestsFolder.GamePermissions),
	DeveloperSubscriptions = DFFlagDeveloperSubscriptionsEnabled and require(RequestsFolder.DevSubs.DeveloperSubscriptions) or nil,
	SupportedLanguages = FFlagStudioLocalizationInGameSettingsEnabled and
		require(Plugin.Src.Networking.Requests.LocalizationSettings.SupportedLanguages) or nil,
	AllLocales = FFlagStudioLocalizationInGameSettingsEnabled and
		require(Plugin.Src.Networking.Requests.LocalizationSettings.AllLocales) or nil,
	AutoTranslationFeatureStatus = FFlagStudioLocalizationInGameSettingsEnabled and
		require(Plugin.Src.Networking.Requests.LocalizationSettings.AutoTranslationFeatureStatus) or nil,
	SourceLanguage = FFlagStudioLocalizationInGameSettingsEnabled and
		require(RequestsFolder.LocalizationSettings.SourceLanguage) or nil,
	AutoLocalization = FFlagStudioLocalizationInGameSettingsEnabled and
		require(RequestsFolder.LocalizationSettings.AutoLocalization) or nil,
	AutoTranslationSettings = FFlagStudioLocalizationInGameSettingsEnabled and
		require(RequestsFolder.LocalizationSettings.AutoTranslationSettings) or nil,
	Places = FFlagGameSettingsPlaceSettings and require(RequestsFolder.Places) or nil,
	DeveloperProducts = FFlagStudioAddMonetizationToGameSettings and require(RequestsFolder.DeveloperProducts) or nil,
	Economy = FFlagStudioAddMonetizationToGameSettings and require(RequestsFolder.Economy) or nil,
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
	if not self:IsPublished() then
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
function SettingsImpl:GetSettings()
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
				local getRequests = {}

				settings = Cryo.Dictionary.join(settings, WorkspaceSettings.getAvatarSettings(settings))

				table.insert(getRequests, Requests.GamePermissions.Get(gameId, creatorName, creatorId, creatorType))

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
				}

				table.insert(getRequests, Requests.GamePermissions.Get(gameId, creatorName, creatorId, creatorType))

				table.insert(getRequests, Requests.RootPlaceInfo.Get(gameId))
				table.insert(getRequests, Requests.GameIcon.Get(gameId))

				if DFFlagDeveloperSubscriptionsEnabled then
					table.insert(getRequests, Requests.DeveloperSubscriptions.Get())
				end

				if FFlagVersionControlServiceScriptCollabEnabled then
					table.insert(getRequests, Requests.ScriptCollabEnabled.Get())
				end

				if FFlagStudioLocalizationInGameSettingsEnabled then
					table.insert(getRequests, Requests.SupportedLanguages.Get())
					table.insert(getRequests, Requests.AllLocales.Get())
					table.insert(getRequests, Requests.AutoTranslationFeatureStatus.Get(gameId))
					table.insert(getRequests, Requests.AutoLocalization.Get(gameId))
					table.insert(getRequests, Requests.AutoLocalization.Get(gameId))
					table.insert(getRequests, Requests.SourceLanguage.Get(gameId))
					table.insert(getRequests, Requests.AutoTranslationSettings.Get(gameId))
                end

				if FFlagsEnableVersionHistorySetting then
					table.insert(getRequests, Requests.ScriptVersionHistoryEnabled.Get())
				end

				if FFlagStudioAddMonetizationToGameSettings then
					table.insert(getRequests, Requests.Universes.GetVIPServers(gameId))
					table.insert(getRequests, Requests.DeveloperProducts.Get(gameId))
					table.insert(getRequests, Requests.Economy.GetTaxRate())
				end

				if FFlagGameSettingsPlaceSettings then
					table.insert(getRequests, Requests.Places.Get())
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

--[[
	Used to save the chosen state of all game settings by saving to web
	endpoints or setting properties in the datamodel.
]]
function SettingsImpl:SaveAll(state)
	local settings
	if FFlagGameSettingsPlaceSettings then
		settings = state.Settings
	else
		settings = state
	end
	if settings.Changed.HttpEnabled ~= nil then
		HttpService:SetHttpEnabled(settings.Changed.HttpEnabled)
	end
	WorkspaceSettings.saveAllWorldSettings(settings.Changed)

	return self:CanManagePlace():andThen(function(canManage)
		local saveInfo = {}

		for setting, value in pairs(settings.Changed) do
			if Requests.Configuration.AcceptsValue(setting) then
				saveInfo.Configuration = saveInfo.Configuration or {}
				if "universeAvatarAssetOverrides" == setting then
					saveInfo.Configuration[setting] = AssetOverrides.processSaveData(settings.Current[setting], value)
				else
					saveInfo.Configuration[setting] = value
				end

			elseif Requests.RootPlaceInfo.AcceptsValue(setting) then
				saveInfo.RootPlaceInfo = saveInfo.RootPlaceInfo or {}
				saveInfo.RootPlaceInfo[setting] = value

			elseif Requests.Thumbnails.AcceptsValue(setting) then
				if setting == "thumbnails" then
					saveInfo[setting] = {
						Current = settings.Current.thumbnails,
						Changed = settings.Changed.thumbnails,
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
					Current = settings.Current.DeveloperSubscriptions,
					Changed = settings.Changed.DeveloperSubscriptions,
				}
			elseif Requests.GamePermissions.AcceptsValue(setting) then
				saveInfo[setting] = {
					Current = {permissions=settings.Current.permissions, groupMetadata=settings.Current.groupMetadata},
					Changed = {permissions=settings.Changed.permissions, groupMetadata=settings.Changed.groupMetadata or settings.Current.groupMetadata},
				}
			elseif FFlagStudioLocalizationInGameSettingsEnabled then
				if Requests.SourceLanguage.AcceptsValue(setting) then
					saveInfo[setting] = value
				elseif Requests.AutoLocalization.AcceptsValue(setting) then
					saveInfo[setting] = value
				elseif Requests.AutoTranslationSettings.AcceptsValue(setting) then
					saveInfo[setting] = {
						Current = settings.Current.AutoTranslationSettings,
						Changed = settings.Changed.AutoTranslationSettings,
					}
				end
			end
			if FFlagGameSettingsPlaceSettings and Requests.Places.AcceptsValue(setting) then
				saveInfo.place = value[state.EditAsset.editPlaceId]
			end
		end

		if FFlagVersionControlServiceScriptCollabEnabled and settings.Changed.ScriptCollabEnabled ~= nil then
			saveInfo.ScriptCollabEnabled = settings.Changed.ScriptCollabEnabled
		end

		if FFlagsEnableVersionHistorySetting and settings.Changed.ScriptVersionHistoryEnabled ~= nil then
			saveInfo.ScriptVersionHistoryEnabled = settings.Changed.ScriptVersionHistoryEnabled
		end

		if FFlagStudioAddMonetizationToGameSettings then
			if settings.Changed.vipServersIsEnabled ~= nil then
				if not saveInfo.Configuration then
					saveInfo.Configuration = {}
				end
				saveInfo.Configuration.allowPrivateServers = settings.Changed.vipServersIsEnabled
			end

			if settings.Changed.vipServersPrice ~= nil then
				if not saveInfo.Configuration then
					saveInfo.Configuration = {}
				end
				saveInfo.Configuration.privateServerPrice = settings.Changed.vipServersPrice
			end
		end

		if FFlagStudioAddMonetizationToGameSettings and settings.Changed.unsavedDevProducts and next(settings.Changed.unsavedDevProducts) ~= nil then
			saveInfo.NewDevProducts = settings.Changed.unsavedDevProducts
		elseif FFlagStudioAddMonetizationToGameSettings and settings.Changed.developerProducts ~= nil then
			saveInfo.UpdateDevProducts = settings.Changed.developerProducts
		end

		WorkspaceSettings.saveAllAvatarSettings(saveInfo)
		local universeId = game.GameId

		if universeId == 0 or not canManage then
			return
		end

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

		if saveInfo.permissions then
			table.insert(setRequests, Requests.GamePermissions.Set(universeId, saveInfo.permissions))
		end

		if FFlagVersionControlServiceScriptCollabEnabled and saveInfo.ScriptCollabEnabled ~= nil then
			table.insert(setRequests, Requests.ScriptCollabEnabled.Set(saveInfo.ScriptCollabEnabled))
		end

		if FFlagStudioLocalizationInGameSettingsEnabled then
			if saveInfo.SourceLanguage ~= nil then
				table.insert(setRequests, Requests.SourceLanguage.Set(universeId, saveInfo.SourceLanguage))
			end
			if saveInfo.AutoTextCaptureEnabled ~= nil or saveInfo.UseTranslatedContentEnabled ~= nil then
				table.insert(setRequests, Requests.AutoLocalization.Set(universeId, {
					AutoTextCaptureEnabled = saveInfo.AutoTextCaptureEnabled,
					UseTranslatedContentEnabled = saveInfo.UseTranslatedContentEnabled,
				}))
			end
			if saveInfo.AutoTranslationSettings ~= nil then
				table.insert(setRequests, Requests.AutoTranslationSettings.Set(universeId, saveInfo.AutoTranslationSettings))
			end
        end

		if FFlagsEnableVersionHistorySetting and  saveInfo.ScriptVersionHistoryEnabled ~= nil then
			table.insert(setRequests, Requests.ScriptVersionHistoryEnabled.Set(saveInfo.ScriptVersionHistoryEnabled))
		end

		if FFlagStudioAddMonetizationToGameSettings and saveInfo.NewDevProducts then
			for _, product in pairs(saveInfo.NewDevProducts) do
				table.insert(setRequests, Requests.DeveloperProducts.Create(universeId, product))
			end
		end

		if FFlagStudioAddMonetizationToGameSettings and saveInfo.UpdateDevProducts then
			for _, devProduct in pairs(saveInfo.UpdateDevProducts) do
				table.insert(setRequests, Requests.DeveloperProducts.Update(universeId, devProduct.id, devProduct))
			end
		end

		if FFlagGameSettingsPlaceSettings then
			if saveInfo.place ~= nil then
				table.insert(setRequests, Requests.Places.Patch(state.EditAsset.editPlaceId, saveInfo.place))
			end
		end

		return Promise.all(setRequests):andThen(function()
			if saveInfo.Configuration and saveInfo.Configuration.name then
				StudioService:SetUniverseDisplayName(saveInfo.Configuration.name)
			end
		end)
	end)
end

return SettingsImpl

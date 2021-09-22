--[[
	Interface for changing ingame settings.

	Flow:
		SettingsImpl can be provided via a SettingsImplProvider, then
		used as an Interface by the SaveChanges and LoadAllSettings thunks
		to save and load settings. Other implementations, such as
		SettingsImpl_mock, can be provided to allow testing.
]]

local FFlagStudioAllowRemoteSaveBeforePublish = game:GetFastFlag("StudioAllowRemoteSaveBeforePublish")
local FFlagStudioPromptOnFirstPublish = game:GetFastFlag("StudioPromptOnFirstPublish")
local FFlagPublishPlaceAsUseDevFrameworkRobloxAPI2 = game:GetFastFlag("PublishPlaceAsUseDevFrameworkRobloxAPI2")

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Packages.Promise)

-- TODO: jbousellam - 8/16/21 - Remove with FFlagPublishPlaceAsUseDevFrameworkRobloxAPI2
local DEPRECATED_Configuration = require(Plugin.Src.Network.Requests.Configuration)
-- TODO: jbousellam - 8/16/21 - Remove with FFlagPublishPlaceAsUseDevFrameworkRobloxAPI2
local DEPRECATED_RootPlaceInfo = require(Plugin.Src.Network.Requests.RootPlaceInfo)
-- TODO: jbousellam - 8/16/21 - Remove with FFlagPublishPlaceAsUseDevFrameworkRobloxAPI2
local DEPRECATED_UniverseActivate = require(Plugin.Src.Network.Requests.UniverseActivate)
local PostContactEmail = require(Plugin.Src.Thunks.PostContactEmail)

local KeyProvider = require(Plugin.Src.Util.KeyProvider)
local optInLocationsKey = KeyProvider.getOptInLocationsKeyName()
local shouldShowDevPublishLocations = require(Plugin.Src.Util.PublishPlaceAsUtilities).shouldShowDevPublishLocations

local UNIVERSEACTIVATE_ACCEPTED_KEYS = {
	isActive = true,
}

local CONFIGURATION_ACCEPTED_KEYS = {
	description = true,
	genre = true,
	name = true,
	playableDevices = true,
}

if FFlagStudioAllowRemoteSaveBeforePublish then
	CONFIGURATION_ACCEPTED_KEYS.isFriendsOnly = true
end

if shouldShowDevPublishLocations() then
	CONFIGURATION_ACCEPTED_KEYS.OptInLocations = true
end

local function universeActivateAcceptsValue(key)
	return UNIVERSEACTIVATE_ACCEPTED_KEYS[key] ~= nil
end

local function configurationAcceptsValue(key)
	return CONFIGURATION_ACCEPTED_KEYS[key] ~= nil
end

local function parseErrorMessages(response, message)
	-- TODO: jbousellam - 8/20/2021 - Once we get updated error messages from the backend,
	-- this first message may be redundant, so we can consider removing it later.
	local error = message .. " HTTP " .. response.responseCode
	warn(error)
	for _, value in pairs(response.responseBody.errors) do
		warn(value.userFacingMessage)
	end
end

--[[
	Used to save the chosen state of all game settings by saving to web
	endpoints or setting properties in the datamodel.
]]
local function saveAll(state, localization, existingUniverseId, existingPlaceId, apiImpl, email)
	local configuration = {}
	local rootPlaceInfo = {}
	local universeActivate = {}

	if FFlagPublishPlaceAsUseDevFrameworkRobloxAPI2 then
		for setting, value in pairs(state) do
			-- Add name, genre, game description, and playable devices
			if configurationAcceptsValue(setting) then
				configuration[setting] = value
			-- Set if the game is public or private
			elseif universeActivateAcceptsValue(setting) then
				universeActivate[setting] = value
			end
		end
	else
		for setting, value in pairs(state) do
			-- Add name, genre, and playable devices
			if DEPRECATED_Configuration.AcceptsValue(setting) then
				configuration[setting] = value
			-- Add the game description
			elseif DEPRECATED_RootPlaceInfo.AcceptsValue(setting) then
				rootPlaceInfo[setting] = value
			-- Set if the game is public or private
			elseif DEPRECATED_UniverseActivate.AcceptsValue(setting) then
				universeActivate[setting] = value
			end
		end
	end

	if FFlagStudioPromptOnFirstPublish and existingUniverseId and existingPlaceId then
		StudioService:publishAs(existingUniverseId, existingPlaceId, state.creatorId)
	else
		StudioService:publishAs(0, 0, state.creatorId)
	end

	if FFlagPublishPlaceAsUseDevFrameworkRobloxAPI2 then
		local success, gameId = StudioService.GamePublishFinished:wait()
		-- Failure handled in ScreenCreateNewGame
		if not success then
			return
		end

		if configuration.playableDevices then
			local toTable = {}
			for key, value in pairs(configuration.playableDevices) do
				if value then
					table.insert(toTable, key)
				end
			end
			configuration.playableDevices = toTable
		end

		if shouldShowDevPublishLocations() and email ~= nil then
			local responseCode = PostContactEmail(apiImpl, email, gameId)
			if responseCode == 200 then
				assert(configuration.OptInLocations)
				local optInTable = {}
				local optOutTable = {}
				for key, value in pairs(configuration.OptInLocations) do
					if value then
						table.insert(optInTable, key)
					else
						table.insert(optOutTable, key)
					end
				end
				configuration.optInRegions = optInTable
				configuration.optOutRegions = optOutTable
			else
				warn(localization:getText(optInLocationsKey, "EmailSubmitFailure"))
			end
			configuration.OptInLocations = nil
		end

		apiImpl.Develop.V2.Universes.configuration(gameId, configuration):makeRequest()
		:andThen(function()
			StudioService:SetUniverseDisplayName(configuration.name)
			StudioService:SetDocumentDisplayName(configuration.name)
			StudioService:EmitPlacePublishedSignal()
		end, function(response)
			parseErrorMessages(response, localization:getText("Error","SetConfiguration"))
		end)

		if FFlagStudioAllowRemoteSaveBeforePublish then
			if universeActivate.isActive then
				apiImpl.Develop.V1.Universes.activate(gameId):makeRequest()
				:catch(function(response)
					parseErrorMessages(response, localization:getText("Error","ActivatingUniverse"))
				end)
			else
				apiImpl.Develop.V1.Universes.deactivate(gameId):makeRequest()
				:catch(function(response)
					parseErrorMessages(response, localization:getText("Error","DeactivatingUniverse"))
				end)
			end
		end
	else
		spawn(function()
			-- Failure handled in ScreenCreateNewGame
			local success, gameId = StudioService.GamePublishFinished:wait()
			if success then
				local setRequests
				if email ~= nil then
					local includeOptInLocations
					local responseCode = PostContactEmail(apiImpl, email, gameId)
					if responseCode == 200 then
						includeOptInLocations = true
					else
						warn(tostring(localization:getText(optInLocationsKey, "EmailSubmitFailure")))
						includeOptInLocations = false
					end
					setRequests = {
						DEPRECATED_Configuration.Set(gameId, configuration, includeOptInLocations),
						DEPRECATED_RootPlaceInfo.Set(gameId, rootPlaceInfo),
					}
				else
					setRequests = {
						DEPRECATED_Configuration.Set(gameId, configuration),
						DEPRECATED_RootPlaceInfo.Set(gameId, rootPlaceInfo),
					}
				end

				if FFlagStudioAllowRemoteSaveBeforePublish then
					table.insert(setRequests, DEPRECATED_UniverseActivate.Set(gameId, universeActivate))
				end
				Promise.all(setRequests):andThen(function()
					StudioService:SetUniverseDisplayName(configuration.name)
					StudioService:SetDocumentDisplayName(configuration.name)
					StudioService:EmitPlacePublishedSignal()
				end):catch(function(err)
					warn(tostring(localization:getText("PublishFail", "FailConfiguration")))
					warn(tostring(err))
				end)
			end
		end)
	end
end

return {
	saveAll = saveAll,
}

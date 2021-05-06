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

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Packages.Promise)

local Configuration = require(Plugin.Src.Network.Requests.Configuration)
local RootPlaceInfo = require(Plugin.Src.Network.Requests.RootPlaceInfo)
local UniverseActivate = require(Plugin.Src.Network.Requests.UniverseActivate)

--[[
	Used to save the chosen state of all game settings by saving to web
	endpoints or setting properties in the datamodel.
]]
local function saveAll(state, localization, existingUniverseId, existingPlaceId)
	local configuration = {}
	local rootPlaceInfo = {}
	local universeActivate = {}

	for setting, value in pairs(state) do
		-- Add name, genre, and playable devices
		if Configuration.AcceptsValue(setting) then
			configuration[setting] = value
		-- Add the game description
		elseif RootPlaceInfo.AcceptsValue(setting) then
			rootPlaceInfo[setting] = value
		-- Set if the game is public or private
		elseif UniverseActivate.AcceptsValue(setting) then
			universeActivate[setting] = value
		end
	end

	if FFlagStudioPromptOnFirstPublish and existingUniverseId and existingPlaceId then
		StudioService:publishAs(existingUniverseId, existingPlaceId, state.creatorId)
	else
		StudioService:publishAs(0, 0, state.creatorId)
	end

	spawn(function()
		-- Failure handled in ScreenCreateNewGame
		local success, gameId = StudioService.GamePublishFinished:wait()
		if success then
			local setRequests = {
				Configuration.Set(gameId, configuration),
				RootPlaceInfo.Set(gameId, rootPlaceInfo),
			}
			if FFlagStudioAllowRemoteSaveBeforePublish then
				table.insert(setRequests, UniverseActivate.Set(gameId, universeActivate))
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

return {
	saveAll = saveAll,
}

--[[
	Interface for changing ingame settings.

	Flow:
		SettingsImpl can be provided via a SettingsImplProvider, then
		used as an Interface by the SaveChanges and LoadAllSettings thunks
		to save and load settings. Other implementations, such as
		SettingsImpl_mock, can be provided to allow testing.
]]

local FFlagStudioAssetManagerUpdateGameName = game:GetFastFlag("StudioAssetManagerUpdateGameName")

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Packages.Promise)

local Configuration = require(Plugin.Src.Network.Requests.Configuration)
local RootPlaceInfo = require(Plugin.Src.Network.Requests.RootPlaceInfo)

--[[
	Used to save the chosen state of all game settings by saving to web
	endpoints or setting properties in the datamodel.
]]
local function saveAll(state, localization)
	local configuration = {}
	local rootPlaceInfo = {}

	for setting, value in pairs(state) do
		-- Add name, genre, and playable devices
		if Configuration.AcceptsValue(setting) then
			configuration[setting] = value
		-- Add the game description
		elseif RootPlaceInfo.AcceptsValue(setting) then
			rootPlaceInfo[setting] = value
		end
	end

	StudioService:publishAs(0, 0, state.creatorId)

	spawn(function()
		-- Failure handled in ScreenCreateNewGame
		local success, gameId = StudioService.GamePublishFinished:wait()
		if success then
			local setRequests = {
				Configuration.Set(gameId, configuration),
				RootPlaceInfo.Set(gameId, rootPlaceInfo),
			}
			Promise.all(setRequests):andThen(function()
				StudioService:SetUniverseDisplayName(configuration.name)
				if FFlagStudioAssetManagerUpdateGameName then
					StudioService:SetDocumentDisplayName(configuration.name)
				end
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

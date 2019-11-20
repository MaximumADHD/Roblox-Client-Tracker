--[[
	Get request for universe active status, as well as creator info.
]]

-- TODO (awarwick) 4/29/2019 Remove with FFlagStudioGameSettingsUseNewSettingsImpl2
local DEPRECATED_RELEVANT_ENTRIES = {
	isActive = true,
	privacyType = true,
	creatorType = true,
	creatorName = true,
}

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)
local Analytics = require(Plugin.Src.Util.Analytics)

-- TODO (awarwick) 4/29/2019 Remove with FFlagStudioGameSettingsUseNewSettingsImpl2
local DEPRECATED_extractRelevantEntries = require(Plugin.Src.Util.extractRelevantEntries)

local UNIVERSES_REQUEST_URL = "v1/universes/%d"
local UNIVERSES_REQUEST_TYPE = "develop"

local ACTIVATE_REQUEST_URL = "v1/universes/%d/activate"
local ACTIVATE_REQUEST_TYPE = "develop"

local DEACTIVATE_REQUEST_URL = "v1/universes/%d/deactivate"
local DEACTIVATE_REQUEST_TYPE = "develop"

local USERS_URL = "users/%d"
local USERS_REQUEST_TYPE = "api"

local Universes = {}

function Universes.AcceptsValue(key)
	return key == "isActive"
end

function Universes.Get(universeId, studioUserId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(UNIVERSES_REQUEST_TYPE, UNIVERSES_REQUEST_URL, universeId),
		Method = "GET",
	}

	if universeId == 0 and settings():GetFFlag("StudioGameSettingsUseNewSettingsImpl2") then
		local studioUsernameRequestInfo = {
			Url = Http.BuildRobloxUrl(USERS_REQUEST_TYPE, USERS_URL, studioUserId),
			Method = "GET",
		}

		return Http.Request(studioUsernameRequestInfo):andThen(function(jsonResult)
			local result = HttpService:JSONDecode(jsonResult)

			return {
				isActive = nil,
				privacyType = nil,
				creatorType = Enum.CreatorType.User,
				creatorId = studioUserId,
				creatorName = result.Username,
			}
		end)
	end

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		
		if settings():GetFFlag("StudioGameSettingsUseNewSettingsImpl2") then
			return {
				isActive = result.isActive,
				privacyType = result.privacyType,
				creatorType = Enum.CreatorType[result.creatorType],
				creatorName = result.creatorName,
				creatorId = result.creatorTargetId,
			}
		else
			return DEPRECATED_extractRelevantEntries(result, DEPRECATED_RELEVANT_ENTRIES)
		end
	end)
	:catch(function()
		warn("Game Settings: Could not load settings from universes.")
		Analytics.onLoadError("Universes")
		return Promise.reject()
	end)
end

function Universes.Set(universeId, isActive)
	if isActive == nil then
		return Promise.resolve()
	end

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
		Analytics.onSaveError("UniverseActive")
		return Promise.reject()
	end)
end

return Universes
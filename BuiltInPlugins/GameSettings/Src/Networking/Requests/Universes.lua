--[[
	Get request for universe active status, as well as creator info.
]]
local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)
local Analytics = require(Plugin.Src.Util.Analytics)

local UNIVERSES_REQUEST_URL = "v1/universes/%d"
local UNIVERSES_REQUEST_TYPE = "develop"

local ACTIVATE_REQUEST_URL = "v1/universes/%d/activate"
local ACTIVATE_REQUEST_TYPE = "develop"

local DEACTIVATE_REQUEST_URL = "v1/universes/%d/deactivate"
local DEACTIVATE_REQUEST_TYPE = "develop"

local USERS_URL = "users/%d"
local USERS_REQUEST_TYPE = "api"

local VIP_SERVERS_REQUEST_URL = "v1/universes/%d/configuration/vip-servers"
local VIP_SERVERS_REQUEST_TYPE = "develop"

local Universes = {}

function Universes.AcceptsValue(key)
	return key == "isActive"
end

function Universes.Get(universeId, studioUserId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(UNIVERSES_REQUEST_TYPE, UNIVERSES_REQUEST_URL, universeId),
		Method = "GET",
	}

	if universeId == 0 then
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

        return {
            isActive = result.isActive,
            privacyType = result.privacyType,
            creatorType = Enum.CreatorType[result.creatorType],
            creatorName = result.creatorName,
			creatorId = result.creatorTargetId,
			rootPlaceId = result.rootPlaceId,
        }
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

function Universes.GetVIPServers(universeId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(VIP_SERVERS_REQUEST_TYPE, VIP_SERVERS_REQUEST_URL, universeId),
		Method = "GET",
	}

	return Http.Request(requestInfo)
	:andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)

		return {
			vipServersIsEnabled = result.isEnabled,
			vipServersPrice = result.price,
			vipServersActiveServersCount = result.activeServersCount,
			vipServersActiveSubscriptionsCount = result.activeSubscriptionsCount,
		}
	end)
	:catch(function()
		warn("Game Settings: Could not load VIP Servers settings from universes.")
		Analytics.onLoadError("VIPServersGet")
		return Promise.reject()
	end)
end

return Universes
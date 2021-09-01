--[[
	Get and set requests for settings values contained in universes/configuration.

	Copied from GameSettings. Ideally we could reuse that code
]]

-- TODO: jbousellam - 8/20/21 - Remove this file with FFlagPublishPlaceAsUseDevFrameworkRobloxAPI

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Http = require(Plugin.Src.Network.Http)

local FFlagStudioAllowRemoteSaveBeforePublish = game:GetFastFlag("StudioAllowRemoteSaveBeforePublish")
local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")
local shouldShowDevPublishLocations = require(Plugin.Src.Util.PublishPlaceAsUtilities).shouldShowDevPublishLocations

local REQUEST_URL = "v2/universes/%d/configuration"
local REQUEST_TYPE = "develop"

local ACCEPTED_KEYS = {
	name = true,
	genre = true,
	playableDevices = true,
}

if FFlagStudioAllowRemoteSaveBeforePublish then
	ACCEPTED_KEYS.isFriendsOnly = true
end

if FFlagLuobuDevPublishLua and shouldShowDevPublishLocations() then
	ACCEPTED_KEYS.OptInLocations = true
end

local DEPRECATED_Configuration = {}

function DEPRECATED_Configuration.AcceptsValue(key)
	return ACCEPTED_KEYS[key] ~= nil
end

function DEPRECATED_Configuration.Set(universeId, body, includeOptInLocations)
	local errmsg = "Configuration.Set body must be table, received %s"
	assert(type(body) == "table", string.format(errmsg, type(body)))
	assert(not Cryo.isEmpty(body),  "Configuration.Set body must have changes to set")

	if body.playableDevices then
		local toTable = {}
		for key, value in pairs(body.playableDevices) do
			if value then
				table.insert(toTable, key)
			end
		end
		body.playableDevices = toTable
	end

	if FFlagLuobuDevPublishLua and shouldShowDevPublishLocations() and includeOptInLocations then
		if body.OptInLocations then
			local optInTable = {}
			local optOutTable = {}
			for key, value in pairs(body.OptInLocations) do
				if value then
					table.insert(optInTable, key)
				else
					table.insert(optOutTable, key)
				end
			end
			body.optInRegions = optInTable
			body.optOutRegions = optOutTable
			body.OptInLocations = nil
		end
	end

	local requestInfo = {
		Url = Http.BuildRobloxUrl(REQUEST_TYPE, REQUEST_URL, universeId),
		Method = "PATCH",
		Body = HttpService:JSONEncode(body),
	}
	return Http.Request(requestInfo)
end

function DEPRECATED_Configuration.Get(universeId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(REQUEST_TYPE, REQUEST_URL, universeId),
		Method = "GET",
	}
	return Http.Request(requestInfo):andThen(function(jsonResult)
		return HttpService:JSONDecode(jsonResult)
	end)
end

return DEPRECATED_Configuration

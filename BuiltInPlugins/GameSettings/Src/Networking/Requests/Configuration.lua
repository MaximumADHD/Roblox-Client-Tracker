--[[
	Get and set requests for settings values contained in universes/configuration.
]]

local RELEVANT_ENTRIES = {
	universeAvatarType = true,
	universeScaleType = true,
	universeAnimationType = true,
	universeCollisionType = true,
	playableDevices = true,
	isFriendsOnly = true,
	name = true,
}

local PLAYABLE_DEVICES = {
	Computer = false,
	Phone = false,
	Tablet = false,
	Console = false,
}

local FFlagGameSettingsAnalyticsEnabled = settings():GetFFlag("GameSettingsAnalyticsEnabled")
local FFlagStudioLuaGameSettingsDialog3 = settings():GetFFlag("StudioLuaGameSettingsDialog3")

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Cryo = require(Plugin.Cryo)
local Http = require(Plugin.Src.Networking.Http)
local Analytics = require(Plugin.Src.Util.Analytics)
local fastFlags = require(Plugin.Src.Util.FastFlags)
local extractRelevantEntries = require(Plugin.Src.Util.extractRelevantEntries)
local isEmpty = require(Plugin.Src.Util.isEmpty)

if fastFlags.isMorphingHumanoidDescriptionSystemOn() then
	RELEVANT_ENTRIES = Cryo.Dictionary.join(RELEVANT_ENTRIES, {
		universeAvatarAssetOverrides = true,
		universeAvatarMinScales = true,
		universeAvatarMaxScales = true,
	})
end

if FFlagStudioLuaGameSettingsDialog3 then
	RELEVANT_ENTRIES = Cryo.Dictionary.join(RELEVANT_ENTRIES, {
		genre = true,
	})
end

local REQUEST_URL = "v2/universes/%d/configuration"
local REQUEST_TYPE = "develop"

local Configuration = {}

function Configuration.AcceptsValue(key)
	return RELEVANT_ENTRIES[key]
end

function Configuration.Get(universeId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(REQUEST_TYPE, REQUEST_URL, universeId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		local values = extractRelevantEntries(result, RELEVANT_ENTRIES)
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
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onLoadError("UniverseConfiguration")
			return Promise.reject()
		else
			return Promise.resolve({})
		end
	end)
end

function Configuration.Set(universeId, body)
	if body == nil or isEmpty(body) then
		return Promise.resolve()
	end

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
		Url = Http.BuildRobloxUrl(REQUEST_TYPE, REQUEST_URL, universeId),
		Method = "PATCH",
		Body = HttpService:JSONEncode(body),
	}

	return Http.Request(requestInfo)
	:catch(function(err)
		warn("Game Settings: Could not save universe configuration settings.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onSaveError("UniverseConfiguration")
		end
		if string.find(err, "HTTP 400") then
			local errors = {}
			if body.name then
				errors.name = "Moderated"
			end
			return Promise.reject(errors)
		elseif not FFlagGameSettingsAnalyticsEnabled then
			return Promise.resolve()
		end
	end)
end

return Configuration
--[[
	Get and set requests for settings values contained in universes/configuration.

	Copied from GameSettings. Ideally we could reuse that code
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Http = require(Plugin.Src.Network.Http)

local REQUEST_URL = "v2/universes/%d/configuration"
local REQUEST_TYPE = "develop"

local ACCEPTED_KEYS = {
	name = true,
	genre = true,
	playableDevices = true,
}

local Configuration = {}

function Configuration.AcceptsValue(key)
	return ACCEPTED_KEYS[key] ~= nil
end

function Configuration.Set(universeId, body)
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

	local requestInfo = {
		Url = Http.BuildRobloxUrl(REQUEST_TYPE, REQUEST_URL, universeId),
		Method = "PATCH",
		Body = HttpService:JSONEncode(body),
	}
	return Http.Request(requestInfo)
end

return Configuration

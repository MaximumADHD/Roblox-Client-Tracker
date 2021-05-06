--[[
	Requests used to activate (make public) or deactivate (make private) a remote place.
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Http = require(Plugin.Src.Network.Http)

local FFlagStudioAllowRemoteSaveBeforePublish = game:GetFastFlag("StudioAllowRemoteSaveBeforePublish")

local REQUEST_TYPE = "develop"
local ACTIVATE_URL = "v1/universes/%d/activate"
local DEACTIVATE_URL = "v1/universes/%d/deactivate"

local ACCEPTED_KEYS = {
	isActive = true,
}

local UniverseActivate = {}

function UniverseActivate.AcceptsValue(key)
	return ACCEPTED_KEYS[key] ~= nil
end

function UniverseActivate.Set(universeId, body)
    assert(FFlagStudioAllowRemoteSaveBeforePublish)
	local errmsg = "Configuration.Set body must be table, received %s"
	assert(type(body) == "table", string.format(errmsg, type(body)))
	assert(body.isActive ~= nil,  "UniverseActivate.Set body must have 'isActive'")

    local requestUrl
    if body.isActive then
        requestUrl = ACTIVATE_URL
    else
        requestUrl = DEACTIVATE_URL
    end

	local requestInfo = {
		Url = Http.BuildRobloxUrl(REQUEST_TYPE, requestUrl, universeId),
		Method = "POST",
		Body = "{}",
	}
	return Http.Request(requestInfo)
end

return UniverseActivate

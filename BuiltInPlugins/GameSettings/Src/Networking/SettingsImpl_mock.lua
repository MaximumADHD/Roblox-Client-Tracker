--[[
	Mock interface for changing ingame settings.
	Used for testing. Doesn't do anything beyond that.
]]

local Plugin = script.Parent.Parent.Parent
local Promise = require(Plugin.Promise)

local SettingsImpl_mock = {}

SettingsImpl_mock.__index = SettingsImpl_mock

function SettingsImpl_mock.new()
	local self = setmetatable({}, SettingsImpl_mock)
	return self
end

function SettingsImpl_mock:GetUserId()
	return 0
end

function SettingsImpl_mock:GetSettings()
	return Promise.resolve({})
end

function SettingsImpl_mock:SaveAll()
	return Promise.resolve()
end

return SettingsImpl_mock
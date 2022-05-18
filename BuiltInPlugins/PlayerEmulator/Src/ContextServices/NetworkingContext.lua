--[[
	Context 2 version for accessing Roblox APIs
]]

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local ContextItem = Framework.ContextServices.ContextItem

local RobloxAPI = ContextItem:extend("RobloxAPI")

function RobloxAPI.new(networkImpl)
	local self = {
		networking = networkImpl,
	}

	setmetatable(self, RobloxAPI)
	return self
end

function RobloxAPI:get()
	return self.networking
end

return RobloxAPI

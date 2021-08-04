--[[
	Context 2 version for accessing Roblox APIs
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextItem = require(Plugin.Packages.Framework).ContextServices.ContextItem
local Provider = require(Plugin.Packages.Framework).ContextServices.Provider

local RobloxAPI = ContextItem:extend("RobloxAPI")

function RobloxAPI.new(networkImpl)
	local self = {
		networking = networkImpl,
	}

	setmetatable(self, RobloxAPI)
	return self
end

function RobloxAPI:createProvider(root)
	return Roact.createElement(Provider, {
		ContextItem = self,
	}, {root})
end

function RobloxAPI:get()
	return self.networking
end

return RobloxAPI

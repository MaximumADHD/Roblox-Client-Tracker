--[[
	Context 2 version for accessing Roblox APIs
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextItem = require(Plugin.Packages.Framework).ContextServices.ContextItem
-- TODO: When FFlagDevFrameworkUseCreateContext is retired remove this require
local Provider = require(Plugin.Packages.Framework).ContextServices.Provider

local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")

local RobloxAPI = ContextItem:extend("RobloxAPI")

function RobloxAPI.new(apiObj)
	local self = {
		api = apiObj,
	}

	setmetatable(self, RobloxAPI)
	return self
end


if not FFlagDevFrameworkUseCreateContext then
	function RobloxAPI:createProvider(root)
		return Roact.createElement(Provider, {
			ContextItem = self,
		}, {root})
	end
end

function RobloxAPI:get()
	return self.api
end

return RobloxAPI

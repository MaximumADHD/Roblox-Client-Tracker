--[[
	Context 2 version for accessing Roblox APIs
]]

local Plugin = script.Parent.Parent.Parent
local ContextItem = require(Plugin.Packages.Framework).ContextServices.ContextItem

local RobloxAPI = ContextItem:extend("RobloxAPI")

function RobloxAPI.new(apiObj)
	local self = {
		api = apiObj,
	}

	setmetatable(self, RobloxAPI)
	return self
end

function RobloxAPI:get()
	return self.api
end

return RobloxAPI

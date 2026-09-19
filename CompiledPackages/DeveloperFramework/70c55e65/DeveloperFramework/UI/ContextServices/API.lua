--[[
	A ContextItem that supplies a networking implementation of Roblox APIs using
	ContextServices.provide.

	Optional Props:
		table apiProps: a map of arguments to pass to a RobloxAPI object. See DevFramework.RobloxAPI docs for list of accepted props.
]]

local Framework = script:FindFirstAncestor("UI").Parent
local ContextItem = require(Framework.UI.ContextServices.ContextItem)
local RobloxAPI = require(Framework.RobloxAPI)

local API = ContextItem:extend("API")

function API.new(apiProps)
	if apiProps then
		assert(type(apiProps) == "table", "Expected a table of props to pass to a RobloxAPI instance")
	end

	local self = {
		api = RobloxAPI.new(apiProps),
	}
	setmetatable(self, API)
	return self
end

function API:get()
	return self.api
end

return API

--[[
	Context 2 version for analytics util
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextItem = require(Plugin.Packages.Framework).ContextServices.ContextItem
local Provider = require(Plugin.Packages.Framework).ContextServices.Provider

local Analytics = ContextItem:extend("Analytics")

function Analytics.new(analyticsImpl)
	assert(analyticsImpl, "Analytics.new expects analyticsImpl.")
	local self = {
		analyticsImpl = analyticsImpl,
	}

	setmetatable(self, Analytics)
	return self
end

function Analytics:createProvider(root)
	return Roact.createElement(Provider, {
		ContextItem = self,
	}, {root})
end

function Analytics:get()
	return self.analyticsImpl
end

return Analytics

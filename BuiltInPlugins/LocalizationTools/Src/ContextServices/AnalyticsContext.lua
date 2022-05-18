--[[
	Context 2 version for analytics util
]]

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local ContextItem = Framework.ContextServices.ContextItem

local Analytics = ContextItem:extend("Analytics")

function Analytics.new(analyticsImpl)
	assert(analyticsImpl, "Analytics.new expects analyticsImpl.")
	local self = {
		analyticsImpl = analyticsImpl,
	}

	setmetatable(self, Analytics)
	return self
end

function Analytics:get()
	return self.analyticsImpl
end

return Analytics

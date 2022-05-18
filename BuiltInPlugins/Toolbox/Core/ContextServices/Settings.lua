local Plugin = script.Parent.Parent.Parent
local Packages = Plugin.Packages
local ContextItem = require(Packages.Framework).ContextServices.ContextItem

local Settings = ContextItem:extend("Settings")

function Settings.new(settings)
	local self = {
		settings = settings,
	}

	setmetatable(self, Settings)
	return self
end

function Settings:get()
	return self.settings
end

return Settings

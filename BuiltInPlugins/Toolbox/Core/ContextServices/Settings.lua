local Plugin = script.Parent.Parent.Parent
local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)
local ContextItem = require(Libs.Framework).ContextServices.ContextItem
local Provider = require(Libs.Framework).ContextServices.Provider

local Settings = ContextItem:extend("Settings")

function Settings.new(settings)
	local self = {
		settings = settings,
	}

	setmetatable(self, Settings)
	return self
end

function Settings:createProvider(root)
	return Roact.createElement(Provider, {
		ContextItem = self,
	}, {root})
end

function Settings:get()
	return self.settings
end

return Settings

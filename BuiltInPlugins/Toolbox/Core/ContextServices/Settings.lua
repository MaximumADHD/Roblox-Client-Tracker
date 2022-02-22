local Plugin = script.Parent.Parent.Parent
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local ContextItem = require(Packages.Framework).ContextServices.ContextItem
-- TODO: When FFlagDevFrameworkUseCreateContext is retired remove this require
local Provider = require(Packages.Framework).ContextServices.Provider

local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")

local Settings = ContextItem:extend("Settings")

function Settings.new(settings)
	local self = {
		settings = settings,
	}

	setmetatable(self, Settings)
	return self
end

if not FFlagDevFrameworkUseCreateContext then
	function Settings:createProvider(root)
		return Roact.createElement(Provider, {
			ContextItem = self,
		}, { root })
	end
end

function Settings:get()
	return self.settings
end

return Settings

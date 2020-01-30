local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextItem = require(Plugin.Packages.Framework.ContextServices.ContextItem)
local Provider = require(Plugin.Packages.Framework.ContextServices.Provider)

local Navigation = ContextItem:extend("Navigation")

function Navigation.new(navigation)
	local self = {
		navigation = navigation,
	}

	setmetatable(self, Navigation)
	return self
end

function Navigation:createProvider(root)
	return Roact.createElement(Provider, {
		ContextItem = self,
	}, {root})
end

function Navigation:get()
	return self.navigation
end

return Navigation
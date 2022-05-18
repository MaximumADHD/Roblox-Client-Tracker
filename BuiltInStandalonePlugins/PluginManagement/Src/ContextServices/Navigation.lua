local Plugin = script.Parent.Parent.Parent
local ContextItem = require(Plugin.Packages.Framework).ContextServices.ContextItem

local Navigation = ContextItem:extend("Navigation")

function Navigation.new(navigation)
	local self = {
		navigation = navigation,
	}

	setmetatable(self, Navigation)
	return self
end

function Navigation:get()
	return self.navigation
end

return Navigation

--[[
    Wraps components in a ContextItem, so that all children can access RoactNavigation's "navigation" prop.
]]
local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local Navigation = require(Plugin.Src.ContextServices.Navigation)

local NavigatableView = Roact.Component:extend("NavigatableView")

function NavigatableView:init()
	self.navigation = Navigation.new({
		navigation = self.props.navigation,
	})
end

function NavigatableView:render()
	return ContextServices.provide({
		self.navigation,
	}, {
        self.props[Roact.Children],
	})
end

return NavigatableView

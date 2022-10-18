local Main = script.Parent.Parent
local Roact = require(Main.Packages.Roact)
local Framework = require(Main.Packages.Framework)
local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin
local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
	self.onClose = function() end

	self.onRestore = function(enabled) end

	self.mouse = self.props.plugin:GetMouse()
end

function MainPlugin:render()
	local props = self.props
	local plugin = props.plugin

	return ContextServices.provide({
		Plugin.new(plugin),
	}, {

		MainWidget = Roact.createElement(DockWidget, {
			Enabled = false,
			Title = plugin.Name,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Float,
			Size = Vector2.new(640, 480),
			MinSize = Vector2.new(250, 200),
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
		}),
	})
end

return MainPlugin

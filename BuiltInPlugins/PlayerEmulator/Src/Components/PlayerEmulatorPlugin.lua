local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local StudioUI = require(Plugin.Packages.Framework.StudioUI)
local PluginButton = StudioUI.PluginButton
local PluginToolbar = StudioUI.PluginToolbar
local DockWidget = StudioUI.DockWidget

local MainView = require(Plugin.Src.Components.MainView)

local globals = require(Plugin.Src.Util.CreatePluginGlobals)

local PlayerEmulatorPlugin = Roact.PureComponent:extend("PlayerEmulatorPlugin")

function PlayerEmulatorPlugin:renderButton(toolbar, icon)
	local enabled = self.state.enabled

	return {
		Button = Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = enabled,
			Title = "luaPlayerEmulatorButton",
			Icon = icon,
			OnClick = self.toggleEnabled,
		}),
	}
end

function PlayerEmulatorPlugin:init()
	self.state = {
		enabled = true,
	}

	self.toggleEnabled = function()
		self:setState({
			enabled = not self.state.enabled,
		})
	end

	self.onClose = function()
		self:setState({
			enabled = false,
		})
	end

	self.onAncestryChanged = function(_, _, parent)
		if not parent and self.props.onPluginWillDestroy then
			self.props.onPluginWillDestroy()
		end
	end
end

function PlayerEmulatorPlugin:render()
	local state = self.state
	local props = self.props

	local enabled = state.enabled
	local plugin = props.plugin
	local theme = globals.theme:get("Plugin")

	return ContextServices.provide({
		ContextServices.Plugin.new(plugin),
	}, {
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = "luaPlayerEmulatorToolbar",
			RenderButtons = function(toolbar)
				return self:renderButton(toolbar, theme.TOOLBAR_ICON_PATH)
			end,
		}),
		MainWidget = Roact.createElement(DockWidget, {
			Enabled = enabled,
			Title = globals.localization:getText("Meta", "PluginTitle"),
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Left,
			Size = theme.PLUGIN_WINDOW_SIZE,
			MinSize = theme.PLUGIN_WINDOW_SIZE_MIN,
			OnClose = self.onClose,
			ShouldRestore = false,
		}, {
			MainProvider = enabled and ContextServices.provide({
				globals.localization,
				globals.theme,
				globals.uiLibraryWrapper,
				globals.store,
				globals.networking,
			}, {
				MainView = Roact.createElement(MainView)
			})
		})
	})
end

return PlayerEmulatorPlugin


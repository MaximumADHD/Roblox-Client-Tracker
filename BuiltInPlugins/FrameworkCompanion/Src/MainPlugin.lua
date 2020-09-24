--!nolint LocalUnused
--^ DEVTOOLS-4490

--[[
	The main plugin for the DevFramework Companion.
	Consists of the PluginWidget, Toolbar, Button, and Roact tree.
]]
local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)

local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local ContextServices = require(Plugin.Packages.Framework).ContextServices

local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget
local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton
local PluginActions = ContextServices.PluginActions
local Mouse = ContextServices.Mouse
local Store = ContextServices.Store
local MakeTheme = require(Plugin.Src.Resources.MakeTheme)

local ComponentList = require(Plugin.Src.Components.ComponentList)
local InfoPanel = require(Plugin.Src.Components.InfoPanel)
local Footer = require(Plugin.Src.Components.Footer)

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
	self.state = {
		enabled = false,
	}

	self.toggleState = function()
		local state = self.state
		local enabled = state.enabled
		self:setState({
			enabled = not enabled,
		})
	end

	self.onClose = function()
		self:setState({
			enabled = false,
		})
	end

	self.onRestore = function(enabled)
		self:setState({
			enabled = enabled,
		})
	end

	self.store = Rodux.Store.new(MainReducer, {}, {
		Rodux.thunkMiddleware,
	})

	self.contextItems = {
		Mouse.new(props.Plugin:getMouse()),
		MakeTheme(),
		PluginActions.new(
			props.Plugin,
			{
				{
					id = "rerunLastStory",
					text = "Re-open last story and run its tests"
				}
			}
		),
		Store.new(self.store),
	}
end

function MainPlugin:renderButtons(toolbar)
	local enabled = self.state.enabled

	return {
		Toggle = Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = enabled,
			Title = "DevFramework Companion",
			Icon = "rbxasset://textures/GameSettings/ToolbarIcon.png",
			OnClick = self.toggleState,
		}),
	}
end

function MainPlugin:render()
	local props = self.props
	local state = self.state
	local plugin = props.Plugin
	local enabled = state.enabled

	return ContextServices.provide({
		ContextServices.Plugin.new(plugin),
	}, {
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = "DevFramework",
			RenderButtons = function(toolbar)
				return self:renderButtons(toolbar)
			end,
		}),

		MainWidget = Roact.createElement(DockWidget, {
			Enabled = enabled,
			Title = plugin.Name,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Float,
			Size = Vector2.new(640, 480),
			MinSize = Vector2.new(250, 200),
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
		}, {
			MainProvider = ContextServices.provide(self.contextItems, {
				ComponentList = Roact.createElement(ComponentList),
				InfoPanel = Roact.createElement(InfoPanel),
				Footer = Roact.createElement(Footer),
			}),
		}),
	})
end

return MainPlugin

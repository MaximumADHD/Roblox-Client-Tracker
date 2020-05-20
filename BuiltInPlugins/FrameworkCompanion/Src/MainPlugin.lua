--[[
	The main plugin for the DevFramework Companion.
	Consists of the PluginWidget, Toolbar, Button, and Roact tree.
]]

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)
local Rodux = require(main.Packages.Rodux)

local MainReducer = require(main.Src.Reducers.MainReducer)

local ContextServices = require(main.Packages.Framework.ContextServices)
local StudioUI = require(main.Packages.Framework.StudioUI)
local DockWidget = StudioUI.DockWidget
local Localization = ContextServices.Localization
local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton
local Plugin = ContextServices.Plugin
local PluginActions = ContextServices.PluginActions
local Mouse = ContextServices.Mouse
local Store = ContextServices.Store
local MakeTheme = require(main.Src.Resources.MakeTheme)

local ComponentList = require(main.Src.Components.ComponentList)
local InfoPanel = require(main.Src.Components.InfoPanel)
local Footer = require(main.Src.Components.Footer)

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
		Plugin.new(plugin),
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
			MainProvider = enabled and ContextServices.provide({
				Mouse.new(plugin:getMouse()),
				MakeTheme(),
				PluginActions.new(
					plugin,
					{
						{
							id = "rerunLastStory",
							text = "Re-open last story and run its tests"
						}
					}
				),
				Store.new(self.store),
			}, {
				ComponentList = Roact.createElement(ComponentList),
				InfoPanel = Roact.createElement(InfoPanel),
				Footer = Roact.createElement(Footer),
			}),
		}),
	})
end

return MainPlugin

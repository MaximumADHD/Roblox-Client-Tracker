--[[
	The main plugin component.
	Consists of the PluginWidget, Toolbar, Button, and Roact tree.
]]

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)
local Rodux = require(main.Packages.Rodux)

local MainReducer = require(main.Src.Reducers.MainReducer)

local ContextServices = require(main.Packages.Framework.ContextServices)
local StudioUI = require(main.Packages.Framework.StudioUI)
local DockWidget = StudioUI.DockWidget
local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton
local Plugin = ContextServices.Plugin
local Mouse = ContextServices.Mouse
local Store = ContextServices.Store
local MakeTheme = require(main.Src.Resources.MakeTheme)

local TranslationDevelopmentTable = main.Src.Resources.Localization.TranslationDevelopmentTable
local TranslationReferenceTable = main.Src.Resources.Localization.TranslationReferenceTable

local EventEmulator = require(main.Src.Components.EventEmulator)

Roact.setGlobalConfig({
	typeChecks = true,
	propValidation = true,
	elementTracing = true,
})

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

	self.localization = ContextServices.Localization.new({
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
		pluginName = "EventEmulator",
	})
end

function MainPlugin:renderButtons(toolbar)
	local enabled = self.state.enabled

	return {
		Toggle = Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = enabled,
			Title = self.localization:getText("Plugin", "Button"),
			Tooltip = self.localization:getText("Plugin", "Description"),
			Icon = "rbxasset://textures/GameSettings/ToolbarIcon.png",
			OnClick = self.toggleState,
			ClickableWhenViewportHidden = true,
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
			Title = self.localization:getText("Plugin", "Toolbar"),
			RenderButtons = function(toolbar)
				return self:renderButtons(toolbar)
			end,
		}),

		MainWidget = Roact.createElement(DockWidget, {
			Enabled = enabled,
			Title = self.localization:getText("Plugin", "Name"),
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Left,
			Size = Vector2.new(310, 225),
			MinSize = Vector2.new(310, 225),
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
		}, {
			MainProvider = enabled and ContextServices.provide({
				Mouse.new(plugin:getMouse()),
				MakeTheme(),
				Store.new(self.store),
			}, {
				-- Plugin contents are mounted here
				EventEmulator = Roact.createElement(EventEmulator),
			}),
		}),
	})
end

return MainPlugin

--[[
	The main plugin component.

	Consists of the PluginToolbar, DockWidget, and MainView.
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local Localization = ContextServices.Localization
local Mouse = ContextServices.Mouse
local Store = ContextServices.Store
local Theme = ContextServices.Theme

local StudioUI = require(Plugin.Packages.Framework.StudioUI)
local DockWidget = StudioUI.DockWidget
local PluginButton = StudioUI.PluginButton
local PluginToolbar = StudioUI.PluginToolbar

local MainView = require(Plugin.Src.Components.MainView)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local MakeTheme = require(Plugin.Src.Resources.MakeTheme)

local EnglishStringsTable = Plugin.Src.Resources.Localization.EnglishStrings
local TranslatedStringsTable = Plugin.Src.Resources.Localization.TranslatedStrings

local TOOLBAR_BUTTON_ICON = "rbxasset://textures/AnimationEditor/button_zoom_hoverpressed_left@2x.png"
local INITIAL_WINDOW_SIZE = Vector2.new(300, 220)
local MINIMUM_WINDOW_SIZE = Vector2.new(150, 200)

local AlignmentToolPlugin = Roact.PureComponent:extend("AlignmentToolPlugin")

function AlignmentToolPlugin:init()
	self.state = {
		enabled = false,
	}

	self.toggleState = function()
		local state = self.state
		self:setState({
			enabled = not state.enabled,
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

	self.renderButtons = function(toolbar)
		local enabled = self.state.enabled

		return {
			Toggle = Roact.createElement(PluginButton, {
				Toolbar = toolbar,
				Active = enabled,
				Title = self.localization:getText("Plugin", "Button"),
				Tooltip = self.localization:getText("Plugin", "Description"),
				Icon = TOOLBAR_BUTTON_ICON,
				OnClick = self.toggleState,
			})
		}
	end

	self.store = Rodux.Store.new(MainReducer, nil, { Rodux.thunkMiddleware })

	self.localization = Localization.new({
		pluginName = "AlignmentTool",
		stringResourceTable = EnglishStringsTable,
		translationResourceTable = TranslatedStringsTable,
	})
end

function AlignmentToolPlugin:render()
	local props = self.props

	local enabled = self.state.enabled
	local plugin = props.plugin

	return ContextServices.provide({
		ContextServices.Plugin.new(plugin),
		self.localization,
		MakeTheme(),
		Mouse.new(plugin:GetMouse()),
		Store.new(self.store),
	}, {
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = self.localization:getText("Plugin", "Toolbar"),
			RenderButtons = self.renderButtons,
		}),

		MainWidget = Roact.createElement(DockWidget, {
			Enabled = enabled,
			Title = self.localization:getText("Plugin", "WindowTitle"),
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Left,
			Size = INITIAL_WINDOW_SIZE,
			MinSize = MINIMUM_WINDOW_SIZE,
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
		}, {
			MainView = Roact.createElement(MainView),
		})
	})
end

return AlignmentToolPlugin

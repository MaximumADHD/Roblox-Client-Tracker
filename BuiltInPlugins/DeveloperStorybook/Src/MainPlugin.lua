--[[
	The main plugin for the Developer Storybook.
	Consists of the PluginWidget, Toolbar, Button, and Roact tree.
]]
local FFlagPluginDockWidgetsUseNonTranslatedIds = game:GetFastFlag("PluginDockWidgetsUseNonTranslatedIds")

local Main = script.Parent.Parent
local Roact = require(Main.Packages.Roact)
local Rodux = require(Main.Packages.Rodux)

local MainReducer = require(Main.Src.Reducers.MainReducer)

local Framework = require(Main.Packages.Framework)
local ContextServices = Framework.ContextServices
local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget
local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton
local Mouse = ContextServices.Mouse
local Store = ContextServices.Store
local Analytics = ContextServices.Analytics
local Plugin = ContextServices.Plugin
local Localization = ContextServices.Localization
local InspectorContext = require(Main.Src.Util.InspectorContext)
local MakeTheme = require(Main.Src.Resources.MakeTheme)

local TranslationDevelopmentTable = Main.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Main.Src.Resources.TranslationReferenceTable

local Components = Main.Src.Components

local InfoPanel = require(Components.InfoPanel)
local StoryTree = require(Components.StoryTree)
local TopBar = require(Components.TopBar)

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

	self.theme = MakeTheme()

	self.localization = Localization.new({
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
		pluginName = FFlagPluginDockWidgetsUseNonTranslatedIds and Main.Name or "DeveloperStorybook",
		libraries = {
			[Framework.Resources.LOCALIZATION_PROJECT_NAME] = {
				stringResourceTable = Framework.Resources.TranslationDevelopmentTable,
				translationResourceTable = Framework.Resources.TranslationReferenceTable,
			},
		},
	})

	self.contextItems = {
		InspectorContext.new(props.Inspector),
		Plugin.new(props.Plugin),
		Store.new(self.store),
		Mouse.new(props.Plugin:getMouse()),
		self.theme,
		self.localization,
		Analytics.mock()
	}
end

function MainPlugin:renderButtons(toolbar)
	local enabled = self.state.enabled
	return {
		Toggle = Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = enabled,
			Title = FFlagPluginDockWidgetsUseNonTranslatedIds and Main.Name or "Storybook",
			Icon = "rbxasset://textures/DeveloperStorybook/ToolbarIcon.png",
			OnClick = self.toggleState,
		}),
	}
end

function MainPlugin:render()
	local props = self.props
	local state = self.state
	local plugin = props.Plugin
	local enabled = state.enabled

	return ContextServices.provide(self.contextItems, {
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = self.localization:getText("Toolbar", "Title"),
			RenderButtons = function(toolbar)
				return self:renderButtons(toolbar)
			end,
		}),
		MainWidget = Roact.createElement(DockWidget, {
			Enabled = enabled,
			Title = FFlagPluginDockWidgetsUseNonTranslatedIds and self.localization:getText("Toolbar", "Title") or plugin.Name,
			Id = FFlagPluginDockWidgetsUseNonTranslatedIds and Main.Name or nil,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Bottom,
			Size = Vector2.new(640, 480),
			MinSize = Vector2.new(250, 200),
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
		}, {
			TopBar = enabled and Roact.createElement(TopBar),
			StoryTree = enabled and Roact.createElement(StoryTree),
			InfoPanel = enabled and Roact.createElement(InfoPanel),
		}),
	})
end

return MainPlugin

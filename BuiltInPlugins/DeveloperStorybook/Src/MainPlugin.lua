--[[
	The main plugin for the Developer Storybook.
	Consists of the PluginWidget, Toolbar, Button, and Roact tree.
]]
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

local SplitPane = Framework.UI.SplitPane

local SourceStrings = Main.Src.Resources.SourceStrings
local LocalizedStrings = Main.Src.Resources.LocalizedStrings

local Components = Main.Src.Components

local InfoPanel = require(Components.InfoPanel)
local StoryTree = require(Components.StoryTree)
local TopBar = require(Components.TopBar)

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
	self.state = {
		enabled = false,
	}
	self.state.paneSizes = {
		UDim.new(0, 300),
		UDim.new(1, -300),
	}
	self.onPaneSizesChange = function(paneSizes: {UDim})
		self:setState({
			paneSizes = paneSizes,
		})
	end

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

	self.onWidgetEnabledChanged = function(widget)
		self:setState({
			enabled = widget.Enabled,
		})
	end

	self.store = Rodux.Store.new(MainReducer, {}, {
		Rodux.thunkMiddleware,
	})

	self.theme = MakeTheme()

	self.localization = Localization.new({
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
		pluginName = Main.Name,
		libraries = {
			[Framework.Resources.LOCALIZATION_PROJECT_NAME] = {
				stringResourceTable = Framework.Resources.SourceStrings,
				translationResourceTable = Framework.Resources.LocalizedStrings,
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
		Analytics.mock(),
	}
end

function MainPlugin:renderButtons(toolbar)
	local enabled = self.state.enabled
	return {
		Toggle = Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = enabled,
			Title = self.localization:getText("Toolbar", "Title"),
			Icon = "rbxasset://textures/DeveloperStorybook/ToolbarIcon.png",
			OnClick = self.toggleState,
		}),
	}
end

function MainPlugin:render()
	local state = self.state
	local enabled = state.enabled

	local OFFSET = 42

	return ContextServices.provide(self.contextItems, {
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = self.localization:getText("Toolbar", "Title"),
			RenderButtons = function(toolbar)
				return self:renderButtons(toolbar)
			end,
		}),
		MainWidget = Roact.createElement(DockWidget, {
			Enabled = enabled,
			Title = self.localization:getText("Toolbar", "Title"),
			Id = Main.Name,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Bottom,
			Size = Vector2.new(640, 480),
			MinSize = Vector2.new(250, 200),
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
			[Roact.Change.Enabled] = self.onWidgetEnabledChanged,
		}, {
			TopBar = enabled and Roact.createElement(TopBar),
			Window = enabled and Roact.createElement(SplitPane, {
				ClampSize = true,
				UseDeficit = true,
				MinSizes = {
					UDim.new(0, 100),
					UDim.new(0, 100),
				},
				OnSizesChange = self.onPaneSizesChange,
				Sizes = state.paneSizes,
				Position = UDim2.fromOffset(0, OFFSET),
				Size = UDim2.new(1, 0, 1, -OFFSET),
			}, {
				Roact.createElement(StoryTree),
				Roact.createElement(InfoPanel),
			})
		}),
	})
end

return MainPlugin

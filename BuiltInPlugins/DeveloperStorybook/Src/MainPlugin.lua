--[[
	The main plugin for the Developer Storybook.
	Consists of the PluginWidget, Toolbar, Button, and Roact tree.
]]
local Main = script.Parent.Parent
local Roact = require(Main.Packages.Roact)
local Rodux = require(Main.Packages.Rodux)
local StudioFoundation = require(Main.Packages.StudioFoundation)

local MainReducer = require(Main.Src.Reducers.MainReducer)

local Framework = require(Main.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local DockWidget = UI.DockWidget
local PluginButton = UI.PluginButton
local PluginToolbar = UI.PluginToolbar

local Mouse = ContextServices.Mouse
local Store = ContextServices.Store
local Analytics = ContextServices.Analytics
local Plugin = ContextServices.Plugin
local Localization = ContextServices.Localization
local Design = ContextServices.Design
local InspectorContext = require(Main.Src.Util.InspectorContext)
local MakeTheme = require(Main.Src.Resources.MakeTheme)

local registerPluginStyles = Framework.Styling.registerPluginStyles

local SourceStrings = Main.Src.Resources.SourceStrings
local LocalizedStrings = Main.Src.Resources.LocalizedStrings

local Components = Main.Src.Components

local Window = require(Components.Window)
local FoundationProvider = require(Components.FoundationProvider)

local GetStories = require(Main.Src.Thunks.GetStories)
local RestoreState = require(Main.Src.Thunks.RestoreState)

local LAST_STATE_KEY = "lastState"

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
		local lastState = props.Plugin:GetSetting(LAST_STATE_KEY)
		if lastState then
			self.store:dispatch(RestoreState(lastState))
		end
	end

	self.onWidgetEnabledChanged = function(widget)
		self:setState({
			enabled = widget.Enabled,
		})
	end

	self.store = Rodux.Store.new(MainReducer, {}, {
		Rodux.thunkMiddleware,
	})

	self.store.changed:connect(function(newState)
		props.Plugin:SetSetting(LAST_STATE_KEY, {
			lastStoryName = newState.Stories.selectedStory and newState.Stories.selectedStory.Name or "",
			settings = newState.Stories.settings,
			embedded = newState.Stories.embedded,
			searchFilter = newState.Stories.searchFilter,
			theme = newState.Stories.theme,
			platform = newState.Stories.platform,
		})
	end)

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

	local binding, onStyleSheetChange = StudioFoundation.Util.createFoundationDesignBinding()
	self.onFoundationStyleSheetChange = onStyleSheetChange
	self.design = registerPluginStyles(props.Plugin, nil, nil, {
		FoundationBinging = binding,
	})

	self.theme = MakeTheme()

	self.contextItems = {
		InspectorContext.new(props.Inspector),
		Plugin.new(props.Plugin),
		Store.new(self.store),
		Mouse.new(props.Plugin:getMouse()),
		self.theme,
		self.localization,
		Analytics.mock(),
		Design.new(self.design),
	}
end

function MainPlugin:renderButtons(toolbar)
	local enabled = self.state.enabled
	return {
		Toggle = Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = enabled,
			Title = "Toggle",
			Icon = "rbxasset://textures/DeveloperStorybook/ToolbarIcon.png",
			OnClick = self.toggleState,
		}),
	}
end

function MainPlugin:componentDidUpdate(_prevProps, prevState)
	if self.state.enabled and not prevState.enabled then
		-- Update the stories when the storybook is open
		self.store:dispatch(GetStories())
	end
end

function MainPlugin:render()
	local state = self.state
	local enabled = state.enabled
	return ContextServices.provide(self.contextItems, {
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = "Storybook",
			RenderButtons = function(toolbar)
				return self:renderButtons(toolbar)
			end,
		}),
		MainWidget = Roact.createElement(
			DockWidget,
			{
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
				PluginDesign = self.design,
			},
			Roact.createElement(
				FoundationProvider,
				{ onStyleSheetChange = self.onFoundationStyleSheetChange },
				{ Window = enabled and Roact.createElement(Window) }
			)
		),
	})
end

return MainPlugin

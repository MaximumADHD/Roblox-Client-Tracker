--[[
	The main plugin component.
	Consists of the PluginWidget, Toolbar, Button, and React tree.

	New Plugin Setup: When creating a plugin, commit this template
		first with /packages in a secondary pull request.

		A common workaround for the large diffs from Packages/_Index is to put
		the Packages/_Index changes into a separate PR like this:
			master <- PR <- Packages PR
		Get people to review *PR*, then after approvals, merge *Packages PR*
		into *PR*, and then *PR* into master.


	New Plugin Setup: Search for other TODOs to see other tasks to modify this template for
	your needs. All setup TODOs are tagged as New Plugin Setup:
]]

local main = script.Parent.Parent
-- local _Types = require(main.Src.Types) -- uncomment to use types
local React = require(main.Packages.React)
local Rodux = require(main.Packages.Rodux)

local Framework = require(main.Packages.Framework)
local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkBetterInit = SharedFlags.getFFlagDevFrameworkBetterInit()
local DockWidget = if FFlagDevFrameworkBetterInit then Framework.UI.DockWidget else Framework.StudioUI.DockWidget
local PluginToolbar = if FFlagDevFrameworkBetterInit
	then Framework.UI.PluginToolbar
	else Framework.StudioUI.PluginToolbar
local PluginButton = if FFlagDevFrameworkBetterInit then Framework.UI.PluginButton else Framework.StudioUI.PluginButton

local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin
local Mouse = ContextServices.Mouse
local Store = ContextServices.Store

local MainReducer = require(main.Src.Reducers.MainReducer)
local MakeTheme = require(main.Src.Resources.MakeTheme)

local SourceStrings = main.Src.Resources.Localization.SourceStrings
local LocalizedStrings = main.Src.Resources.Localization.LocalizedStrings

local Components = main.Src.Components
local ExampleComponent = require(Components.ExampleComponent)
local ExampleRoactRoduxComponent = require(Components.ExampleRoactRoduxComponent)

local MainPlugin = React.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
	self.state = {
		enabled = false,
	}

	self.toggleEnabled = function()
		self:setState(function(state)
			return {
				enabled = not state.enabled,
			}
		end)
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

	self.store = Rodux.Store.new(MainReducer, nil, {
		Rodux.thunkMiddleware,
	}, nil)

	self.localization = ContextServices.Localization.new({
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
		pluginName = "ActivityFeed",
	})

	-- TODO delete, we probbaly don't need/want this, use RobloxTelemetry instead
	self.analytics = ContextServices.Analytics.new(function()
		return {}
	end, {})
end

function MainPlugin:renderButtons(toolbar)
	local enabled = self.state.enabled

	return {
		Toggle = React.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = enabled,
			Title = "activity_feed_button",
			Tooltip = self.localization:getText("Plugin", "Description"),
			--New Plugin Setup: Change Icon. Can be nil if QT is managing the icon
			Icon = "rbxasset://textures/GameSettings/ToolbarIcon.png",
			OnClick = self.toggleEnabled,
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
		Store.new(self.store),
		Mouse.new(plugin:getMouse()),
		MakeTheme(),
		self.localization,
		self.analytics,
	}, {
		Toolbar = React.createElement(PluginToolbar, {
			Title = "ActivityFeed",
			RenderButtons = function(toolbar)
				return self:renderButtons(toolbar)
			end,
		}),

		MainWidget = React.createElement(DockWidget, {
			--New Plugin Setup: Change the DockWidget Id to a unique non-localized string
			Id = "ActivityFeed",
			Enabled = enabled,
			Title = self.localization:getText("Plugin", "Name"),
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Bottom,
			Size = Vector2.new(640, 480),
			MinSize = Vector2.new(250, 200),
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
			[React.Change.Enabled] = self.onWidgetEnabledChanged,
		}, {
			-- Plugin contents are mounted here
			-- New Plugin Setup: Switch out ExampleComponent with your component
			ExampleComponent = React.createElement(ExampleComponent),
			ExampleRoactRoduxComponent = React.createElement(ExampleRoactRoduxComponent),
		}),
	})
end

return MainPlugin

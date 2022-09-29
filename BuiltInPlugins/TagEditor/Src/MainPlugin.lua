--[[
	The main plugin component.
	Consists of the PluginWidget, Toolbar, Button, and Roact tree.

	New Plugin Setup: When creating a plugin, commit this template
		first with /packages in a secondary pull request.

		A common workaround for the large diffs from Packages/_Index is to put
		the Packages/_Index changes into a separate PR like this:
			master <- PR <- Packages PR
		Get people to review *PR*, then after approvals, merge *Packages PR*
		into *PR*, and then *PR* into master.
]]

local main = script.Parent.Parent
-- local _Types = require(main.Src.Types) -- uncomment to use types
local Roact = require(main.Packages.Roact)
local Rodux = require(main.Packages.Rodux)

local Framework = require(main.Packages.Framework)

local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget
local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton

local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin
local Mouse = ContextServices.Mouse
local Store = ContextServices.Store

local Reducers = require(main.Src.Reducers)
local MakeTheme = require(main.Src.Resources.MakeTheme)
local InitialStoreState = require(main.Src.InitialStoreState)

local SourceStrings = main.Src.Resources.Localization.SourceStrings
local LocalizedStrings = main.Src.Resources.Localization.LocalizedStrings

local TagManager = require(script.Parent.TagManager)
local createAnalyticsHandlers = require(main.Src.Util.createAnalyticsHandlers)

local Components = main.Src.Components
local MainGui = require(Components.MainGui)

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
	self.state = {
		enabled = false,
	}

	self.store = Rodux.Store.new(Reducers, InitialStoreState, {
		Rodux.thunkMiddleware,
	}, nil)

	self.manager = TagManager.new(self.store)

	self.toggleEnabled = function()
		self:setState(function(state)
			local newEnabled = not state.enabled
			local initiatedByUser = true
			self:setEnabled(newEnabled, initiatedByUser)
		end)
	end

	self.onClose = function()
		local initiatedByUser = true
		self:setEnabled(false, initiatedByUser)
	end

	self.onRestore = function(enabled)
		local initiatedByUser = false
		self:setEnabled(enabled, initiatedByUser)
	end

	self.onWidgetEnabledChanged = function(widget)
		local initiatedByUser = true
		self:setEnabled(widget.Enabled, initiatedByUser)
	end

	self.localization = ContextServices.Localization.new({
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
		pluginName = "TagEditor",
	})
	--[[
		New Plugin Setup: Each plugin is expected to provide a createEventHandlers function to the constructor
			which should return a table mapping event -> eventHandler.

	--]]
	self.analytics = ContextServices.Analytics.new(createAnalyticsHandlers)
end

function MainPlugin:sendWindowEnabledAnalytics(enabled)
	if not self.analytics then
		return
	end

	self.analytics:report("toggleWidget")
	self.analytics:report(enabled and "openWidget" or "closeWidget")
end

function MainPlugin:setEnabled(newEnabled, initiatedByUser)
	self:setState(function(state)
		if state.enabled == newEnabled then
			return nil
		end

		self.analytics:report("opened")

		if initiatedByUser then
			self:sendWindowEnabledAnalytics(newEnabled)
		end

		return {
			enabled = newEnabled,
		}
	end)
end

function MainPlugin:renderButtons(toolbar)
	local enabled = self.state.enabled

	return {
		Toggle = Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = enabled,
			Id = "template_button",
			Title = self.localization:getText("Plugin", "Button"),
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
			InitialDockState = Enum.InitialDockState.Bottom,
			Size = Vector2.new(300, 200),
			MinSize = Vector2.new(150, 150),
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
			[Roact.Change.Enabled] = self.onWidgetEnabledChanged,
		}, {
			MainGui = Roact.createElement(MainGui),
		}),
	})
end

return MainPlugin

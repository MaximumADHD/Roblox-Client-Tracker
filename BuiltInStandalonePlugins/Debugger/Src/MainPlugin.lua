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


	New Plugin Setup: Search for other TODOs to see other tasks to modify this template for
	your needs. All setup TODOs are tagged as New Plugin Setup:
]]

local main = script.Parent.Parent
local Src = main.Src
-- local _Types = require(main.Src.Types) -- uncomment to enable
local Roact = require(main.Packages.Roact)
local Rodux = require(main.Packages.Rodux)

local Framework = require(main.Packages.Framework)

local StudioUI = Framework.StudioUI

local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton

local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin
local Mouse = ContextServices.Mouse
local Store = ContextServices.Store

local MainReducer = require(Src.Reducers.MainReducer)
local MakeTheme = require(Src.Resources.MakeTheme)
local MakePluginActions = require(Src.Util.MakePluginActions)
local AnalyticsHolder = require(Src.Resources.AnalyticsHolder)

local TranslationDevelopmentTable = Src.Resources.Localization.TranslationDevelopmentTable
local TranslationReferenceTable = Src.Resources.Localization.TranslationReferenceTable

local Components = Src.Components
local EditDebugpointDialog = require(Components.Breakpoints.EditDebugpointDialog)
local CallstackWindow = require(Components.Callstack.CallstackWindow)
local WatchWindow = require(Components.Watch.WatchWindow)
local BreakpointsWindow = require(Components.Breakpoints.BreakpointsWindow)
local WatchComponent = require(Components.Watch.WatchComponent)

local Middleware = require(Src.Middleware.MainMiddleware)

local TestStore = require(Src.Util.TestStore)
local DebugConnectionListener = require(Src.Util.DebugConnectionListener)

local FFlagStudioDebuggerPluginEditBreakpoint = game:GetFastFlag("StudioDebuggerPluginEditBreakpoint_alpha")
local FFlagStudioDebuggerPlugin = game:GetFastFlag("StudioDebuggerPlugin")
local FFlagStudioDebuggerPluginBreakpointsWindow = game:GetFastFlag("StudioDebuggerPluginBreakpointsWindow")
local FFlagDebugPopulateDebuggerPlugin = game:GetFastFlag("DebugPopulateDebuggerPlugin")

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

local CALLSTACK_META_NAME = "Callstack"
local BREAKPOINTS_META_NAME = "Breakpoints"
local WATCH_META_NAME = "Watch"
local TOOLBAR_NAME = "Debugger"

function MainPlugin:init(props)
	self.state = {
		editBreakpoint = {
			Enabled = false,
		},
		callstackWindow = {
			Enabled = false,
		},
		breakpointsWindow = {
			Enabled = false,
		},
		watchWindow = {
			Enabled = false,
		},
	}

	self.toggleWidgetEnabled = function(targetWidget)
		self:setState(function(state)
			return {
				[targetWidget] = {
					Enabled =  not state[targetWidget].Enabled,
				}
			}
		end)
	end

	self.onWidgetClose = function(targetWidget)
		self:setState({
			[targetWidget] = {
				Enabled = false,
			}
		})
	end

	self.onWidgetEnabledChanged = function(targetWidget)
		self:setState({
			[targetWidget] = {
				Enabled = false,
			},
		})
	end

	self.store = Rodux.Store.new(MainReducer, nil, Middleware)

	if (FFlagDebugPopulateDebuggerPlugin) then
		self.store = TestStore(self.store)
	end

	self.debugConnectionListener = FFlagStudioDebuggerPlugin and DebugConnectionListener.new(self.store)

	self.localization = ContextServices.Localization.new({
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
		pluginName = "Debugger",
	})
	--[[
			To enable localization, add the plugin to
			Client/RobloxStudio/Translation/builtin_plugin_config.py
	--]]
	self.analytics = AnalyticsHolder

	self.pluginActions = ContextServices.PluginActions.new(props.Plugin, MakePluginActions.getCallstackActions(self.localization))
end

function MainPlugin:renderButtons(toolbar)
	local state = self.state
	local callstackWindowEnabled = state.callstackWindow.Enabled
	local watchWindowEnabled = state.watchWindow.Enabled
	local breakpointsWindowEnabled = state.breakpointsWindow.Enabled

	return {
		ToggleCallstack = FFlagStudioDebuggerPlugin and Roact.createElement(PluginButton, {
			Name = "callStackDockWidgetActionV2",
			Toolbar = toolbar,
			Active = callstackWindowEnabled,
			Title = CALLSTACK_META_NAME,
			Tooltip = "",
			Icon = "rbxasset://textures/Debugger/callStack.png",
			OnClick = function()
				self.toggleWidgetEnabled("callstackWindow")
			end,
			ClickableWhenViewportHidden = true,
		}),
		ToggleBreakpointsWindow = FFlagStudioDebuggerPluginBreakpointsWindow and Roact.createElement(PluginButton, {
			Name = "breakpointsDockWidgetActionV2",
			Toolbar = toolbar,
			Active = breakpointsWindowEnabled,
			Title = BREAKPOINTS_META_NAME,
			Tooltip = "",
			Icon = "rbxasset://textures/Debugger/Breakpoint.png",
			OnClick = function()
				self.toggleWidgetEnabled("breakpointsWindow")
			end,
			ClickableWhenViewportHidden = true,
		}),
		ToggleWatchWindow = FFlagStudioDebuggerPlugin and Roact.createElement(PluginButton, {
			Name = "watchDockWidgetActionV2",
			Toolbar = toolbar,
			Active = watchWindowEnabled,
			Title = WATCH_META_NAME,
			Tooltip = "",
			Icon = "rbxasset://textures/Debugger/Watch-Window.png",
			OnClick = function()
				self.toggleWidgetEnabled("watchWindow")
			end,
			ClickableWhenViewportHidden = true,
		}),
	}
end

function MainPlugin:renderButtonsTemporary(toolbar)
	return {
		ToggleEditBreakpoint = FFlagStudioDebuggerPluginEditBreakpoint and Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = true,
			Title = self.localization:getText("EditBreakpoint", "DialogName"),
			Tooltip = "Temporary Edit Breakpoint button for development purpose ",
			Icon = "rbxasset://textures/GameSettings/Error.png", -- Located under Client/content/textures
			OnClick = function()
				self.toggleWidgetEnabled("editBreakpoint")
			end,
			ClickableWhenViewportHidden = true,
		}),
	}
end

function MainPlugin:render()
	local props = self.props
	local state = self.state
	local plugin = props.Plugin
	local editBreakpointEnabled = state.editBreakpoint and state.editBreakpoint.Enabled
	local callstackWindowEnabled = state.callstackWindow and state.callstackWindow.Enabled
	local watchWindowEnabled = state.watchWindow and state.watchWindow.Enabled
	local breakpointsWindowEnabled = state.breakpointsWindow and state.breakpointsWindow.Enabled
	return ContextServices.provide({
		Plugin.new(plugin),
		Store.new(self.store),
		Mouse.new(plugin:getMouse()),
		MakeTheme(),
		self.localization,
		self.analytics,
		self.pluginActions
	}, {
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = TOOLBAR_NAME,
			RenderButtons = function(toolbar)
				return self:renderButtons(toolbar)
			end,
		}),
		TemporaryToolbar = Roact.createElement(PluginToolbar, {
			Title = "Temporary",
			RenderButtons = function(toolbar)
				return self:renderButtonsTemporary(toolbar)
			end,
		}),
		EditDebugpointDialog = FFlagStudioDebuggerPluginEditBreakpoint and editBreakpointEnabled and Roact.createElement(EditDebugpointDialog, {
			Enabled = editBreakpointEnabled,
			OnClose = function()
				self.onWidgetClose("editBreakpoint")
			end,
		}) or nil,
		CallstackWindow = (FFlagStudioDebuggerPlugin and callstackWindowEnabled) and Roact.createElement(CallstackWindow, {
			Enabled = callstackWindowEnabled,
			OnClose = function()
				self.onWidgetClose("callstackWindow")
			end,
		}) or nil,
		BreakpointsWindow = (FFlagStudioDebuggerPluginBreakpointsWindow and breakpointsWindowEnabled) and Roact.createElement(BreakpointsWindow, {
			Enabled = breakpointsWindowEnabled,
			OnClose = function()
				self.onWidgetClose("breakpointsWindow")
			end,
		}) or nil,
		WatchWindow = (FFlagStudioDebuggerPlugin and watchWindowEnabled) and Roact.createElement(WatchWindow, {
			Enabled = watchWindowEnabled,
			OnClose = function()
				self.onWidgetClose("watchWindow")
			end,
		}, {
			Watch = Roact.createElement(WatchComponent),
		}) or nil,
	})
end

function MainPlugin:willUnmount()
	if FFlagDebugPopulateDebuggerPlugin and self.debugConnectionListener then
		self.debugConnectionListener:destroy()
		self.debugConnectionListener = nil
	end
end

return MainPlugin

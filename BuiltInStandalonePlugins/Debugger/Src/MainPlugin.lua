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

local SourceStrings = Src.Resources.Localization.SourceStrings
local LocalizedStrings = Src.Resources.Localization.LocalizedStrings

local Components = Src.Components
local CallstackWindow = require(Components.Callstack.CallstackWindow)
local WatchWindow = require(Components.Watch.WatchWindow)
local BreakpointsWindow = require(Components.Breakpoints.BreakpointsWindow)
local WatchComponent = require(Components.Watch.WatchComponent)
local DebuggerToolbarButtons = require(Components.Common.DebuggerToolbarButtons)
local Middleware = require(Src.Middleware.MainMiddleware)

local TestStore = require(Src.Util.TestStore)
local DebugConnectionListener = require(Src.Util.DebugConnectionListener.DebugConnectionListener)
local BreakpointManagerListener = require(Src.Util.BreakpointManagerListener.BreakpointManagerListener)
local CrossDMScriptChangeListener = require(Src.Util.CrossDMScriptChangeListener.CrossDMScriptChangeListener)

local FFlagStudioDebuggerOverhaul_Dev = game:GetFastFlag("StudioDebuggerOverhaul_Dev")
local FFlagDebugPopulateDebuggerPlugin = game:GetFastFlag("DebugPopulateDebuggerPlugin")

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

-- these strings need to correspond to strings in StudioPluginHost.cpp
local CALLSTACK_META_NAME = "Callstack"
local BREAKPOINTS_META_NAME = "Breakpoints"
local WATCH_META_NAME = "Watch"

local TOOLBAR_NAME = "Debugger"

function MainPlugin:init(props)
	local plugin = props.Plugin

	self.state = {
		callstackWindow = {
			Enabled = plugin:GetSetting("callstackWindow_Enabled") or false,
		},
		breakpointsWindow = {
			Enabled = plugin:GetSetting("breakpointsWindow_Enabled") or false,
		},
		watchWindow = {
			Enabled = plugin:GetSetting("watchWindow_Enabled") or false,
		},
		uiDmLoaded = false,
	}

	local mdiInstance = plugin.MultipleDocumentInterfaceInstance
	mdiInstance.DataModelSessionStarted:Connect(function(dmSession)
		self:setState(function()
			return { uiDmLoaded = true }
		end)
	end)
	mdiInstance.DataModelSessionEnded:Connect(function(dmSession)
		self:setState(function()
			return { uiDmLoaded = false }
		end)
	end)
	if mdiInstance.FocusedDataModelSession then
		self:setState(function()
			return { uiDmLoaded = true }
		end)
	end

	self.toggleWidgetEnabled = function(targetWidget)
		local newEnabled = not self.state[targetWidget].Enabled
		self.props.Plugin:SetSetting(targetWidget .. "_Enabled", newEnabled)
		self:setState(function(_state)
			return {
				[targetWidget] = {
					Enabled = newEnabled,
				},
			}
		end)
	end

	self.onWidgetClose = function(targetWidget)
		self.props.Plugin:SetSetting(targetWidget .. "_Enabled", false)
		self:setState(function(_state)
			return {
				[targetWidget] = {
					Enabled = false,
				},
			}
		end)
	end

	self.store = Rodux.Store.new(MainReducer, nil, Middleware)

	if FFlagDebugPopulateDebuggerPlugin then
		self.store = TestStore(self.store)
	end

	self.debugConnectionListener = FFlagStudioDebuggerOverhaul_Dev and DebugConnectionListener.new(self.store)
	self.breakpointManagerListener = FFlagStudioDebuggerOverhaul_Dev and BreakpointManagerListener.new(self.store)
	self.scriptChangeServiceListener = FFlagStudioDebuggerOverhaul_Dev and CrossDMScriptChangeListener.new(self.store)

	self.localization = ContextServices.Localization.new({
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
		pluginName = "Debugger",
	})
	--[[
			To enable localization, add the plugin to
			Client/RobloxStudio/Translation/builtin_plugin_config.py
	--]]
	self.analytics = AnalyticsHolder

	self.pluginActions = ContextServices.PluginActions.new(
		props.Plugin,
		MakePluginActions.getActionsWithShortcuts(self.localization)
	)
end

function MainPlugin:renderButtons(toolbar)
	local state = self.state

	local callstackWindowEnabled = state.callstackWindow.Enabled
	local watchWindowEnabled = state.watchWindow.Enabled
	local breakpointsWindowEnabled = state.breakpointsWindow.Enabled

	return {
		ToggleCallstack = FFlagStudioDebuggerOverhaul_Dev and Roact.createElement(PluginButton, {
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
		ToggleBreakpointsWindow = FFlagStudioDebuggerOverhaul_Dev and Roact.createElement(PluginButton, {
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
		ToggleWatchWindow = FFlagStudioDebuggerOverhaul_Dev and Roact.createElement(PluginButton, {
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

function MainPlugin:render()
	local props = self.props
	local state = self.state
	local plugin = props.Plugin

	local callstackWindowEnabled = state.uiDmLoaded and state.callstackWindow and state.callstackWindow.Enabled
	local watchWindowEnabled = state.uiDmLoaded and state.watchWindow and state.watchWindow.Enabled
	local breakpointsWindowEnabled = state.uiDmLoaded and state.breakpointsWindow and state.breakpointsWindow.Enabled

	return ContextServices.provide({
		Plugin.new(plugin),
		Store.new(self.store),
		Mouse.new(plugin:getMouse()),
		MakeTheme(),
		self.localization,
		self.analytics,
		self.pluginActions,
	}, {
		Toolbar = FFlagStudioDebuggerOverhaul_Dev and Roact.createElement(PluginToolbar, {
			Title = TOOLBAR_NAME,
			RenderButtons = function(toolbar)
				return self:renderButtons(toolbar)
			end,
		}),
		ToolbarWithRoduxConnection = FFlagStudioDebuggerOverhaul_Dev and Roact.createElement(DebuggerToolbarButtons),
		CallstackWindow = (FFlagStudioDebuggerOverhaul_Dev and callstackWindowEnabled) and Roact.createElement(
			CallstackWindow,
			{
				Enabled = callstackWindowEnabled,
				OnClose = function()
					self.onWidgetClose("callstackWindow")
				end,
			}
		) or nil,
		BreakpointsWindow = (FFlagStudioDebuggerOverhaul_Dev and breakpointsWindowEnabled) and Roact.createElement(
			BreakpointsWindow,
			{
				Enabled = breakpointsWindowEnabled,
				OnClose = function()
					self.onWidgetClose("breakpointsWindow")
				end,
			}
		) or nil,
		WatchWindow = (FFlagStudioDebuggerOverhaul_Dev and watchWindowEnabled) and Roact.createElement(WatchWindow, {
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
	local props = self.props
	local plugin = props.Plugin

	plugin:SetSetting("callstackWindow_Enabled", self.state.callstackWindow.Enabled)
	plugin:SetSetting("watchWindow_Enabled", self.state.watchWindow.Enabled)
	plugin:SetSetting("breakpointsWindow_Enabled", self.state.breakpointsWindow.Enabled)

	if FFlagStudioDebuggerOverhaul_Dev and self.debugConnectionListener then
		self.debugConnectionListener:destroy()
		self.debugConnectionListener = nil
	end

	if FFlagStudioDebuggerOverhaul_Dev and self.breakpointManagerListener then
		self.breakpointManagerListener:destroy()
		self.breakpointManagerListener = nil
	end

	if FFlagStudioDebuggerOverhaul_Dev and self.scriptChangeServiceListener then
		self.scriptChangeServiceListener:destroy()
		self.scriptChangeServiceListener = nil
	end
end

return MainPlugin

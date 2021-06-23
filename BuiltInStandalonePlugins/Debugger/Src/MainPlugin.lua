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
-- local _Types = require(main.Src.Types) -- uncomment to enable
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

local MainReducer = require(main.Src.Reducers.MainReducer)
local MakeTheme = require(main.Src.Resources.MakeTheme)

local TranslationDevelopmentTable = main.Src.Resources.Localization.TranslationDevelopmentTable
local TranslationReferenceTable = main.Src.Resources.Localization.TranslationReferenceTable

local Components = main.Src.Components
local ExampleComponent = require(Components.ExampleComponent)
local ExampleRoactRoduxComponent = require(Components.ExampleRoactRoduxComponent)
local EditDebugpointDialog = require(Components.Breakpoints.EditDebugpointDialog)
local CallstackWindow = require(Components.Callstack.CallstackWindow)
local CallstackComponent = require(Components.Callstack.CallstackComponent)

local FFlagDebuggerPluginEditBreakpoint = game:GetFastFlag("DebuggerPluginEditBreakpoint_alpha")
local FFlagLuaUIDebuggerCallstack = game:GetFastFlag("LuaUIDebuggerCallstack")

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
	self.state = {
		enabled = false,
		editBreakpoint = {
			Enabled = false,
		},
		callstackWindow = {
			Enabled = false,
		},
	}

	self.toggleEnabled = function()
		self:setState(function(state)
			return {
				enabled = not state.enabled,
			}
		end)
	end

	self.toggleWidgetEnabled = function(targetWidget)
		self:setState(function(state)
			return {
				[targetWidget] = {
					Enabled =  not state[targetWidget].Enabled,
				}
			}
		end)
	end

	self.onClose = function()
		self:setState({
			enabled = false,
		})
	end

	self.onWidgetClose = function(targetWidget)
		self:setState({
			[targetWidget] = {
				Enabled = false,
			}
		})
	end

	self.onRestore = function(enabled)
		self:setState({
			enabled = enabled
		})
	end

	self.onWidgetEnabledChanged = function(widget)
		self:setState({
			enabled = widget.Enabled
		})
	end

	self.store = Rodux.Store.new(MainReducer, nil, {
		Rodux.thunkMiddleware,
	})

	self.localization = ContextServices.Localization.new({
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
		pluginName = "Debugger",
	})
	--[[
		New Plugin Setup: Each plugin is expected to provide a createEventHandlers function to the constructor
			which should return a table mapping event -> eventHandler.

			To enable localization, add the plugin to
			Client/RobloxStudio/Translation/builtin_plugin_config.py
	--]]
	self.analytics = ContextServices.Analytics.new(function()
		return {}
	end, {})
end

function MainPlugin:renderButtons(toolbar)
	local enabled = self.state.enabled

	return {
		Toggle = Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = enabled,
			Title = self.localization:getText("Plugin", "Button"),
			Tooltip = self.localization:getText("Plugin", "Description"),
			--New Plugin Setup: Change Icon. Can be nil if QT is managing the icon
			Icon = "rbxasset://textures/GameSettings/ToolbarIcon.png",
			OnClick = self.toggleEnabled,
			ClickableWhenViewportHidden = true,
		}),
		ToggleEditBreakpoint = FFlagDebuggerPluginEditBreakpoint and Roact.createElement(PluginButton, {
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
		ToggleCallstack = FFlagLuaUIDebuggerCallstack and Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = true,
			Title = self.localization:getText("Callstack", "WindowName"),
			Tooltip = "",
			Icon = "rbxasset://textures/GameSettings/Error.png", -- Located under Client/content/textures
			OnClick = function()
				self.toggleWidgetEnabled("callstackWindow")
			end,
			ClickableWhenViewportHidden = true,
		}),
	}
end

function MainPlugin:render()
	local props = self.props
	local state = self.state
	local plugin = props.Plugin
	local enabled = state.enabled
	local editBreakpointEnabled = state.editBreakpoint and state.editBreakpoint.Enabled
	local callstackWindowEnabled = state.callstackWindow and state.callstackWindow.Enabled

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
			Size = Vector2.new(640, 480),
			MinSize = Vector2.new(250, 200),
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
		}, {
			-- Plugin contents are mounted here
			-- New Plugin Setup: Switch out ExampleComponent with your component
			ExampleComponent = Roact.createElement(ExampleComponent),
			ExampleRoactRoduxComponent = Roact.createElement(ExampleRoactRoduxComponent),
		}),
		EditDebugpointDialog = FFlagDebuggerPluginEditBreakpoint and editBreakpointEnabled and Roact.createElement(EditDebugpointDialog, {
			Enabled = editBreakpointEnabled,
			OnClose = function()
				self.onWidgetClose("editBreakpoint")
			end,
		}) or nil, 
		CallstackWindow = (FFlagLuaUIDebuggerCallstack and callstackWindowEnabled) and Roact.createElement(CallstackWindow, {
			Enabled = callstackWindowEnabled,
			OnClose = function()
				self.onWidgetClose("callstackWindow")
			end,
			OnRestore = self.onRestore,
		}, {
			Callstack = Roact.createElement(CallstackComponent),
		}) or nil,
	})
end

return MainPlugin

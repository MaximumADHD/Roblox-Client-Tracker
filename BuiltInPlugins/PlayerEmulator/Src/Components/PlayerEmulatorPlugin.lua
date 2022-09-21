local RunService = game:GetService("RunService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget

local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkMigrateToggleButton = SharedFlags.getFFlagDevFrameworkMigrateToggleButton()

local MainView = require(Plugin.Src.Components.MainView)

local globals = require(Plugin.Src.Util.CreatePluginGlobals)
local Constants = require(Plugin.Src.Util.Constants)

local PlayerEmulatorPlugin = Roact.PureComponent:extend("PlayerEmulatorPlugin")

local PLUGIN_WINDOW_SIZE = Vector2.new(320, 330)

function PlayerEmulatorPlugin:updateToolbarButtonActiveState()
	local active = self.state.active
	if self.button then
		self.button:SetActive(active)
	end
end

function PlayerEmulatorPlugin:initPluginWidgetStatus()
	local plugin = self.props.plugin
	local prevActiveState = plugin:GetSetting(Constants.PLUGIN_WIDGET_STATE)
	if prevActiveState ~= self.state.active then
		self:setState({
			active = prevActiveState,
		})
	end
end

function PlayerEmulatorPlugin:init()
	self.state = {
		active = false,
	}

	self.contextItems = {
		ContextServices.Plugin.new(self.props.plugin),
		globals.localization,
		globals.theme,
		globals.networking,
		globals.store,
		if FFlagDevFrameworkMigrateToggleButton then ContextServices.Mouse.new(self.props.plugin:GetMouse()) else nil,
	}

	self.toggleActive = function()
		local plugin = self.props.plugin
		local active = not self.state.active
		self:setState({
			active = active,
		})
		plugin:SetSetting(Constants.PLUGIN_WIDGET_STATE, active)
	end

	self.onClose = function()
		self:setState({
			active = false,
		})
		local plugin = self.props.plugin
		plugin:SetSetting(Constants.PLUGIN_WIDGET_STATE, false)
	end

	self.onWidgetEnabledChanged = function(widget)
		self:setState({
			enabled = widget.Enabled,
		})
	end

	self.onAncestryChanged = function(_, _, parent)
		if not parent and self.props.onPluginWillDestroy then
			self.props.onPluginWillDestroy()
		end
	end

	self.button = self.props.pluginLoaderContext.mainButton
	self.props.pluginLoaderContext.mainButtonClickedSignal:Connect(self.toggleActive)
end

function PlayerEmulatorPlugin:didMount()
	self:initPluginWidgetStatus()
	self:updateToolbarButtonActiveState()
end

function PlayerEmulatorPlugin:didUpdate()
	self:updateToolbarButtonActiveState()
end

function PlayerEmulatorPlugin:render()
	local state = self.state
	local active = state.active

	local enabled = RunService:IsEdit()

	return ContextServices.provide(self.contextItems, {
		MainWidget = enabled and Roact.createElement(DockWidget, {
			Enabled = active,
			Title = globals.localization:getText("Meta", "PluginTitle"),
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Left,
			Size = PLUGIN_WINDOW_SIZE,
			MinSize = PLUGIN_WINDOW_SIZE,
			OnClose = self.onClose,
			ShouldRestore = false,
			[Roact.Change.Enabled] = self.onWidgetEnabledChanged,
		}, {
			-- UILibraryWrapper consumes theme, focus etc. so needs to be wrapped in these items for React.createContext to consume them.
			MainView = active and ContextServices.provide({
				globals.uiLibraryWrapper
			}, {
				MainView = Roact.createElement(MainView)
			})
		})
	})
end

return PlayerEmulatorPlugin

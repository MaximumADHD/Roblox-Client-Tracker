local RunService = game:GetService("RunService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local StudioUI = require(Plugin.Packages.Framework.StudioUI)
local PluginToolbar = StudioUI.PluginToolbar
local DockWidget = StudioUI.DockWidget

local MainView = require(Plugin.Src.Components.MainView)

local globals = require(Plugin.Src.Util.CreatePluginGlobals)
local Constants = require(Plugin.Src.Util.Constants)

local PlayerEmulatorPlugin = Roact.PureComponent:extend("PlayerEmulatorPlugin")

function PlayerEmulatorPlugin:updateToolbarButtonActiveState()
	local active = self.state.active
	self.button:SetActive(active)
end

function PlayerEmulatorPlugin:renderButton(toolbar, icon, enabled)
	if not self.button then
		self.button = toolbar:CreateButton("luaPlayerEmulatorButton", "", icon)
		self.button.Click:Connect(self.toggleActive)
	end
	self.button.Enabled = enabled
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
	end

	self.onAncestryChanged = function(_, _, parent)
		if not parent and self.props.onPluginWillDestroy then
			self.props.onPluginWillDestroy()
		end
	end
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
	local props = self.props

	local active = state.active
	local plugin = props.plugin
	local theme = globals.theme:get("Plugin")

	local enabled = RunService:IsEdit()

	return ContextServices.provide({
		ContextServices.Plugin.new(plugin),
	}, {
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = "luaPlayerEmulatorToolbar",
			RenderButtons = function(toolbar)
				return self:renderButton(toolbar, theme.TOOLBAR_ICON_PATH, enabled)
			end,
		}),
		MainWidget = enabled and Roact.createElement(DockWidget, {
			Enabled = active,
			Title = globals.localization:getText("Meta", "PluginTitle"),
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Left,
			Size = theme.PLUGIN_WINDOW_SIZE,
			MinSize = theme.PLUGIN_WINDOW_SIZE_MIN,
			OnClose = self.onClose,
			ShouldRestore = false,
		}, {
			MainProvider = active and ContextServices.provide({
				globals.localization,
				globals.theme,
				globals.uiLibraryWrapper,
				globals.store,
				globals.networking,
			}, {
				MainView = Roact.createElement(MainView)
			})
		})
	})
end

return PlayerEmulatorPlugin


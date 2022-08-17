--[[
	The main plugin component.
	Consists of the PluginWidget, Toolbar, Button, and Roact tree.
]]

local main = script.Parent.Parent
-- local _Types = require(main.Src.Types) -- uncomment to use types
local Roact = require(main.Packages.Roact)

local Framework = require(main.Packages.Framework)
-- local _Colors = Framework.Style.Colors

local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget
local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton

local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin
local Mouse = ContextServices.Mouse

local MakeTheme = require(main.Src.Resources.MakeTheme)

local SourceStrings = main.Src.Resources.Localization.SourceStrings
local LocalizedStrings = main.Src.Resources.Localization.LocalizedStrings

local GraphicsPane = require(main.Src.Components.GraphicsPane)
local NetworkPane = require(main.Src.Components.NetworkPane)
local MultiTouchPane = require(main.Src.Components.MultiTouchPane)
local MultiTouchController = require(main.Src.Controllers.MultiTouchController)

local UI = Framework.UI
local Pane = UI.Pane

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

require(main.Bin.defineLuaFlags)

local checkFFlagStudioEnableMultiTouchGestureEmulation = function()
	return game:GetFastFlag("StudioEnableMultiTouchGestureEmulation")
		and game:GetFastFlag("StudioViewportStateInPlatform2")
		and game:GetFastFlag("StudioUnlockMouseWhenEmulating")
end

export type Props = {
	OnClick: () -> (),
	Text: string,
}

type _Props = Props & {
	Localization: any,
	Stylizer: any,
}

function MainPlugin:init(_props)
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

	self.localization = ContextServices.Localization.new({
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
		pluginName = "DeviceEmulator",
	})
	self.analytics = ContextServices.Analytics.new(function()
		return {}
	end, {})

	if checkFFlagStudioEnableMultiTouchGestureEmulation() then
		self.multiTouchController = MultiTouchController.new()
	end
end

function MainPlugin:willUnmount()
	if self.multiTouchController then
		self.multiTouchController:destroy()
	end
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
			Icon = "rbxasset://textures/DeviceEmulator/emulator.png",
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

	local graphicsPane = Roact.createElement(GraphicsPane, {})
	local networkPane = Roact.createElement(NetworkPane, {})

	local multiTouchPane = nil
	if checkFFlagStudioEnableMultiTouchGestureEmulation() then
		multiTouchPane = Roact.createElement(MultiTouchPane, {})
	end

	return ContextServices.provide({
		Plugin.new(plugin),
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
			[Roact.Change.Enabled] = self.onWidgetEnabledChanged,
		}, {
			MainPane = Roact.createElement(Pane, {
				Style = "Box",
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromOffset(0, 0),
			}, {
				ContainerPane = Roact.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.Y,
					AnchorPoint = Vector2.new(0, 0),
					Position = UDim2.fromScale(0, 0),
					Layout = Enum.FillDirection.Vertical,
					Padding = 5,
					Spacing = 5,
				}, {
					GraphicsPane = graphicsPane,
					NetworkPane = networkPane,
					MultiTouchPane = multiTouchPane,
				}),
			}),
		}),
	})
end

return MainPlugin

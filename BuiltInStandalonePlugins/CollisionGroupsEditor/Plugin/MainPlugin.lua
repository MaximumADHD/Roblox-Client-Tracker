--[[
	The main plugin component.
	Consists of the PluginWidget, Toolbar, Button, and Roact tree.
]]

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)

local Framework = require(main.Packages.Framework)

local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget
local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton

local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin
local Mouse = ContextServices.Mouse

local MakeTheme = require(main.Resources.MakeTheme)

local SourceStrings = main.Resources.SourceStrings
local LocalizedStrings = main.Resources.LocalizedStrings

local Components = main.Plugin.Components
local Gui = require(Components.Gui)

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
	local plugin = props.Plugin

	self.state = {
		enabled = false,
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
			enabled = enabled
		})
	end

	self.onWidgetEnabledChanged = function(widget)
		self:setState({
			enabled = widget.Enabled
		})
	end

	self.localization = ContextServices.Localization.new({
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
		pluginName = "CGE",
	})

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
			Id = "collisionGroupsEditorButton",
			Title = self.localization:getText("Main", "Title"),
			Tooltip = self.localization:getText("Main", "Title"),
			Icon = "rbxasset://textures/CollisionGroupsEditor/ToolbarIcon.png",
			OnClick = self.toggleEnabled,
			ClickableWhenViewportHidden = true,
		}),
	}
end

function MainPlugin:render()
	local props = self.props
	local state = self.state
	local plugin = props.Plugin
	local enabled = state.enabled and state.uiDmLoaded

	return ContextServices.provide({
		Plugin.new(plugin),
		Mouse.new(plugin:getMouse()),
		MakeTheme(),
		self.localization,
		self.analytics,
	}, {
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = "collisionGroupsEditorToolbar",
			RenderButtons = function(toolbar)
				return self:renderButtons(toolbar)
			end,
		}),

		MainWidget = Roact.createElement(DockWidget, {
			Enabled = enabled,
			Title = self.localization:getText("Main", "Title"),
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Right,
			Size = Vector2.new(640, 480),
			MinSize = Vector2.new(128, 200),
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
			[Roact.Change.Enabled] = self.onWidgetEnabledChanged,
		}, {
			Gui = Roact.createElement(Gui, {
				plugin = plugin,
			}),
		}),
	})
end

return MainPlugin

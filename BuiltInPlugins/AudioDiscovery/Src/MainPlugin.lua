--[[
	The main plugin component.
	Consists of the PluginWidget, Toolbar, Button, and Roact tree.
]]

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)
local Rodux = require(main.Packages.Rodux)

local Framework = require(main.Packages.Framework)

local UpdateRows = require(main.Src.Actions.UpdateRows)

local Util = Framework.Util
local ThunkWithArgsMiddleware = Util.ThunkWithArgsMiddleware

local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget
local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton

local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin
local Mouse = ContextServices.Mouse
local Store = ContextServices.Store

local MainReducer = require(main.Src.Reducers.MainReducer)

local Style = Framework.Style
local makeTheme = Style.makeTheme

local TranslationDevelopmentTable = main.Src.Resources.Localization.TranslationDevelopmentTable
local TranslationReferenceTable = main.Src.Resources.Localization.TranslationReferenceTable

local Components = main.Src.Components
local Window = require(Components.Window)
 
local DiscoverAudio = require(main.Src.Thunks.DiscoverAudio)
local Analytics = require(main.Src.Util.Analytics)

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
	self.state = {
		enabled = false,
	}
	self.toggleEnabled = function()
		self.setEnabled(not self.state.enabled)
	end

	self.onClose = function()
		self.setEnabled(false)
	end

	self.onRestore = function(enabled)
		self.setEnabled(enabled)
	end

	self.onWidgetEnabledChanged = function(widget)
		self.setEnabled(widget.Enabled)
	end

	self.setEnabled = function(enabled: boolean)
		self:setState({
			enabled = enabled
		})
	end

	local middleware = {
		ThunkWithArgsMiddleware({
			SoundAssetChecker = props.SoundAssetChecker,
		})
	}

	self.store = Rodux.Store.new(MainReducer, nil, middleware, nil)

	self.localization = ContextServices.Localization.new({
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
		pluginName = "AudioDiscovery",
	})
	self.analytics = ContextServices.Analytics.new(function()
		return {}
	end, {})
end

function MainPlugin:didUpdate()
	if self.state.enabled then
		self.store:dispatch(DiscoverAudio())
	end
end

function MainPlugin:didMount()
	Analytics:reportOpen()
	self.connection = self.props.SoundAssetChecker.soundsFound:Connect(function(result)
		self.store:dispatch(UpdateRows(result))
	end)
end

function MainPlugin:willUnmount()
	self.connection:Disconnect()
end

function MainPlugin:renderButtons(toolbar)
	local enabled = self.state.enabled
	return {
		Toggle = Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = enabled,
			Title = self.localization:getText("Plugin", "Button"),
			Tooltip = self.localization:getText("Plugin", "Description"),
			Icon = "rbxasset://textures/AudioDiscovery/icon.png",
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
	local getTheme = makeTheme(main.Src.Components)

	return ContextServices.provide({
		Plugin.new(plugin),
		Store.new(self.store),
		Mouse.new(plugin:getMouse()),
		getTheme(),
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
			Window = Roact.createElement(Window),
		}),
	})
end

return MainPlugin

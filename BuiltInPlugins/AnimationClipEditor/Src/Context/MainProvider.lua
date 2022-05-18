--[[
	The main provider of the plugin, which creates a tree of all providers.

	Props:
		Theme theme = The main theme for the plugin.
		PluginGui focusGui = The PluginGui to insert top-level components into.
		Store store = The main Rodux store for the plugin.
		Plugin plugin = The plugin object itself.
		Localization localization = The object used to get localized text for display.
		PluginActions pluginActions = Actions used for a plugin menu
		Mouse mouse = A PluginMouse object.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local Constants = require(Plugin.Src.Util.Constants)
local ContextServices = Framework.ContextServices
local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local MainProvider = Roact.PureComponent:extend("MainProvider")

function MainProvider:render()
	local analytics = self.props.analytics
	local children = self.props[Roact.Children]
	local focusGui = self.props.focusGui and ContextServices.Focus.new(self.props.focusGui)
	local localization = self.props.localization
	local mouse = self.props.mouse and ContextServices.Mouse.new(self.props.mouse)
	local plugin = self.props.plugin and ContextServices.Plugin.new(self.props.plugin)
	local store = self.props.store and ContextServices.Store.new(self.props.store)
	local theme = self.props.theme
	local actions = self.props.pluginActions
	local signals = self.props.signals
	local calloutController = self.props.calloutController

	return ContextServices.provide({
		analytics,
		focusGui,
		plugin,
		localization,
		theme,
		store,
		mouse,
		actions,
		signals,
		calloutController,
	}, children)
end

return MainProvider
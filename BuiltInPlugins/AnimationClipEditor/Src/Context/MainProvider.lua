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
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local UILibrary = require(Plugin.UILibrary)
local Constants = require(Plugin.Src.Util.Constants)

local Theme = require(Plugin.Src.Context.Theme)
local ThemeProvider = Theme.Provider
local Localizing = UILibrary.Localizing
local LocalizationProvider = Localizing.Provider
local UILibraryProvider = require(Plugin.Src.Context.UILibraryProvider)
local StoreProvider = RoactRodux.StoreProvider
local PluginContext = require(Plugin.Src.Context.Plugin)
local PluginProvider = PluginContext.Provider
local ActionContext = require(Plugin.Src.Context.ActionContext)
local ActionProvider = ActionContext.Provider
local MouseContext = require(Plugin.Src.Context.Mouse)
local MouseProvider = MouseContext.Provider
local Analytics = require(Plugin.Src.Util.Analytics)
local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local SetAnalytics = require(Plugin.Src.Actions.SetAnalytics)

local MainProvider = Roact.PureComponent:extend("MainProvider")

function MainProvider:addProvider(root, provider, props)
	return Roact.createElement(provider, props, {root})
end

function MainProvider:render()
	local props = self.props
	local children = props[Roact.Children]
	local root = Roact.oneChild(children)

	-- UILibrary
	local focusGui = props.focusGui
	local plugin = props.plugin
	if focusGui then
		root = self:addProvider(root, UILibraryProvider, {
			focusGui = focusGui,
			plugin = plugin,
		})
	end

	-- Localization
	local localization = props.localization
	if localization then
		root = self:addProvider(root, LocalizationProvider, {
			localization = localization,
		})
	end

	-- Theme
	local theme = props.theme
	if theme then
		root = self:addProvider(root, ThemeProvider, {
			theme = theme,
		})
	end

	-- Rodux Store
	local store = props.store
	if store then
		root = self:addProvider(root, StoreProvider, {
			store = store,
		})
	end

	-- Plugin Actions
	local pluginActions = props.pluginActions
	if pluginActions then
		root = self:addProvider(root, ActionProvider, {
			pluginActions = pluginActions,
		})
	end

	-- Plugin
	if plugin then
		root = self:addProvider(root, PluginProvider, {
			plugin = plugin,
		})
	end

	-- Mouse
	local mouse = props.mouse
	if mouse then
		root = self:addProvider(root, MouseProvider, {
			mouse = mouse,
		})
	end

	return root
end

function MainProvider:didMount()
	if not Constants.USE_MOCK_ANALYTICS and self.props.store and not DebugFlags.RunTests() and not DebugFlags.RunRhodiumTests() then
		self.props.store:dispatch(SetAnalytics(Analytics.new()))
	end
end

function MainProvider:willUnmount()
	local props = self.props
	local theme = props.theme
	local localization = props.localization
	if theme then
		theme:destroy()
	end
	if localization then
		localization:destroy()
	end
end

return MainProvider
--[[
	The main provider of the plugin, which creates a tree of all providers.

	Props:
		Theme theme = The main theme for the plugin.
		PluginGui focusGui = The PluginGui to insert top-level components into.
		Store store = The main Rodux store for the plugin.
		Plugin plugin = The plugin object itself.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Libs.Roact)
local RoactRodux = require(Plugin.Libs.RoactRodux)
local UILibrary = require(Plugin.Libs.UILibrary)

local Theme = require(Plugin.Core.Context.Theme)
local ThemeProvider = Theme.Provider
local LocalizationProvider = UILibrary.Localizing.Provider
local UILibraryProvider = require(Plugin.Core.Context.UILibraryProvider)
local StoreProvider = RoactRodux.StoreProvider
local PluginContext = require(Plugin.Core.Context.Plugin)
local PluginProvider = PluginContext.Provider

local MainProvider = Roact.PureComponent:extend("MainProvider")

function MainProvider:addProvider(root, provider, props)
	return Roact.createElement(provider, props, {root})
end

function MainProvider:render()
	local props = self.props
	local children = props[Roact.Children]
	local root = Roact.oneChild(children)

	-- Rodux Store
	local store = props.store
	if store then
		root = self:addProvider(root, StoreProvider, {
			store = store,
		})
	end

	-- UILibrary
	local focusGui = props.focusGui
	local plugin = props.plugin
	root = self:addProvider(root, UILibraryProvider, {
		focusGui = focusGui,
		plugin = plugin,
	})

	-- Theme
	local theme = props.theme
	if theme then
		root = self:addProvider(root, ThemeProvider, {
			theme = theme,
		})
	end

	-- Plugin
	if plugin then
		root = self:addProvider(root, PluginProvider, {
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

	return root
end

function MainProvider:willUnmount()
	local props = self.props
	local theme = props.theme
	if theme then
		theme:destroy()
	end
end

return MainProvider
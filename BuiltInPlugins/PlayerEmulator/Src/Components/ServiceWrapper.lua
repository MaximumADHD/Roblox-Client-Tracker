--[[
	A centralized place for providers, and an entry point for the Roact trees of plugins
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local Theming = require(Plugin.Src.ContextServices.Theming)
local StudioPlugin = require(Plugin.Src.ContextServices.StudioPlugin)
local UILibraryProvider = require(Plugin.Src.ContextServices.UILibraryProvider)
local Localizing = UILibrary.Localizing


-- props.localization : (UILibary.Localization) an object for fetching translated strings
-- props.plugin : (plugin instance) the instance of plugin defined in main.server.lua
-- props.store : (Rodux Store) the data store for the plugin
-- props.theme : (Resources.PluginTheme) a table for styling elements in the plugin and UILibrary
local ServiceWrapper = Roact.PureComponent:extend("ServiceWrapper")

function ServiceWrapper:init()
	assert(self.props[Roact.Children] ~= nil, "Expected child elements to wrap")
	assert(self.props.localization ~= nil, "Expected a Localization object")
	assert(self.props.plugin ~= nil, "Expected a plugin object")
	assert(self.props.store ~= nil, "Expected a Rodux Store object")
	assert(self.props.theme ~= nil, "Expected a PluginTheme object")
end

local function addProvider(provider, props, rootElement)
	return Roact.createElement(provider, props, { rootElement })
end

function ServiceWrapper:render()
	local children = self.props[Roact.Children]
	local localization = self.props.localization
	local plugin = self.props.plugin
	local store = self.props.store
	local theme = self.props.theme

	-- the order of these providers should be read as bottom up,
	-- things most likely to change or trigger updates should be near the top of the list
	local root = Roact.oneChild(children)
	root = addProvider(RoactRodux.StoreProvider, { store = store }, root)
	root = addProvider(UILibraryProvider, { plugin = plugin }, root)
	root = addProvider(Theming.Provider, { theme = theme, }, root)
	root = addProvider(Localizing.Provider, { localization = localization }, root)
	root = addProvider(StudioPlugin.Provider, { plugin = plugin }, root)

	return root
end

return ServiceWrapper
--[[
	A centralized place for providers, and an entry point for the Roact trees of plugins
]]
local FFlagUpdateDraftsWidgetToDFContextServices = game:GetFastFlag("UpdateDraftsWidgetToDFContextServices")
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local RoactRodux = if FFlagUpdateDraftsWidgetToDFContextServices then nil else require(Plugin.Packages.RoactRodux)
local UILibrary = if FFlagUpdateDraftsWidgetToDFContextServices then nil else require(Plugin.Packages.UILibrary)
local DraftsService = require(Plugin.Src.ContextServices.DraftsService)
local Localizing = if FFlagUpdateDraftsWidgetToDFContextServices then nil else UILibrary.Localizing
local StudioPlugin = if FFlagUpdateDraftsWidgetToDFContextServices then nil else require(Plugin.Src.ContextServices.StudioPlugin)
local Theming = if FFlagUpdateDraftsWidgetToDFContextServices then nil else require(Plugin.Src.ContextServices.Theming)
local UILibraryProvider = if FFlagUpdateDraftsWidgetToDFContextServices then nil else require(Plugin.Src.ContextServices.UILibraryProvider)

-- props.localization : (Localization) an object for fetching translated strings
-- props.plugin : (plugin instance) the instance of plugin defined in main.server.lua
-- props.store : (Rodux Store) the data store for the plugin
-- props.theme : (Resources.MakeTheme) a table for styling elements in the plugin and UILibrary
local ServiceWrapper = Roact.PureComponent:extend("ServiceWrapper")

function ServiceWrapper:init()
	assert(self.props[Roact.Children] ~= nil, "Expected child elements to wrap")
	assert(self.props.draftsService ~= nil, "Expected a DraftsService object")
	assert(self.props.localization ~= nil, "Expected a Localization object")
	assert(self.props.plugin ~= nil, "Expected a plugin object")
	assert(self.props.store ~= nil, "Expected a Rodux Store object")
	assert(self.props.theme ~= nil, "Expected a PluginTheme object")
end

-- TODO: jbousellam - remove with FFlagUpdateDraftsWidgetToDFContextServices
local function addProvider(provider, props, rootElement)
	assert(not FFlagUpdateDraftsWidgetToDFContextServices)
	return Roact.createElement(provider, props, { rootElement })
end

function ServiceWrapper:render()
	local children = self.props[Roact.Children]
	local draftsService = self.props.draftsService
	local localization = self.props.localization
	local plugin = self.props.plugin
	local pluginGui = if FFlagUpdateDraftsWidgetToDFContextServices then self.props.focusGui else self.props.pluginGui
	local store = self.props.store
	local theme = self.props.theme
	local uiLibraryWrapper = if FFlagUpdateDraftsWidgetToDFContextServices then self.props.uiLibWrapper else nil

	if FFlagUpdateDraftsWidgetToDFContextServices then
		return ContextServices.provide({
			ContextServices.Store.new(store),
			ContextServices.Focus.new(pluginGui),
			theme,
			localization,
			ContextServices.Plugin.new(plugin),
			DraftsService.new(draftsService)
		}, {
			-- UILibraryWrapper consumes theme, focus etc. so needs to be wrapped in these items for React.createContext to consume them.
			UILibraryWrapper = ContextServices.provide({
				uiLibraryWrapper
			}, children)
		})
	else
		-- the order of these providers should be read as bottom up,
		-- things most likely to change or trigger updates should be near the top of the list
		local root = Roact.oneChild(children)
		root = addProvider(RoactRodux.StoreProvider, { store = store }, root)
		root = addProvider(UILibraryProvider, { plugin = plugin, pluginGui = pluginGui }, root)
		root = addProvider(Theming.Provider, { theme = theme, }, root)
		root = addProvider(Localizing.Provider, { localization = localization }, root)
		root = addProvider(StudioPlugin.Provider, { plugin = plugin }, root)
		root = addProvider(DraftsService.Provider, { value = draftsService}, root)

		return root
	end
end

return ServiceWrapper

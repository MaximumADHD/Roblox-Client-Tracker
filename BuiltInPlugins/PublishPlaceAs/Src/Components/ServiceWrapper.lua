--[[
	A centralized place for providers, and an entry point for the Roact trees of plugins
]]

local FFlagUpdatePublishPlacePluginToDevFrameworkContext = game:GetFastFlag("UpdatePublishPlacePluginToDevFrameworkContext")
local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")
local FFlagLuobuDevPublishLuaTempOptIn = game:GetFastFlag("LuobuDevPublishLuaTempOptIn")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Localizing = require(Plugin.Packages.UILibrary).Localizing

local Theming = require(Plugin.Src.ContextServices.Theming)
local UILibraryProvider = require(Plugin.Src.ContextServices.UILibraryProvider)

local ContextServices = require(Plugin.Packages.Framework.ContextServices)

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
	assert(self.props.focusGui ~= nil, "Expected a FocusGui object")
	if FFlagUpdatePublishPlacePluginToDevFrameworkContext then
		assert(self.props.uiLibraryWrapper ~= nil, "Expected a UiLibraryWrapper object")
	end
	if FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn then
		assert(self.props.mouse ~= nil, "Expected a Mouse object")
	end
end

local function addProvider(provider, props, rootElement)
	return Roact.createElement(provider, props, { rootElement })
end

function ServiceWrapper:render()
	local children = self.props[Roact.Children]
	local localization = self.props.localization
	local plugin = self.props.plugin
	local uiLibraryWrapper = self.props.uiLibraryWrapper
	local focusGui = self.props.focusGui
	local store = self.props.store
	local theme = self.props.theme
	local mouse = self.props.mouse

	-- the order of these providers should be read as bottom up,
	-- things most likely to change or trigger updates should be near the top of the list
	if FFlagUpdatePublishPlacePluginToDevFrameworkContext then
		return ContextServices.provide({
			ContextServices.Focus.new(focusGui),
			ContextServices.Plugin.new(plugin),
			localization,
			theme,
			uiLibraryWrapper,
			ContextServices.Store.new(store),
			ContextServices.API.new(),
			(FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn) and ContextServices.Mouse.new(mouse) or nil,
		}, children)
	else
		local root = Roact.oneChild(children)
		root = addProvider(RoactRodux.StoreProvider, { store = store }, root)
		root = addProvider(UILibraryProvider, { plugin = plugin, focusGui = focusGui, }, root)
		root = addProvider(Theming.Provider, { theme = theme, }, root)
		root = addProvider(Localizing.Provider, { localization = localization }, root)

		return root
	end
end

return ServiceWrapper

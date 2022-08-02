--[[
	A centralized place for providers, and an entry point for the Roact trees of plugins
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local DraftsService = require(Plugin.Src.ContextServices.DraftsService)

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

function ServiceWrapper:render()
	local children = self.props[Roact.Children]
	local draftsService = self.props.draftsService
	local localization = self.props.localization
	local plugin = self.props.plugin
	local pluginGui = self.props.focusGui
	local store = self.props.store
	local theme = self.props.theme
	local uiLibraryWrapper = self.props.uiLibWrapper

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
end

return ServiceWrapper

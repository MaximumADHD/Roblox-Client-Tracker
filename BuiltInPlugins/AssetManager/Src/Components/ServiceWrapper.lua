--[[
	A centralized place for providers, and an entry point for the Roact trees of plugins
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

-- props.localization : (UILibary.Localization) an object for fetching translated strings
-- props.plugin : (plugin instance) the instance of plugin defined in main.server.lua
-- props.store : (Rodux Store) the data store for the plugin
-- props.theme : (Resources.PluginTheme) a table for styling elements in the plugin and UILibrary
local ServiceWrapper = Roact.PureComponent:extend("ServiceWrapper")

function ServiceWrapper:init()
	assert(self.props.analytics ~= nil, "Expected a Analytics object")
	assert(self.props[Roact.Children] ~= nil, "Expected child elements to wrap")
	assert(self.props.localization ~= nil, "Expected a Localization object")
	assert(self.props.plugin ~= nil, "Expected a plugin object")
	assert(self.props.store ~= nil, "Expected a Rodux Store object")
	assert(self.props.theme ~= nil, "Expected a PluginTheme object")
	assert(self.props.focusGui ~= nil, "Expected a focusGui object")
	assert(self.props.mouse ~= nil, "Expected a PluginMouse object")
	assert(self.props.uiLibWrapper ~= nil, "Expected a UILibraryWrapper object")
	assert(self.props.insertAsset ~= nil, "Expected a InsertAsset object")
end


function ServiceWrapper:render()
	local analytics = self.props.analytics
	local children = self.props[Roact.Children]
	local focusGui = self.props.focusGui
	local localization = self.props.localization
	local mouse = self.props.mouse
	local plugin = self.props.plugin
	local store = self.props.store
	local theme = self.props.theme
	local uiLibraryWrapper = self.props.uiLibWrapper
	local calloutController = self.props.calloutController
	local insertAsset = self.props.insertAsset

	return ContextServices.provide({
		analytics,
		ContextServices.Focus.new(focusGui),
		ContextServices.Plugin.new(plugin),
		localization,
		theme,
		ContextServices.Store.new(store),
		ContextServices.API.new(),
		ContextServices.Mouse.new(mouse),
		calloutController,
		insertAsset,
	}, {
		-- UILibraryWrapper consumes theme, focus etc. so needs to be wrapped in these items for React.createContext to consume them.
		UILibraryWrapper = ContextServices.provide({
			uiLibraryWrapper
		}, children)
	})
end

return ServiceWrapper

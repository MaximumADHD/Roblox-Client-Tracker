--[[
	A centralized place for providers, and an entry point for the Roact trees of plugins
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")

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
	assert(self.props.uiLibraryWrapper ~= nil, "Expected a UiLibraryWrapper object")
	assert(self.props.mouse ~= nil, "Expected a Mouse object")
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

	if FFlagDevFrameworkUseCreateContext then
		-- the order of these providers should be read as bottom up,
		-- things most likely to change or trigger updates should be near the top of the list
		return ContextServices.provide({
			ContextServices.Focus.new(focusGui),
			ContextServices.Plugin.new(plugin),
			localization,
			theme,
			ContextServices.Store.new(store),
			ContextServices.API.new(),
			ContextServices.Mouse.new(mouse),
		}, {
			-- UILibraryWrapper consumes theme, focus etc. so needs to be wrapped in these items for React.createContext to consume them.
			UILibraryWrapper = ContextServices.provide({
				uiLibraryWrapper
			}, children)
		})

	else
		-- the order of these providers should be read as bottom up,
		-- things most likely to change or trigger updates should be near the top of the list
		return ContextServices.provide({
			ContextServices.Focus.new(focusGui),
			ContextServices.Plugin.new(plugin),
			localization,
			theme,
			uiLibraryWrapper,
			ContextServices.Store.new(store),
			ContextServices.API.new(),
			ContextServices.Mouse.new(mouse),
		}, children)
	end
end

return ServiceWrapper

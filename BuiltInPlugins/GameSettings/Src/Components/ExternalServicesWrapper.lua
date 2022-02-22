--[[
	Top-level component that wraps several providers into one.

	Props:
		store = A Rodux store to provide in the RoactRodux StoreProvider.
		theme = A Theme object to provide in the ThemeProvider.
		showDialog = A function to display a dialog using a PluginGui.
		mouse = A PluginMouse object to provide in the MouseProvider.
		localization = A Localization object to provide in the LocalizationProvider.
		plugin = A plugin object to provide in the UILibraryProvider
		pluginGui = A pluginGui object to provide in the UILibraryProvider
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local ContextServices = require(Plugin.Framework).ContextServices
local UILibrary = require(Plugin.UILibrary)
local Dialog = require(Plugin.Src.ContextServices.Dialog)

local ServiceWrapper = Roact.PureComponent:extend("ServiceWrapper")

function ServiceWrapper:init()
	assert(self.props[Roact.Children] ~= nil, "Expected child elements to wrap")
	assert(self.props.localization ~= nil, "Expected a Localization object")
	assert(self.props.mouse ~= nil, "Expected a mouse object")
	assert(self.props.plugin ~= nil, "Expected a plugin object")
	assert(self.props.pluginGui ~= nil, "Expected a pluginGui object")
	assert(self.props.theme ~= nil, "Expected a PluginTheme object")
end

function ServiceWrapper:render()
	local children = self.props[Roact.Children]
	local localization = self.props.localization
	local mouse = self.props.mouse
	local plugin = self.props.plugin
	local pluginGui = self.props.pluginGui
	local showDialog = self.props.showDialog
	local store = self.props.store
	local theme = self.props.theme
	local worldRootPhysics = self.props.worldRootPhysics

	-- the order of these providers should be read as bottom up,
	-- things most likely to change or trigger updates should be near the top of the list
	local contextItems = {
		ContextServices.Focus.new(pluginGui),
		ContextServices.Plugin.new(plugin),
		localization,
		theme,
	}

	if showDialog then
		table.insert(contextItems, Dialog.new(showDialog))
	end

	if store then
		table.insert(contextItems, ContextServices.Store.new(store))
	end

	table.insert(contextItems, ContextServices.API.new())
	table.insert(contextItems, ContextServices.Mouse.new(mouse))

	if worldRootPhysics then
		table.insert(contextItems, worldRootPhysics)
	end

	-- UILibraryWrapper consumes theme, focus etc. so needs to be wrapped in these items for React.createContext to consume them.
	return ContextServices.provide(contextItems, {
		UILibraryWrapper = ContextServices.provide({
			ContextServices.UILibraryWrapper.new(UILibrary)
		}, children)
	})
end

return ServiceWrapper

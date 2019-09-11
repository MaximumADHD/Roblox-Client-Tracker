--[[
	This component is responsible for managing the ConvertToPackageWindow page.
	This component will listen to StudioService's signal to bring up the ConvertToPackageWindow
	page.

	Necessary Props:
	assetId, number, will be used to request assetConfig data on didMount.
	If nil we will be considering publshing an new asset.

	store = A store object to be used by Rodux.StoreProvider.
	theme = A theme object to be used by a ThemeProvider.
	networkInterface = A networkInterface object to be used by a NetworkContext.
	plugin = A plugin object to be used by a PluginContext.
]]

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local ContextServices = Plugin.Src.ContextServices
local NetworkContext = require(Plugin.Src.ContextServices.NetworkContext).Context
local Localizing = require(Plugin.Packages.UILibrary).Localizing
local PluginContext = require(Plugin.Src.ContextServices.PluginContext).Provider
local ThemingProvider = require(ContextServices.Theming).Provider
local UILibraryProvider = require(ContextServices.UILibraryProvider)
local ServiceWrapper = Roact.PureComponent:extend("ServiceWrapper")

local function addProvider(provider, props, rootElement)
	return Roact.createElement(provider, props, { rootElement })
end

function ServiceWrapper:init(props)
	assert(self.props[Roact.Children] ~= nil, "Expected child elements to wrap")
	assert(self.props.networkInterface ~= nil, "Expected a NetworkInterface object")
	assert(self.props.localization ~= nil, "Expected a Localization object")
	assert(self.props.plugin ~= nil, "Expected a plugin object")
	assert(self.props.store ~= nil, "Expected a Rodux Store object")
	assert(self.props.theme ~= nil, "Expected a PluginTheme object")
	assert(self.props.focusGui ~= nil, "Expected a FocusGui object")
end

function ServiceWrapper:render()
	local props = self.props
	local store = props.store
	local plugin = props.plugin
	local theme = props.theme
	local focusGui = props.focusGui
	local localization = props.localization
	local networkInterface = props.networkInterface
	local children = self.props[Roact.Children]
	local root = Roact.oneChild(children)

	root = addProvider(NetworkContext, {networkInterface = networkInterface}, root)
	root = addProvider(Localizing.Provider, {localization = localization}, root)
	root = addProvider(UILibraryProvider, {plugin = plugin, focusGui = focusGui}, root)
	root = addProvider(ThemingProvider, {theme = theme}, root)
	root = addProvider(PluginContext, {plugin = plugin, pluginGui = focusGui}, root)
	root = addProvider(RoactRodux.StoreProvider, {store = store}, root)
	return root
end

return ServiceWrapper
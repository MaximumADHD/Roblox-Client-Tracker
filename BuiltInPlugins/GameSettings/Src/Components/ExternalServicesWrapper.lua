--[[
	Top-level component that wraps several providers into one.

	Props:
		store = A Rodux store to provide in the RoactRodux StoreProvider.
		theme = A Theme object to provide in the ThemeProvider.
		showDialog = A function to display a dialog using a PluginGui.
		mouse = A PluginMouse object to provide in the MouseProvider.
		settingsSaverLoader = A SettingsImpl object to provide in the SettingsImplProvider.
		localization = A Localization object to provide in the LocalizationProvider.
		plugin = A plugin object to provide in the UILibraryProvider
		pluginGui = A pluginGui object to provide in the UILibraryProvider
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)

local ContextServices = require(Plugin.Framework.ContextServices)
local UILibraryWrapper = require(Plugin.Framework.ContextServices.UILibraryWrapper)
local ThumbnailLoaderProvider = require(Plugin.Src.Providers.DEPRECATED_ThumbnailLoaderContextItem)
local SettingsImplProvider = require(Plugin.Src.Providers.SettingsImplContextItem)
local DialogProvider = require(Plugin.Src.Providers.DialogProviderContextItem)

local DEPRECATED_SettingsImplProvider = require(Plugin.Src.Providers.DEPRECATED_SettingsImplProvider)
local DEPRECATED_DialogProvider = require(Plugin.Src.Providers.DEPRECATED_DialogProvider)
local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)
local MouseProvider = require(Plugin.Src.Providers.MouseProvider)
local LocalizationProvider = require(Plugin.Src.Providers.LocalizationProvider)
local DEPRECATED_ThumbnailLoaderProvider = require(Plugin.Src.Providers.DEPRECATED_ThumbnailLoaderProvider)
local UILibraryProvider = require(Plugin.Src.Providers.UILibraryProvider)

local ServiceWrapper = Roact.PureComponent:extend("ServiceWrapper")

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

function ServiceWrapper:init()
	assert(self.props[Roact.Children] ~= nil, "Expected child elements to wrap")
	assert(self.props.localization ~= nil, "Expected a Localization object")
	assert(self.props.mouse ~= nil, "Expected a mouse object")
	assert(self.props.plugin ~= nil, "Expected a plugin object")
	assert(self.props.pluginGui ~= nil, "Expected a pluginGui object")
	assert(self.props.theme ~= nil, "Expected a PluginTheme object")
end

local function addProvider(provider, props, rootElement)
	return Roact.createElement(provider, props, { rootElement })
end

function ServiceWrapper:render()
	local children = self.props[Roact.Children]
	local settingsSaverLoader = self.props.settingsSaverLoader
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
	if FFlagStudioConvertGameSettingsToDevFramework then
		local contextItems = {
			ContextServices.Focus.new(pluginGui),
			ContextServices.Plugin.new(plugin),
			localization,
			theme,
			UILibraryWrapper.new(),
		}

		if showDialog then
			table.insert(contextItems, DialogProvider.new(showDialog))
		end

		if settingsSaverLoader then
			table.insert(contextItems, SettingsImplProvider.new(settingsSaverLoader))
		end

		if store then
			if not game:GetFastFlag("GameSettingsNetworkRefactor") then
				table.insert(contextItems, ThumbnailLoaderProvider.new(store))
			end
			table.insert(contextItems, ContextServices.Store.new(store))
		end

		table.insert(contextItems, ContextServices.API.new())
		table.insert(contextItems, ContextServices.Mouse.new(mouse))

		if game:GetFastFlag("GameSettingsNetworkRefactor") and worldRootPhysics then
			table.insert(contextItems, worldRootPhysics)
		end

		return ContextServices.provide(contextItems, children)
	else
		local root = Roact.oneChild(children)
		root = addProvider(UILibraryProvider, { plugin = plugin, pluginGui = pluginGui }, root)
		root = addProvider(MouseProvider, { mouse = mouse}, root)
		root = addProvider(ThemeProvider, { theme = theme, }, root)
		root = addProvider(LocalizationProvider, { localization = localization }, root)

		if settingsSaverLoader then
			root = addProvider(DEPRECATED_SettingsImplProvider, { settingsImpl = settingsSaverLoader }, root)
		end

		if store then
			root = addProvider(RoactRodux.StoreProvider, { store = store }, root)
			root = addProvider(DEPRECATED_ThumbnailLoaderProvider, { store = store }, root)
		end

		if showDialog then
			root = addProvider(DEPRECATED_DialogProvider, { showDialog = showDialog }, root)
		end

		return root
	end
end

return ServiceWrapper
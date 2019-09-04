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

game:DefineFastFlag("StudioGameSettingsUseNewProviderAndThemeStuff", false)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)

local SettingsImplProvider = require(Plugin.Src.Providers.SettingsImplProvider)
local DialogProvider = require(Plugin.Src.Providers.DialogProvider)
local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)
local MouseProvider = require(Plugin.Src.Providers.MouseProvider)
local LocalizationProvider = require(Plugin.Src.Providers.LocalizationProvider)
local ThumbnailLoaderProvider = require(Plugin.Src.Providers.ThumbnailLoaderProvider)
local UILibraryProvider = require(Plugin.Src.Providers.UILibraryProvider)
local UILibraryWrapper = require(Plugin.UILibrary.UILibraryWrapper)

local function DEPRECATED_ExternalServicesWrapper(props)
	local providers = Roact.createElement(LocalizationProvider, {
		localization = props.localization,
	}, {
		Roact.createElement(ThemeProvider, {
			theme = props.theme,
		}, {
			Roact.createElement(UILibraryWrapper, {
				theme = props.theme:getUILibraryTheme(),
				focusGui = props.pluginGui,
			},  {
				Roact.createElement(MouseProvider, {
					mouse = props.mouse,
				}, props[Roact.Children]),
			}),
		}),
	})

	if props.settingsSaverLoader then
		providers = Roact.createElement(SettingsImplProvider, {
			settingsImpl = props.settingsSaverLoader,
		}, {
			providers
		})
	end

	if props.store then
		providers = Roact.createElement(RoactRodux.StoreProvider, {
			store = props.store
		}, {
			providers
		})

		if settings():GetFFlag("StudioGameSettingsAccessPermissions") then
			providers = Roact.createElement(ThumbnailLoaderProvider, {
				store = props.store,
			}, {
				providers
			})
		end
	end
	
	if props.showDialog then
		providers = Roact.createElement(DialogProvider, {
			showDialog = props.showDialog,
		}, {
			providers
		})
	end

	return providers
end

local ServiceWrapper = Roact.PureComponent:extend("ServiceWrapper")

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

	-- the order of these providers should be read as bottom up,
	-- things most likely to change or trigger updates should be near the top of the list
	local root = Roact.oneChild(children)
	root = addProvider(UILibraryProvider, { plugin = plugin, pluginGui = pluginGui }, root)
	root = addProvider(MouseProvider, { mouse = mouse}, root)
	root = addProvider(ThemeProvider, { theme = theme, }, root)
	root = addProvider(LocalizationProvider, { localization = localization }, root)
	
	if settingsSaverLoader then
		root = addProvider(SettingsImplProvider, { settingsImpl = settingsSaverLoader }, root)
	end

	if store then
		root = addProvider(RoactRodux.StoreProvider, { store = store }, root)

		if settings():GetFFlag("StudioGameSettingsAccessPermissions") then
			root = addProvider(ThumbnailLoaderProvider, { store = store }, root)
		end
	end

	if showDialog then
		root = addProvider(DialogProvider, { showDialog = showDialog }, root)
	end

	return root
end

return game:GetFastFlag("StudioGameSettingsUseNewProviderAndThemeStuff") and ServiceWrapper or DEPRECATED_ExternalServicesWrapper
--[[
	Top-level component that wraps several providers into one.

	Props:
		store = A Rodux store to provide in the RoactRodux StoreProvider.
		theme = A Theme object to provide in the ThemeProvider.
		showDialog = A function to display a dialog using a PluginGui.
		mouse = A PluginMouse object to provide in the MouseProvider.
		impl = A SettingsImpl object to provide in the SettingsImplProvider.
		localization = A Localization object to provide in the LocalizationProvider.
]]


local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)

local SettingsImplProvider = require(Plugin.Src.Providers.SettingsImplProvider)
local DialogProvider = require(Plugin.Src.Providers.DialogProvider)
local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)
local MouseProvider = require(Plugin.Src.Providers.MouseProvider)
local LocalizationProvider = require(Plugin.Src.Providers.LocalizationProvider)
local ThumbnailLoaderProvider = require(Plugin.Src.Providers.ThumbnailLoaderProvider)

local UILibraryThemeProvider = require(Plugin.UILibrary.Theming).Provider
local UILibraryCreateTheme = require(Plugin.UILibrary.createTheme)

local UILibraryWrapper = require(Plugin.UILibrary.UILibraryWrapper)

local function getUILibraryTheme()
	local studioTheme = settings().Studio.Theme
	local studioColors = Enum.StudioStyleGuideColor
	return UILibraryCreateTheme({
		backgroundColor = studioTheme:GetColor(studioColors.InputFieldBackground),
		textColor = studioTheme:GetColor(studioColors.MainText),
	})
end

local function ExternalServicesWrapper(props)
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

	if props.impl then
		providers = Roact.createElement(SettingsImplProvider, {
			impl = props.impl,
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

return ExternalServicesWrapper
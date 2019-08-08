local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local ModalProvider = require(Plugin.Core.Providers.ModalProvider)
local NetworkProvider = require(Plugin.Core.Providers.NetworkProvider)
local PluginProvider = require(Plugin.Core.Providers.PluginProvider)
local SettingsProvider = require(Plugin.Core.Providers.SettingsProvider)
local ThemeProvider = require(Plugin.Core.Providers.ThemeProvider)
local LocalizationProvider = require(Plugin.Core.Providers.LocalizationProvider)
local CameraProvider = require(Plugin.Core.Providers.CameraProvider)

local UILibraryWrapper = require(Libs.UILibrary.UILibraryWrapper)

local ExternalServicesWrapper = Roact.Component:extend("ExternalServicesWrapper")

function ExternalServicesWrapper:shouldUpdate()
	return false
end

function ExternalServicesWrapper:render()
	local props = self.props
	local store = props.store
	local plugin = props.plugin
	local pluginGui = props.pluginGui
	local settings = props.settings
	local theme = props.theme
	local networkInterface = props.networkInterface
	local localization = props.localization

	return Roact.createElement(RoactRodux.StoreProvider, {
		store = store
	}, {
		Roact.createElement(PluginProvider, {
			plugin = plugin,
			pluginGui = pluginGui,
		}, {
			Roact.createElement(SettingsProvider, {
				settings = settings,
			}, {
				Roact.createElement(ThemeProvider, {
					theme = theme,
				}, {
					Roact.createElement(UILibraryWrapper, {
						theme = theme:getUILibraryTheme(),
						pluginGui = pluginGui
					}, {
						Roact.createElement(LocalizationProvider, {
							localization = localization
						},{
							Roact.createElement(ModalProvider, {}, {
								Roact.createElement(CameraProvider, {}, {
									Roact.createElement(NetworkProvider, {
										networkInterface = networkInterface,
									}, props[Roact.Children])
								})
							}),
						})
					})
				}),
			}),
		}),
	})
end

return ExternalServicesWrapper

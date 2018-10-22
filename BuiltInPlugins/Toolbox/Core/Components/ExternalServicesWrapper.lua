local Plugin = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ModalProvider = require(Plugin.Core.Providers.ModalProvider)
local NetworkProvider = require(Plugin.Core.Providers.NetworkProvider)
local PluginProvider = require(Plugin.Core.Providers.PluginProvider)
local SettingsProvider = require(Plugin.Core.Providers.SettingsProvider)
local ThemeProvider = require(Plugin.Core.Providers.ThemeProvider)

local function ExternalServicesWrapper(props)
	local store = props.store
	local plugin = props.plugin
	local pluginGui = props.pluginGui
	local settings = props.settings
	local theme = props.theme
	local networkInterface = props.networkInterface

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
					Roact.createElement(ModalProvider, {}, {
						Roact.createElement(NetworkProvider, {
							networkInterface = networkInterface,
						}, props[Roact.Children])
					}),
				}),
			}),
		}),
	})
end

return ExternalServicesWrapper

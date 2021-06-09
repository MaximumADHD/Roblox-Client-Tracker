local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local ModalProvider = require(Plugin.Core.Providers.ModalProvider)
local NetworkProvider = require(Plugin.Core.Providers.NetworkProvider)
local ThemeProvider = require(Plugin.Core.Providers.ThemeProvider)
local LocalizationProvider = require(Plugin.Core.Providers.LocalizationProvider)
local CameraProvider = require(Plugin.Core.Providers.CameraProvider)


local ExternalServicesWrapper = Roact.Component:extend("ExternalServicesWrapper")

function ExternalServicesWrapper:shouldUpdate()
	return false
end

function ExternalServicesWrapper:render()
	local props = self.props
	local pluginGui = props.pluginGui
	local theme = props.theme
	local networkInterface = props.networkInterface
	local localization = props.localization

	return Roact.createElement(ThemeProvider, {
		theme = theme,
	}, {
		Roact.createElement(LocalizationProvider, {
			localization = localization
		}, {
			Roact.createElement(ModalProvider, {
				pluginGui = pluginGui,
			}, {
				Roact.createElement(CameraProvider, {}, {
					Roact.createElement(NetworkProvider, {
						networkInterface = networkInterface,
					}, props[Roact.Children])
				})
			}),
		}),
	})
end

return ExternalServicesWrapper

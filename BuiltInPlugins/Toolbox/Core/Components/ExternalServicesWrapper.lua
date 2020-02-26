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
local UILibraryProvider = require(Plugin.Core.Providers.UILibraryProvider)

local UILibraryWrapper = require(Libs.UILibrary.UILibraryWrapper)

local FFlagToolboxFixThemeIssues = game:DefineFastFlag("ToolboxFixThemeIssues", false)
local FFlagStudioToolboxEnabledDevFramework = game:GetFastFlag("StudioToolboxEnabledDevFramework")


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

	if FFlagStudioToolboxEnabledDevFramework then
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
	else
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
						Roact.createElement(FFlagToolboxFixThemeIssues and UILibraryProvider or UILibraryWrapper, {
							theme = FFlagToolboxFixThemeIssues and theme or theme:getUILibraryTheme(),
							focusGui = pluginGui,
							plugin = plugin,
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
end

return ExternalServicesWrapper

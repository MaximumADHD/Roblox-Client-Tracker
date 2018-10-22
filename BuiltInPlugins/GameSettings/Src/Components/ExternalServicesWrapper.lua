--[[
	Top-level component that wraps several providers into one.

	Props:
		store = A Rodux store to provide in the RoactRodux StoreProvider.
		theme = A Theme object to provide in the ThemeProvider.
		showDialog = A function to display a dialog using a PluginGui.
		impl = A SettingsImpl object to provide in the SettingsImplProvider.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)

local SettingsImplProvider = require(Plugin.Src.Providers.SettingsImplProvider)
local DialogProvider = require(Plugin.Src.Providers.DialogProvider)
local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

local function ExternalServicesWrapper(props)
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = props.store
	}, {
		Roact.createElement(ThemeProvider, {
			theme = props.theme,
		}, {
			Roact.createElement(DialogProvider, {
				showDialog = props.showDialog,
			}, {
				Roact.createElement(SettingsImplProvider, {
					impl = props.impl,
				}, props[Roact.Children])
			}),
		}),
	})
end

return ExternalServicesWrapper
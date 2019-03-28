local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Rodux = require(Libs.Rodux)

local Localization = require(Plugin.Core.Util.Localization)
local Settings = require(Plugin.Core.Util.Settings)
local ToolboxTheme = require(Plugin.Core.Util.ToolboxTheme)
local ToolboxReducerMock = require(Plugin.Core.Reducers.ToolboxReducerMock)
local NetworkInterfaceMock = require(Plugin.Core.Networking.NetworkInterfaceMock)

local ExternalServicesWrapper = require(Plugin.Core.Components.ExternalServicesWrapper)

local function MockWrapper(props)
	local store = props.store or Rodux.Store.new(ToolboxReducerMock, nil, {
		Rodux.thunkMiddleware
	})
	local plugin = props.plugin or nil
	local pluginGui = props.pluginGui or nil
	local settings = props.settings or Settings.new(plugin)
	local theme = props.theme or ToolboxTheme.createDummyThemeManager()
	local networkInterface = props.networkInterface or NetworkInterfaceMock.new()
	local localization = props.localization or Localization.createDummyLocalization()

	return Roact.createElement(ExternalServicesWrapper, {
		store = store,
		plugin = plugin,
		pluginGui = pluginGui,
		settings = settings,
		theme = theme,
		networkInterface = networkInterface,
		localization = localization,
	}, props[Roact.Children])
end

return MockWrapper

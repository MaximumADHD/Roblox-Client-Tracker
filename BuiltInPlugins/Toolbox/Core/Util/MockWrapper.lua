local Plugin = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)

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

	return Roact.createElement(ExternalServicesWrapper, {
		store = store,
		plugin = plugin,
		pluginGui = pluginGui,
		settings = settings,
		theme = theme,
		networkInterface = networkInterface,
	}, props[Roact.Children])
end

return MockWrapper

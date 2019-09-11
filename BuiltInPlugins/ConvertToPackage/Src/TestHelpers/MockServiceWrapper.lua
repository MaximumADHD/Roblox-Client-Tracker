--[[
	A customizable wrapper for tests that supplies all the required providers for component testing
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local NetworkInterfaceMock = require(Plugin.Src.Networking.NetworkInterfaceMock)
local Localization = UILibrary.Studio.Localization
local MockServiceWrapper = Roact.Component:extend("MockServiceWrapper")

function MockServiceWrapper:render()
	local localization = self.props.localization
	if not localization then
		localization = Localization.mock()
	end

	local storeState = self.props.storeState
	local store = Rodux.Store.new(MainReducer, storeState, { Rodux.thunkMiddleware })

	local theme = self.props.theme
	if not theme then
		theme = PluginTheme.new()
	end
	local networkInterface = self.props.networkInterface or NetworkInterfaceMock.new()
	local plugin = self.props.plugin or {}
	local focusGui = self.props.focusGui or {}
	local children = self.props[Roact.Children]
	return Roact.createElement(ServiceWrapper, {
		localization = localization,
		plugin = plugin,
		focusGui = focusGui,
		networkInterface = networkInterface,
		store = store,
		theme = theme,
	}, children)
end

return MockServiceWrapper
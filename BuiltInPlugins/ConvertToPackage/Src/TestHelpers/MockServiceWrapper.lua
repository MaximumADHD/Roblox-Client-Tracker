--[[
	A customizable wrapper for tests that supplies all the required providers for component testing
]]
local FFlagUpdateConvertToPackageToDFContextServices = game:GetFastFlag("UpdateConvertToPackageToDFContextServices")
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)
local PluginTheme = if FFlagUpdateConvertToPackageToDFContextServices then require(Plugin.Src.Resources.MakeTheme) else require(Plugin.Src.Resources.DEPRECATED_UILibraryTheme)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local NetworkInterfaceMock = require(Plugin.Src.Networking.NetworkInterfaceMock)
local Localization = if FFlagUpdateConvertToPackageToDFContextServices then ContextServices.Localization else UILibrary.Studio.Localization
local UILibraryWrapper = ContextServices.UILibraryWrapper

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
		theme = if FFlagUpdateConvertToPackageToDFContextServices then PluginTheme(true) else PluginTheme.new()
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
		uiLibWrapper = if FFlagUpdateConvertToPackageToDFContextServices then UILibraryWrapper.new(UILibrary) else nil,
	}, children)
end

return MockServiceWrapper
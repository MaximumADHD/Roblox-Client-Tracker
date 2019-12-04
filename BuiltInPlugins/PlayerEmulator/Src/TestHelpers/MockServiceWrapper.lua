--[[
	A customizable wrapper for tests that supplies all the required providers for component testing
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)

local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local MockPlugin = require(Plugin.Src.TestHelpers.MockPlugin)
local Http = require(Plugin.Packages.Http)
local NetworkingContext = require(Plugin.Src.ContextServices.NetworkingContext)

local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local globals = require(Plugin.Src.Util.CreatePluginGlobals)

local MockServiceWrapper = Roact.Component:extend("MockServiceWrapper")

local function mockFocus()
	return Instance.new("ScreenGui")
end

function MockServiceWrapper:render()
	local localization = self.props.localization
	if not localization then
		localization = ContextServices.Localization.mock()
	end

	local pluginInstance = self.props.plugin
	if not pluginInstance then
		pluginInstance = MockPlugin.new()
	end

	local focusGui = self.props.focusGui
	if not focusGui then
		focusGui = mockFocus()
	end

	local storeState = self.props.storeState
	local store = Rodux.Store.new(MainReducer, storeState, { Rodux.thunkMiddleware })

	local networkingImpl = Http.Networking.mock()

	return ContextServices.provide({
		ContextServices.Plugin.new(pluginInstance),
		ContextServices.Focus.new(focusGui),
		globals.theme,
		localization,
		ContextServices.Store.new(store),
		NetworkingContext.new(networkingImpl),
		globals.uiLibraryWrapper,
	}, self.props[Roact.Children])
end

return MockServiceWrapper
--[[
	A customizable wrapper for tests that supplies all the required providers for component testing
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)

local MockPlugin = require(Plugin.Src.TestHelpers.MockPlugin)
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local UILibraryWrapper = require(Plugin.Packages.Framework.ContextServices.UILibraryWrapper)
local Localization = ContextServices.Localization

local MockServiceWrapper = Roact.Component:extend("MockServiceWrapper")

-- props : (table, optional)
function MockServiceWrapper.getMockGlobals(props)
	if not props then
		props = {}
	end

	local localization = props.localization
	if not localization then
		localization = Localization.mock()
	end

	local focusGui = props.focusGui
	if not focusGui then
		focusGui = Instance.new("ScreenGui")
	end

	local pluginInstance = props.plugin
	if not pluginInstance then
		pluginInstance = MockPlugin.new()
	end

	local mouse = props.mouse
	if not mouse then
		mouse = pluginInstance:GetMouse()
	end

	local storeState = props.storeState
	local store = Rodux.Store.new(MainReducer, storeState, { Rodux.thunkMiddleware })

	local theme = props.theme
	if not theme then
		theme = PluginTheme.mock()
	end

	return {
		focusGui = focusGui,
		plugin = pluginInstance,
		localization = localization,
		theme = theme,
		uiLibWrapper = UILibraryWrapper.new(),
		mouse = mouse,
		store = store,
	}
end

-- props.localization : (optional, UILibrary.Localization)
-- props.plugin : (optional, plugin)
-- props.storeState : (optional, table) a default state for the MainReducer
-- props.theme : (optional, Resources.PluginTheme)
-- props.api : (optional, Http.API)
function MockServiceWrapper:render()
	local globals = MockServiceWrapper.getMockGlobals(self.props)
	return Roact.createElement(ServiceWrapper, globals, self.props[Roact.Children])
end

return MockServiceWrapper
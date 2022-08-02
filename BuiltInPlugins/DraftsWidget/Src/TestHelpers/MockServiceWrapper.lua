--[[
	A customizable wrapper for tests that supplies all the required providers for component testing
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local Localization = ContextServices.Localization
local UILibraryWrapper = ContextServices.UILibraryWrapper

local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local MockDraftsService = require(Plugin.Src.TestHelpers.MockDraftsService)
local MockPlugin = require(Plugin.Src.TestHelpers.MockPlugin)
local PluginTheme = require(Plugin.Src.Resources.MakeTheme)
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)

local MockServiceWrapper = Roact.Component:extend("MockServiceWrapper")

-- props.localization : (optional, ContextServices.Localization)
-- props.plugin : (optional, plugin)
-- props.storeState : (optional, table) a default state for the MainReducer
-- props.theme : (optional, Resources.PluginTheme)
function MockServiceWrapper:render()
	local draftsService = self.props.draftsService
	if not draftsService then
		draftsService = MockDraftsService.new(MockDraftsService.TestCases.DEFAULT)
	end

	local localization = self.props.localization
	if not localization then
		localization = Localization.mock()
	end

	local pluginInstance = self.props.plugin
	if not pluginInstance then
		pluginInstance = MockPlugin.new()
	end

	local storeState = self.props.storeState
	local store = Rodux.Store.new(MainReducer, storeState, { Rodux.thunkMiddleware })

	local theme = self.props.theme
	if not theme then
		theme = PluginTheme(true)
	end

	return Roact.createElement(ServiceWrapper, {
		draftsService = draftsService,
		localization = localization,
		plugin = pluginInstance,
		store = store,
		theme = theme,
		uiLibWrapper = UILibraryWrapper.new(UILibrary),
	}, self.props[Roact.Children])
end

return MockServiceWrapper
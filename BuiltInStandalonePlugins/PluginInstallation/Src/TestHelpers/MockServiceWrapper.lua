--[[
	A customizable wrapper for tests that supplies all the required providers for component testing
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local TestHelpers = require(Plugin.Packages.TestHelpers)
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local Localization = UILibrary.Studio.Localization

local MockServiceWrapper = Roact.Component:extend("MockSkeletonEditorServiceWrapper")

-- props.localization : (optional, UILibrary.Localization)
-- props.plugin : (optional, plugin)
-- props.storeState : (optional, table) a default state for the MainReducer
-- props.theme : (optional, Resources.PluginTheme)
function MockServiceWrapper:render()
	local localization = self.props.localization
	if not localization then
		localization = Localization.mock()
	end

	local pluginInstance = self.props.plugin
	if not pluginInstance then
		pluginInstance = TestHelpers.MockPlugin.new()
	end

	local storeState = self.props.storeState
	local store = Rodux.Store.new(MainReducer, storeState, { Rodux.thunkMiddleware })

	local theme = self.props.theme
	if not theme then
		theme = PluginTheme.mock()
	end

	return Roact.createElement(ServiceWrapper, {
		localization = localization,
		plugin = pluginInstance,
		store = store,
		theme = theme,
	}, self.props[Roact.Children])
end

return MockServiceWrapper
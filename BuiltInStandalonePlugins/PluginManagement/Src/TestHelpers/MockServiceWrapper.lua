--[[
	A customizable wrapper for tests that supplies all the required providers for component testing
]]
local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary2")
-- remove with FFlagPluginManagementRemoveUILibrary
if FFlagPluginManagementRemoveUILibrary then
	assert("You shouldn't be using this anymore!")
end

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary) -- remove with FFlagPluginManagementRemoveUILibrary
local Http = require(Plugin.Packages.Http)
local TestHelpers = require(Plugin.Packages.TestHelpers)
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local Localization
if FFlagPluginManagementRemoveUILibrary then
	Localization = require(Plugin.Packages.Framework.ContextServices).Localization
else
	Localization = UILibrary.Studio.Localization
end

local MockServiceWrapper = Roact.Component:extend("MockSkeletonEditorServiceWrapper")

-- props : (table, optional)
function MockServiceWrapper.getMockGlobals(props)
	if not props then
		props = {}
	end

	local api = props.api
	if not api then
		api = Http.API.mock()
	end

	local localization = props.localization
	if not localization then
		localization = Localization.mock()
	end

	local focusGui = props.focusGui
	if not focusGui then
		focusGui = {}
	end

	local pluginInstance = props.plugin
	if not pluginInstance then
		-- if the player has provided a target container, parent mock elements there
		local container = props.container
		pluginInstance = TestHelpers.MockPlugin.new(container)
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
		api = api,
		focusGui = focusGui,
		localization = localization,
		mouse = mouse,
		plugin = pluginInstance,
		store = store,
		theme = theme,
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
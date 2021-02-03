--[[
	A customizable wrapper for tests that supplies all the required providers for component testing
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)

local MockPlugin = require(Plugin.Packages.Framework.TestHelpers.Instances.MockPlugin)
local MainProvider = require(Plugin.Src.Context.MainProvider)
local PluginTheme = require(Plugin.Src.Util.Theme)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local UILibraryWrapper = require(Plugin.Packages.Framework.ContextServices.UILibraryWrapper)
local Localization = ContextServices.Localization
local Signals = require(Plugin.Src.Context.Signals)
local Constants = require(Plugin.Src.Util.Constants)

local MockWrapper = Roact.Component:extend("MockWrapper")

-- props : (table, optional)
function MockWrapper.getMockGlobals(props)
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

	focusGui.Name = "FocusGuiMock"
	if props.Container then
		focusGui.Parent = props.Container
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

	local pluginActions = ContextServices.PluginActions.new(pluginInstance, {
		{
			id = "rerunLastStory",
			text = "MOCK",
		}
	})

	local signals = Signals.new(Constants.SIGNAL_KEYS)

	local analytics = ContextServices.Analytics.mock()

	return {
		focusGui = focusGui,
		plugin = pluginInstance,
		localization = localization,
		theme = theme,
		mouse = mouse,
		store = store,
		analytics = analytics,
		pluginActions = pluginActions,
		signals = signals
	}
end

-- props.localization : (optional, Framework.Localization)
-- props.plugin : (optional, plugin)
-- props.storeState : (optional, table) a default state for the MainReducer
-- props.theme : (optional, Resources.PluginTheme)
-- props.api : (optional, Http.API)
function MockWrapper:render()
	local globals = MockWrapper.getMockGlobals(self.props)
	return Roact.createElement(MainProvider, globals, self.props[Roact.Children])
end

return MockWrapper
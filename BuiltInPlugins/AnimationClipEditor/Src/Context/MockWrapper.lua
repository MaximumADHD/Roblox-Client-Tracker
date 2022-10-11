--[[
	A customizable wrapper for tests that supplies all the required providers for component testing
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local ServiceWrapper = Framework.TestHelpers.ServiceWrapper

local MockPlugin = Framework.TestHelpers.Instances.MockPlugin
local MainProvider = require(Plugin.Src.Context.MainProvider)
local PluginTheme = require(Plugin.Src.Util.Theme)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local Localization = ContextServices.Localization
local Signals = require(Plugin.Src.Context.Signals)
local Constants = require(Plugin.Src.Util.Constants)
local CalloutController = require(Plugin.Src.Util.CalloutController)

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
		theme = PluginTheme(true)
	end

	local pluginActions = ContextServices.PluginActions.new(pluginInstance, {
		{
			id = "rerunLastStory",
			text = "MOCK",
		},
	})

	local signals = Signals.new(Constants.SIGNAL_KEYS)

	local analytics = ContextServices.Analytics.mock()

	local calloutController = CalloutController.new(ServiceWrapper.new("CalloutService", true):asService())

	return {
		focusGui = focusGui,
		plugin = pluginInstance,
		localization = localization,
		theme = theme,
		mouse = mouse,
		store = store,
		analytics = analytics,
		pluginActions = pluginActions,
		signals = signals,
		calloutController = calloutController,
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

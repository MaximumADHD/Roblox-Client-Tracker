--[[
	A customizable wrapper for tests that supplies all the required providers for component testing
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)
local MakeTheme = require(Plugin.Src.Resources.MakeTheme)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)
local Localization = UILibrary.Studio.Localization

local MockServiceWrapper = Roact.Component:extend("MockServiceWrapper")

-- props.localization : (optional, UILibrary.Localization)
-- props.plugin : (optional, plugin)
-- props.storeState : (optional, table) a default state for the MainReducer
-- props.theme : (optional, Resources.PluginTheme)
function MockServiceWrapper:render()
	local localization = self.props.localization
	if not localization then
		localization = Localization.mock()
	end

	local storeState = self.props.storeState
	local store = Rodux.Store.new(MainReducer, storeState, MainMiddleware)

	local theme = self.props.theme
	if not theme then
		theme = MakeTheme(true)
	end

	return Roact.createElement(ServiceWrapper, {
		localization = localization,
		plugin = {},
		focusGui = {},
		store = store,
		theme = theme,
	}, self.props[Roact.Children])
end

return MockServiceWrapper

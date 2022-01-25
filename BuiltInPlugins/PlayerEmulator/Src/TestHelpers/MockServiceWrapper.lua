--[[
	A customizable wrapper for tests that supplies all the required providers for component testing
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)

local createMainReducer = require(Plugin.Src.Reducers.createMainReducer)
local MockStudioPlugin = require(Plugin.Src.TestHelpers.MockStudioPlugin)
local Http = require(Plugin.Packages.Http)
local NetworkingContext = require(Plugin.Src.ContextServices.NetworkingContext)
local MakeTheme = require(Plugin.Src.Resources.MakeTheme)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local UILibraryWrapper = ContextServices.UILibraryWrapper

local MockServiceWrapper = Roact.Component:extend("MockServiceWrapper")

local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")

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
		pluginInstance = MockStudioPlugin.new()
	end

	local focusGui = self.props.focusGui
	if not focusGui then
		focusGui = mockFocus()
	end

	local storeState = self.props.storeState
	local store = Rodux.Store.new(createMainReducer(), storeState, { Rodux.thunkMiddleware })

	local networkingImpl = Http.Networking.mock()
	
	if FFlagDevFrameworkUseCreateContext then
		return ContextServices.provide({
			ContextServices.Plugin.new(pluginInstance),
			ContextServices.Focus.new(focusGui),
			MakeTheme(),
			localization,
			ContextServices.Store.new(store),
			NetworkingContext.new(networkingImpl),
		}, {
			UILibraryProvider = ContextServices.provide({
				UILibraryWrapper.new(),
			}, self.props[Roact.Children])
		})
	else
		return ContextServices.provide({
			ContextServices.Plugin.new(pluginInstance),
			ContextServices.Focus.new(focusGui),
			MakeTheme(),
			localization,
			ContextServices.Store.new(store),
			NetworkingContext.new(networkingImpl),
			UILibraryWrapper.new(),
		}, self.props[Roact.Children])
	end
end

return MockServiceWrapper

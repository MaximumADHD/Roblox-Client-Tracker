--[[
	Used for testing.
	A mock wrapper for the plugin, that can catch PluginGui
	and Focus item creation and put these in a place where tests can
	reach the items mounted inside.

	Optional Props:
		Instance Container: A container to mount PluginWidget items into.
		Instance FocusTarget: A container to mount Focus items into.
]]

local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)
local MakeTheme = require(Plugin.Src.Resources.MakeTheme)
local AnalyticsContext = require(Plugin.Src.ContextServices.AnalyticsContext)
local Analytics = require(Plugin.Src.Util.Analytics)
local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local MockPlugin = Roact.PureComponent:extend("MockPlugin")

local function mockFocus()
	return Instance.new("ScreenGui")
end

local function mockPlugin(container)
	local plugin = {}
	function plugin:GetMouse()
		return {}
	end
	local function createScreenGui()
		local focus = mockFocus()
		focus.Name = "MockPluginGui"
		if container then
			focus.Parent = container
		end
		return focus
	end
	function plugin:CreateQWidgetPluginGui()
		return createScreenGui()
	end
	function plugin:CreateDockWidgetPluginGui()
		return createScreenGui()
	end
	return plugin
end

function MockPlugin:init(props)
	self.plugin = mockPlugin(props.Container)
	self.target = props.FocusTarget or mockFocus()
	self.store = Rodux.Store.new(MainReducer, props.StoreState, {
		Rodux.thunkMiddleware
	})
	self.analyticsImpl = Analytics.mock()
end

function MockPlugin:render()
	local theme
	if THEME_REFACTOR then
		theme = PluginTheme(true)
	else
		theme = MakeTheme(true)
	end

	return ContextServices.provide({
		ContextServices.API.new(),
		ContextServices.Localization.mock(),
		ContextServices.Plugin.new(self.plugin),
		ContextServices.Mouse.new({}),
		theme,
		ContextServices.Focus.new(self.target),
		ContextServices.Store.new(self.store),
		AnalyticsContext.new(self.analyticsImpl),
	}, self.props[Roact.Children])
end

local function MockWrap(element, mockProps)
	return Roact.createElement(MockPlugin, mockProps, {
		Element = element,
	})
end

return MockWrap

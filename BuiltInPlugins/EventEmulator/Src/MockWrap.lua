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
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local MakeTheme = require(Plugin.Src.Resources.MakeTheme)

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
	self.store = Rodux.Store.new(MainReducer, nil, {
		Rodux.thunkMiddleware
	})
end

function MockPlugin:render()
	return ContextServices.provide({
		ContextServices.Localization.mock(),
		ContextServices.Plugin.new(self.plugin),
		ContextServices.Mouse.new({}),
		MakeTheme(),
		ContextServices.Focus.new(self.target),
		ContextServices.Store.new(self.store),
	}, self.props[Roact.Children])
end

local function MockWrap(element, mockProps)
	return Roact.createElement(MockPlugin, mockProps, {
		Element = element,
	})
end

return MockWrap

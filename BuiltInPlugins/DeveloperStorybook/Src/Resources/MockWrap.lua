--[[
	Used for testing.
	A mock wrapper for the plugin, that can catch PluginGui
	and Focus item creation and put these in a place where tests can
	reach the items mounted inside.

	Optional Props:
		Instance Container: A container to mount PluginWidget items into.
		Instance FocusTarget: A container to mount Focus items into.
]]

local Main = script.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)
local Rodux = require(Main.Packages.Rodux)
local Framework = require(Main.Packages.Framework)
local Signal = Framework.Util.Signal
local MainReducer = require(Main.Src.Reducers.MainReducer)
local ContextServices = require(Main.Packages.Framework).ContextServices
local MakeTheme = require(Main.Src.Resources.MakeTheme)
local InspectorContext = require(Main.Src.Util.InspectorContext)

local MockPlugin = Roact.PureComponent:extend("MockPlugin")

local function mockFocus()
	return Instance.new("ScreenGui")
end

local function mockPlugin(container)
	local plugin = {}
	plugin.Name = "FrameworkCompanionMock"
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
	function plugin:CreatePluginAction()
		return {
			Triggered = Signal.new(),
		}
	end
	return plugin
end

function MockPlugin:init(props)
	self.plugin = mockPlugin(props.Container)
	self.target = props.FocusTarget or mockFocus()
	self.store = Rodux.Store.new(MainReducer, nil, {
		Rodux.thunkMiddleware,
	})
end

function MockPlugin:render()
	return ContextServices.provide({
		InspectorContext.new({}),
		ContextServices.Plugin.new(self.plugin),
		ContextServices.PluginActions.new(self.plugin, {
			{
				id = "rerunLastStory",
				text = "MOCK",
			},
		}),
		ContextServices.Mouse.new({}),
		MakeTheme(true),
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

--[[
	A mock provider that provides fake values for testing.
	Do not use this component outside of tests.

	Props:
		Plugin plugin = A plugin value or mock for testing.
		table state = The test initial state for the Rodux store.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Rodux = require(Plugin.Rodux)
local UILibrary = require(Plugin.UILibrary)

local Theme = require(Plugin.Src.Util.Theme)
local Localization = UILibrary.Studio.Localization
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local MainProvider = require(Plugin.Src.Context.MainProvider)
local MakePluginActions = require(Plugin.Src.Util.MakePluginActions)
local MouseContext = require(Plugin.Src.Context.Mouse)

local MockWrapper = Roact.PureComponent:extend("MockWrapper")

local function mockConnection()
	local mockConnection = {}
	function mockConnection:Connect()
		local mockDisconnection = {}
		function mockDisconnection:Disconnect()
		end
		return mockDisconnection
	end
	return mockConnection
end

local function mockPlugin(container)
	local plugin = {}
	function plugin:Activate()
	end
	function plugin:Deactivate()
	end
	function plugin:GetMouse()
		local mouse = {}
		mouse.Button1Down = mockConnection()
		return mouse
	end
	local function createScreenGui()
		local screenGui = Instance.new("BillboardGui")
		screenGui.Name = "PluginGuiMock"
		screenGui.Parent = container
		return screenGui
	end
	function plugin:CreateQWidgetPluginGui()
		return createScreenGui()
	end
	function plugin:CreateDockWidgetPluginGui()
		return createScreenGui()
	end
	return plugin
end

function MockWrapper:init(props)
	local focusGui = Instance.new("ScreenGui")
	focusGui.Name = "FocusGuiMock"
	self.focusGui = focusGui
	if props.Container then
		self.focusGui.Parent = props.Container
	end
end

function MockWrapper:render()
	local props = self.props
	local storeState = props.state or nil
	local plugin = props.plugin or mockPlugin(props.Container)

	local localization = Localization.mock()

	return Roact.createElement(MainProvider, {
		theme = Theme.mock(),
		localization = localization,
		store = Rodux.Store.new(MainReducer, storeState, {
			Rodux.thunkMiddleware
		}),
		plugin = plugin,
		focusGui = self.focusGui,
		pluginActions = props.plugin ~= nil and MakePluginActions(plugin, localization) or {},
		mouse = MouseContext.mock(),
	}, self.props[Roact.Children])
end

function MockWrapper:willUnmount()
	if self.focusGui then
		self.focusGui:Destroy()
	end
end

return MockWrapper
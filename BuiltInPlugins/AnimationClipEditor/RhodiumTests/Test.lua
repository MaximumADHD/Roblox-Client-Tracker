--[[
	An object used to set up, run, and tear down individual Rhodium tests.

	Usage:
		Test.new(Plugin plugin):
			Creates a new Test.

		Test:run(function testRunner(test)):
			Mounts a Test and runs the testRunner function, passing self
			as a parameter. From the test instance, the testRunner can access
			getStore and getContainer to access the Rodux store and hierarchy
			of the running test.

		Test:destroy():
			Destroys the Test.
]]

-- HttpService is only included for GenerateGUID
local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent
local Roact = require(Plugin.Roact)
local Rodux = require(Plugin.Rodux)
local Constants = require(Plugin.Src.Util.Constants)

local Theme = require(Plugin.Src.Util.Theme)
local Localization = require(Plugin.UILibrary.Studio.Localization)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local AnimationClipEditor = require(Plugin.Src.Components.AnimationClipEditor)
local MainProvider = require(Plugin.Src.Context.MainProvider)

local Test = {}

Test.__index = Test

function Test:nextTestId()
	return HttpService:GenerateGUID()
end

function Test:createTestStore()
	local middlewares = {Rodux.thunkMiddleware}
	local store = Rodux.Store.new(MainReducer, nil, middlewares)
	return store
end

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

function Test:createMockPlugin(plugin)
	local createScreenGui = function()
		local screen = Instance.new("ScreenGui", game.CoreGui)
		screen.Name = "PluginMockGui"
		screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		return screen
	end
	return {
		Activate = function(_, ...)
		end,

		Deactivate = function()
		end,

		GetMouse = function()
			local mouse = {}
			mouse.Button1Down = mockConnection()
			return mouse
		end,

		CreateDockWidgetPluginGui = function(_, ...)
			local gui = createScreenGui()
			table.insert(self.subWindows, gui)
			return gui
		end,

		CreateQWidgetPluginGui = function(_, ...)
			local gui = createScreenGui()
			table.insert(self.subWindows, gui)
			return gui
		end,
	}
end

function Test:makeContainer()
	local widgetSize = Constants.MAIN_FLOATING_SIZE

	local screen = Instance.new("ScreenGui", game.CoreGui)
	screen.Name = "PluginMockGui"
	screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local container = Instance.new("Frame", screen)
	container.Name = "RhodiumTest"
	container.BackgroundTransparency = 1
	container.Size = UDim2.new(0, widgetSize.X, 0, widgetSize.Y)

	return container
end

function Test:getSubWindow(index)
	local now = tick()
	local timeout = now + 1
	while not self.subWindows[index] do
		wait()
		if tick() > now + timeout then
			error("Test did not spawn a sub-window.")
		end
	end
	return self.subWindows[index]
end

function Test:getStore()
	return self.store
end

function Test:getContainer()
	return self.container
end

function Test.new(plugin)
	local self = {
		localization = Localization.mock(),
		theme = Theme.mock(),
		plugin = plugin,
		subWindows = {},
	}
	setmetatable(self, Test)

	self.store = self:createTestStore()
	self.mockPlugin = self:createMockPlugin(plugin)
	self.container = self:makeContainer()

	return self
end

function Test:run(testRunner)
	local main = Roact.createElement(MainProvider, {
		theme = self.theme,
		localization = self.localization,
		store = self.store,
		plugin = self.mockPlugin,
		focusGui = self.container,
		pluginActions = {},
		mouse = self.plugin:GetMouse(),
	}, {
		AnimationClipEditor = Roact.createElement(AnimationClipEditor),
	})

	local handle = Roact.mount(main, self.container)

	local success, result = pcall(function()
		testRunner(self)
	end)

	wait()

	Roact.unmount(handle)

	return success, result
end

function Test:destroy()
	self.container.Parent:Destroy()
	self.theme:destroy()
	self.store:destruct()
	self.localization:destroy()

	for _, window in ipairs(self.subWindows) do
		window:Destroy()
	end
end

return Test
local DevFrameworkRoot = script.Parent.Parent.Parent
local Signal = require(DevFrameworkRoot.Util.Signal)

local MockMouse = require(script.Parent.MockMouse)
local MockPluginToolbar = require(script.Parent.MockPluginToolbar)
local MockPluginComponents = require(script.Parent.MockPluginComponents)

type MockConnection = {
	Disconnect: () -> (),
}

local MockPlugin = {}
MockPlugin.__index = MockPlugin

local function createScreenGui()
	local screen = Instance.new("ScreenGui")
	pcall(function()
		screen.Parent = game.CoreGui
	end)
	screen.Name = "PluginMockGui"
	screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	return screen
end

type FIXME_StudioUri = any -- TODO support StudioUri in DF analyze

--[[
	id : string?
	mockedPlugins : {[MockPlugin] : boolean}?
		Optional set for interfacing with other plugins created in a unit test.
		E.g. when calling MockPlugin:Activate(), all other plugins in the mockedPlugins set get deactivated
		For tests that don't need this functionality, leave mockedPlugins as nil
	plugin : The underlying test plugin
]]
function MockPlugin.new(id: string?, mockedPlugins: { [any]: boolean }?, plugin: Plugin?, uri: FIXME_StudioUri?)
	local self = setmetatable({
		_id = id or "",
		Name = id or "MockPlugin",

		_plugin = plugin,

		Deactivation = Signal.new(),
		Unloading = Signal.new(),

		_activated = false,
		_activatedWithExclusiveMouse = false,

		_mouse = MockMouse.new(),

		_toolbars = {},

		_mockedSettings = {},

		_mockItems = {},
		_mockItemsCallbacks = {},

		_mockInvokeCallbacks = {},

		_uri = uri,

		mockComponents = MockPluginComponents(),
		subWindows = {},
	}, MockPlugin)

	if mockedPlugins then
		self._mockedPlugins = mockedPlugins
		self._mockedPlugins[self] = true
	end

	return self
end

function MockPlugin:Destroy()
	for _, toolbar in pairs(self._toolbars) do
		toolbar:Destroy()
	end
	self._toolbars = {}

	if self._mouse then
		self._mouse:Destroy()
		self._mouse = nil
	end

	if self._mockedPlugins then
		self._mockedPlugins[self] = nil
		self._mockedPlugins = nil
	end
end

function MockPlugin:CreateToolbar(id)
	if self._toolbars[id] then
		return self._toolbars[id]
	end

	local toolbar = MockPluginToolbar.new(self, id)
	self._toolbars[id] = toolbar
	return toolbar
end

function MockPlugin:IsActivated()
	return self._activated
end

function MockPlugin:IsActivatedWithExclusiveMouse()
	return self._activatedWithExclusiveMouse
end

function MockPlugin:Activate(exclusiveMouse)
	if self._mockedPlugins then
		for mockedPlugin, _ in pairs(self._mockedPlugins) do
			if mockedPlugin._activated then
				mockedPlugin:Deactivate()
			end
		end
	end

	self._activated = true
	self._activatedWithExclusiveMouse = if exclusiveMouse then true else false
end

function MockPlugin:CreatePluginAction()
	return {
		Triggered = Signal.new(),
	}
end

function MockPlugin:Deactivate()
	if not self._activated then
		return
	end
	self._activated = false
	self._activatedWithExclusiveMouse = false
	self.Deactivation:Fire()
end

function MockPlugin:GetMouse()
	return self._mouse
end

function MockPlugin:GetSubWindow(index)
	local now = tick()
	local timeout = now + 1
	while not self.subWindows[index] do
		wait()
		if tick() > now + timeout then
			error("Sub-window has not been created")
		end
	end
	return self.subWindows[index]
end

-- selene: allow(unused_variable)
function MockPlugin:CreateDockWidgetPluginGui(_, ...)
	local gui = createScreenGui()
	table.insert(self.subWindows, gui)
	gui.Destroying:Connect(function()
		local index = assert(table.find(self.subWindows, gui), "Couldn't find sub window GUI")
		table.remove(self.subWindows, index)
	end)
	return gui
end

function MockPlugin:CreateQWidgetPluginGui(title, ...)
	return self:CreateDockWidgetPluginGui(title, ...)
end
function MockPlugin:GetSetting(key)
	return self._mockedSettings[key]
end

function MockPlugin:SetSetting(key, value)
	self._mockedSettings[key] = value
end

function MockPlugin:MockSettings(settings)
	self._mockedSettings = settings
end

function MockPlugin:GetItem(key: string): any
	return self._mockItems[key]
end

function MockPlugin:SetItem(key: string, value: any)
	self._mockItems[key] = value
	for _, callback in self._mockItemsCallbacks[key] or {} do
		callback(value)
	end
end

function MockPlugin:OnSetItem(key: string, callback: (any) -> ()): MockConnection
	if self._mockItemsCallbacks[key] == nil then
		self._mockItemsCallbacks[key] = {}
	end
	table.insert(self._mockItemsCallbacks[key], callback)
	return {
		Disconnect = function()
			for i, savedCallback in self._mockItemsCallbacks[key] do
				if savedCallback == callback then
					table.remove(self._mockItemsCallbacks[key], i)
					break
				end
			end
		end,
	}
end

-- accept a key and a variadic list of arguments, and pass the list of arguments into the callback
function MockPlugin:Invoke(key: string, ...: any)
	for _, callback in self._mockInvokeCallbacks[key] or {} do
		callback(...)
	end
end

function MockPlugin:OnInvoke(key: string, callback: (any) -> ()): MockConnection
	if self._mockInvokeCallbacks[key] == nil then
		self._mockInvokeCallbacks[key] = {}
	end
	table.insert(self._mockInvokeCallbacks[key], callback)
	return {
		Disconnect = function()
			for i, savedCallback in self._mockInvokeCallbacks[key] do
				if savedCallback == callback then
					table.remove(self._mockInvokeCallbacks[key], i)
					break
				end
			end
		end,
	}
end

function MockPlugin:GetUri()
	return self._uri or {
		DataModel = "Standalone",
		PluginType = "Standalone",
		PluginId = "MockPlugin",
	}
end
function MockPlugin:GetPluginComponent(componentName: string)
	local component = self.mockComponents[componentName]
	assert(component or self._plugin, `Cannot mock plugin component: {componentName}`)
	return component or self._plugin:GetPluginComponent(componentName)
end

return MockPlugin

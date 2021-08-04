--[[
	Provides a fake implementation of functions and objects exposed through the 'plugin' keyword
]]
local Plugin = script.Parent.Parent.Parent
local Signal = require(Plugin.Packages.Framework).Util.Signal

local MockMouse = require(script.Parent.MockMouse)

--[[
	MockPluginToolbarButton
]]
local MockPluginToolbarButton = {}
do
	MockPluginToolbarButton.__index = MockPluginToolbarButton

	function MockPluginToolbarButton.new()
		local mptb = {
			Name = "",
			Tooltip = "",
			Icon = "",
			Enabled = false,
			Click = Signal.new(),
		}
		setmetatable(mptb, MockPluginToolbarButton)

		return mptb
	end

	function MockPluginToolbarButton:SetActive(isActive)
		self.Enabled = isActive
	end
end

--[[
	MockPluginToolbar
]]
local MockPluginToolbar = {}
do
	MockPluginToolbar.__index = MockPluginToolbar

	function MockPluginToolbar.new(title)
		local mpt = {
			Title = title,
			Buttons = {},
		}

		setmetatable(mpt, MockPluginToolbar)
		return mpt
	end

	function MockPluginToolbar:CreateButton(title, tooltip, icon)
		return MockPluginToolbarButton.new()
	end
end

--[[
	MockDockWidgetPluginGui
]]
local MockDockWidgetPluginGui = {}
do
	MockDockWidgetPluginGui.__index = MockDockWidgetPluginGui
	MockDockWidgetPluginGui.__newindex = function(mdwpg, key, value)
		if key == "_signals" then
			return
		end

		-- assign the value
		mdwpg[key] = value

		-- call the property change event
		mdwpg._signals[key]:fire(value)
	end

	function MockDockWidgetPluginGui.new(title, widgetInfo)
		assert(type(title) == "string", "DockWidgetPluginGui's title must be a string")
		assert(type(widgetInfo) == "table", "DockWidgetPluginGui's widgetInfo must be an array")
		assert(#widgetInfo == 7, "Unexpected table provided for widgetInfo, expected an array")

		--[[local dockState = widgetInfo[1]
		local enabled = widgetInfo[2]
		local overridePreviousState = widgetInfo[3]
		local defaultWidth = widgetInfo[4]
		local defaultHeight = widgetInfo[5]
		local minimumWidth = widgetInfo[6]
		local minimumHeight = widgetInfo[7] ]]

		local dw = {
			Name = "",
			Title = title,
			ZIndexBehavior = Enum.ZIndexBehavior.Global,
			Enabled = true,
		}
		local signals = {}
		for k, _ in pairs(dw) do
			signals[k] = Signal.new()
		end
		dw._signals = signals

		setmetatable(dw, MockDockWidgetPluginGui)

		return dw
	end

	function MockDockWidgetPluginGui:GetPropertyChangedSignal(key)
		assert(key ~= nil, "Need a property to observe changes")
		assert(self[key] ~= nil, "Could not find the key," .. tostring(key) .. " please add it to the constructor")

		return self._signals[key]
	end
end

local mockedPlugins = {}

--[[
	MockPlugin
]]
local MockPlugin = {}
MockPlugin.__index = MockPlugin

function MockPlugin.new()
	local self = setmetatable({
		Name = "",

		Deactivation = Signal.new(),
		Unloading = Signal.new(),

		_activated = false,
		_activatedWithExclusiveMouse = false,

		_mouse = MockMouse.new(),
	}, MockPlugin)

	mockedPlugins[self] = true

	return self
end

function MockPlugin:Destroy()
	mockedPlugins[self] = nil
end

function MockPlugin:CreateToolbar(title)
	return MockPluginToolbar.new(title)
end

function MockPlugin:CreateDockWidgetPluginGui(title, widgetInfo)
	return MockDockWidgetPluginGui.new(title, widgetInfo)
end

function MockPlugin:GetMouse()
	return self._mouse
end

function MockPlugin:IsActivated()
	return self._activated
end

function MockPlugin:IsActivatedWithExclusiveMouse()
	return self._activatedWithExclusiveMouse
end

function MockPlugin:Activate(exclusiveMouse)
	if self._activated then
		return
	end
	for mockedPlugin, _ in pairs(mockedPlugins) do
		if mockedPlugin._activated then
			mockedPlugin:Deactivate()
		end
	end
	self._activated = true
	self._activatedWithExclusiveMouse = exclusiveMouse
end

function MockPlugin:Deactivate()
	if not self._activated then
		return
	end
	self._activated = false
	self._activatedWithExclusiveMouse = false
	self.Deactivation:fire()
end

return MockPlugin

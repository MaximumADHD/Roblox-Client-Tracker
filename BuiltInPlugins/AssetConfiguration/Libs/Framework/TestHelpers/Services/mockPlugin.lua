local DevFrameworkRoot = script.Parent.Parent.Parent
local Signal = require(DevFrameworkRoot.Util.Signal)


local MockPlugin = {}
MockPlugin.__index = MockPlugin

local function createScreenGui()
	local screen = Instance.new("ScreenGui", game.CoreGui)
	screen.Name = "PluginMockGui"
	screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	return screen
end

function MockPlugin.new()
	return setmetatable({
		Name = "MockPlugin",
		subWindows = {},
	}, MockPlugin)
end

function MockPlugin:Activate()
	-- filler
end

function MockPlugin:Deactivate()
	-- filler
end

function MockPlugin:GetMouse()
	local mouse = {}
	mouse.Button1Down = Signal.new()
	return mouse
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

function MockPlugin:CreateDockWidgetPluginGui(_, ...)
	local gui = createScreenGui()
	table.insert(self.subWindows, gui)
	return gui
end

function MockPlugin:CreateQWidgetPluginGui(_, ...)
	return self:CreateDockWidgetPluginGui(_, ...)
end

return MockPlugin
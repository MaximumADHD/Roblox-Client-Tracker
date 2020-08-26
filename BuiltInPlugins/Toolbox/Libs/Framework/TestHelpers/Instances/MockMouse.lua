local DevFrameworkRoot = script.Parent.Parent.Parent
local Signal = require(DevFrameworkRoot.Util.Signal)

local MockMouse = {}
MockMouse.__index = MockMouse

function MockMouse.new()
	return setmetatable({
		Icon = "rbxasset://SystemCursors/Arrow",

		Origin = CFrame.new(),
		UnitRay = Ray.new(),
		Target = nil,

		WheelForward = Signal.new(),
		WheelBackward = Signal.new(),
	}, MockMouse)
end

function MockMouse:Destroy()
end

return MockMouse

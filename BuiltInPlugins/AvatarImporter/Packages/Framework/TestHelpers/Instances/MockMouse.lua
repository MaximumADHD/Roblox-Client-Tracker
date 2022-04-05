local FFlagPivotEditorFixTests = game:GetFastFlag("PivotEditorFixTests")

local DevFrameworkRoot = script.Parent.Parent.Parent
local Signal = require(DevFrameworkRoot.Util.Signal)

local MockMouse = {}
MockMouse.__index = MockMouse

function MockMouse.new()
	return setmetatable({
		Icon = "rbxasset://SystemCursors/Arrow",

		Origin = CFrame.new(),
		UnitRay = Ray.new(Vector3.new(), Vector3.new()),
		Target = nil,

		WheelForward = Signal.new(),
		WheelBackward = Signal.new(),
		Button1Down = Signal.new(),
		Button1Up = if FFlagPivotEditorFixTests then Signal.new() else nil,
		DragEnter = if FFlagPivotEditorFixTests then Signal.new() else nil,
	}, MockMouse)
end

function MockMouse:Destroy()
end

return MockMouse

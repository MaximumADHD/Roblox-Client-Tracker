local Plugin = script.Parent.Parent.Parent
local FFlagRemoveUILibraryComponentsPart1 = game:GetFastFlag("RemoveUILibraryComponentsPart1")
local Framework = require(Plugin.Packages.Framework)
local UILibrary = require(Plugin.Packages.UILibrary)
local Signal = if FFlagRemoveUILibraryComponentsPart1 then Framework.Util.Signal else UILibrary.Util.Signal

local MockMouse = {}
MockMouse.__index = MockMouse

function MockMouse.new()
	return setmetatable({
		Origin = CFrame.new(),
		UnitRay = Ray.new(Vector3.new(), Vector3.new()),
		Target = nil,

		WheelForward = Signal.new(),
		WheelBackward = Signal.new(),
	}, MockMouse)
end

return MockMouse

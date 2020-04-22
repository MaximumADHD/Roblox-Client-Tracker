local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework

local FrameworkUtil = FFlagTerrainToolsUseDevFramework and require(Framework.Util) or nil
local Signal = FFlagTerrainToolsUseDevFramework and FrameworkUtil.Signal or require(Plugin.Src.Util.Signal)

local MockMouse = {}
MockMouse.__index = MockMouse

function MockMouse.new()
	return setmetatable({
		Origin = CFrame.new(),
		UnitRay = Ray.new(),
		Target = nil,

		WheelForward = Signal.new(),
		WheelBackward = Signal.new(),
	}, MockMouse)
end

return MockMouse

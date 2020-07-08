
local Workspace = game:GetService("Workspace")

local getFFlagDraggerRefactor = require(script.Parent.Parent.Flags.getFFlagDraggerRefactor)

local SCALE_FACTOR = 0.05

if getFFlagDraggerRefactor() then
	return function()
		error("Should not be called")
	end
else
	return function(focusPoint)
		local camera = Workspace.CurrentCamera
		local distance = (camera.CFrame.Position - focusPoint).Magnitude
		local angleFrac = math.sin(math.rad(camera.FieldOfView))
		return angleFrac * distance * SCALE_FACTOR
	end
end
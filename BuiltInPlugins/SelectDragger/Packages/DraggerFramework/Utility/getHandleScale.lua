
local Workspace = game:GetService("Workspace")

local SCALE_FACTOR = 0.05

return function(focusPoint)
	local camera = Workspace.CurrentCamera
	local distance = (camera.CFrame.Position - focusPoint).Magnitude
	local angleFrac = math.sin(math.rad(camera.FieldOfView))
	return angleFrac * distance * SCALE_FACTOR
end
local MockCameraService = require(script.Parent.MockCameraService)
local Workspace = game:GetService("Workspace")

return function(): Camera
	if _G.__TESTEZ_RUNNING_TEST__ then
		return (MockCameraService.new() :: any) :: Camera
	else
		return Workspace.CurrentCamera :: Camera
	end
end

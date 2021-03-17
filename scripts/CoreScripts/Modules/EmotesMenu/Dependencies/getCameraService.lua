local MockCameraService = require(script.Parent.MockCameraService)
local Workspace = game:GetService("Workspace")

return function()
	if _G.__TESTEZ_RUNNING_TEST__ then
		return MockCameraService.new()
	else
		return Workspace.CurrentCamera
	end
end
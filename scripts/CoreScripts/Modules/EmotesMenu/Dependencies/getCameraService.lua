local MockCameraService = require(script.Parent.MockCameraService)
local Camera = game:GetService("Workspace").CurrentCamera

return function()
	if _G.__TESTEZ_RUNNING_TEST__ then
		return MockCameraService.new()
	else
		return Camera
	end
end
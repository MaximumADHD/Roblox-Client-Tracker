local Modules = game:GetService("CoreGui").RobloxGui.Modules
local DeviceOrientationMode = require(Modules.LuaApp.DeviceOrientationMode)
local SetDeviceOrientation = require(Modules.LuaApp.Actions.SetDeviceOrientation)

return function(state, action)
	state = state or DeviceOrientationMode.Portrait
	if action.type == SetDeviceOrientation.name then
		return action.deviceOrientation
	end

	return state
end
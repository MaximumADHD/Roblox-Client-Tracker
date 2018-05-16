local Modules = game:GetService("CoreGui").RobloxGui.Modules

local LayoutClipRectStopUsingCamera = settings():GetFFlag("LayoutClipRectStopUsingCamera")

-- When removing FFlag LayoutClipRectStopUsingCamera, DeviceOrientationOld.lua should
-- be removed, and this file should be replaced with the contents of DeviceOrientationNew.lua
-- then remove DeviceOrientationNew.lua
-- This is to enable unit testing to cover all the cases with or without the
-- flag set.

local DeviceOrientationFlagOff = require(Modules.LuaApp.Reducers.DeviceOrientationFlagOff)
local DeviceOrientationFlagOn = require(Modules.LuaApp.Reducers.DeviceOrientationFlagOn)

if LayoutClipRectStopUsingCamera then
	return DeviceOrientationFlagOn
else
	return DeviceOrientationFlagOff
end
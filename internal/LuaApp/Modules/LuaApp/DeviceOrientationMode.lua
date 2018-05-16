local LayoutClipRectStopUsingCamera = settings():GetFFlag("LayoutClipRectStopUsingCamera")

local DeviceOrientationMode = {
	Portrait = "Portrait",
	Landscape = "Landscape",
}

if not LayoutClipRectStopUsingCamera then
	DeviceOrientationMode.Invalid = "Invalid"
end

return DeviceOrientationMode
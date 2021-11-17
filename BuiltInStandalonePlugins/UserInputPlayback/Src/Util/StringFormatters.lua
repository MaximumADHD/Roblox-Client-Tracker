local formatter = {}

formatter.formatDeviceOrientation = function(rawOrientation: string, currentDeviceId, localization): string
	if currentDeviceId == "default" then
		return localization:getText("RecordTabView", "ComputerEmulationDeviceOrientation")
	end
	return rawOrientation
end

formatter.formatDeviceName = function(rawDeviceId: string, localization): string
	if rawDeviceId == "default" then
		return localization:getText("RecordTabView", "ComputerEmulationDeviceOrientation")
	end
	return rawDeviceId
end

formatter.format2dResolution = function(size: Vector2, units: string): string
	return string.format("%d x %d %s", math.round(size.X), math.round(size.Y), units)
end

return formatter
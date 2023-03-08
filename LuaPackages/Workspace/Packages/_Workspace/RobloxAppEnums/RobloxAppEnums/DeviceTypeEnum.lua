--[[
	This is a temp enum for device type until we add the enum to the engine side
]]

export type DeviceType = "Desktop" | "Tablet" | "Phone" | "Console" | "VR" | "Unknown"

local DeviceTypeEnum = {
	Desktop = "Desktop" :: "Desktop",
	Tablet = "Tablet" :: "Tablet",
	Phone = "Phone" :: "Phone",
	Console = "Console" :: "Console",
	VR = "VR" :: "VR",
	Unknown = "Unknown" :: "Unknown",
}

return DeviceTypeEnum

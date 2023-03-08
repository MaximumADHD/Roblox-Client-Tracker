export type DeviceType = "Desktop" | "Tablet" | "Phone" | "Console" | "VR" | "Unknown"

local DeviceType = {
	Desktop = "Desktop" :: "Desktop",
	Tablet = "Tablet" :: "Tablet",
	Phone = "Phone" :: "Phone",
	Console = "Console" :: "Console",
	VR = "VR" :: "VR",
	Unknown = "Unknown" :: "Unknown",
}

return DeviceType

local Constants = {}

export type ThemeName = "Dark" | "Light"

Constants.ThemeName = {
	Dark = "Dark" :: "Dark",
	Light = "Light" :: "Light",
}

export type FontName = "Gotham"

Constants.FontName = {
	Gotham = "Gotham",
}

export type DeviceType = "Desktop" | "Tablet" | "Phone" | "Console" | "VR" | "Unknown"

Constants.DeviceType = {
	Desktop = "Desktop" :: "Desktop",
	Tablet = "Tablet" :: "Tablet",
	Phone = "Phone" :: "Phone",
	Console = "Console" :: "Console",
	VR = "VR" :: "VR",
	Unknown = "Unknown" :: "Unknown",
}

Constants.Layout = {
	ActionBar = {
		PositionOffset = 24,
	},
}

Constants.DefaultThemeName = Constants.ThemeName.Light
Constants.DefaultFontName = Constants.FontName.Gotham
Constants.DefaultDeviceType = Constants.DeviceType.Desktop

Constants.DefaultSettings = {
	preferredTransparency = 1,
	reducedMotion = false,
}

return Constants

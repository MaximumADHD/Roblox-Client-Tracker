stds.roblox = {
	globals = {
		"game",
		"script",
	},
	read_globals = {
		-- Extra functions
		"tick", "warn", "spawn",
		"wait", "settings", "typeof",
		"delay", "time", "version",

		-- Libraries
		"debug",

		-- Types
		"Enum",
		"Axes", "BrickColor", "CFrame", "Color3", "ColorSequence",
		"ColorSequenceKeypoint", "Faces","Instance","NumberRange",
		"NumberSequence", "NumberSequenceKeypoint", "PhysicalProperties",
		"Ray", "Rect", "Region3", "Region3int16", "TweenInfo",
		"UDim", "UDim2",
		"Vector2", "Vector2int16", "Vector3", "Vector3int16",
	}
}

ignore = {
	"212", -- unused arguments
}
std = "lua51+roblox"

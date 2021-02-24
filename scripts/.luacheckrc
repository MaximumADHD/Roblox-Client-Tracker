stds.roblox = {
	globals = {
		"game",
		"script",
		string = {
			fields = {
				split = {},
			},
		},
	},
	read_globals = {
		-- Extra functions
		"tick", "warn", "spawn",
		"wait", "settings", "typeof",
		"delay", "time", "version",

		"UserSettings",

		-- Libraries
		"debug",
		"utf8",

		math = {
			"sign", "clamp",
			"abs",
			"acos",
			"asin",
			"atan",
			"ceil",
			"cos",
			"deg",
			"exp",
			"floor",
			"fmod",
			"huge",
			"log",
			"max",
			"min",
			"modf",
			"pi",
			"rad",
			"random",
			"randomseed",
			"sin",
			"sqrt",
			"tan",
		},

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

stds.testez = {
	read_globals = {
		"describe",
		"it", "itFOCUS", "itSKIP",
		"FOCUS", "SKIP", "HACK_NO_XPCALL",
		"expect",
	}
}

ignore = {
	"212", -- unused arguments
}
std = "lua51+roblox"

files["**/*.spec.lua"] = {
	std = "+testez",
}
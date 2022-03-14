local ThemesRoot = script.Parent
local StylesRoot = ThemesRoot.Parent

local Colors = require(StylesRoot.Colors)

local theme = {
	BackgroundDefault = {
		Color = Colors.Alabaster,
		Transparency = 0,
	},
	BackgroundContrast = {
		Color = Colors.Ash,
		Transparency = 0,
	},
	BackgroundMuted = {
		Color = Colors.Chalk,
		Transparency = 0,
	},
	BackgroundUIDefault = {
		Color = Colors.White,
		Transparency = 0,
	},
	BackgroundUIContrast = {
		Color = Colors.White,
		Transparency = 0.1, -- Alpha 0.9
	},
	BackgroundOnHover = {
		Color = Colors.Black,
		Transparency = 0.9, -- Alpha 0.1
	},
	BackgroundOnPress = {
		Color = Colors.Black,
		Transparency = 0.9, -- Alpha 0.1
	},

	UIDefault = {
		Color = Colors.Pumice,
		Transparency = 0,
	},
	UIMuted = {
		Color = Colors.Black,
		Transparency = 0.9, -- Alpha 0.1
	},
	UIEmphasis = {
		Color = Colors.Black,
		Transparency = 0.7, -- Alpha 0.3
	},

	ContextualPrimaryDefault = {
		Color = Colors.Green,
		Transparency = 0,
	},
	ContextualPrimaryOnHover = {
		Color = Colors.Green,
		Transparency = 0,
	},
	ContextualPrimaryContent = {
		Color = Colors.White,
		Transparency = 0,
	},

	SystemPrimaryDefault = {
		Color = Colors.Flint,
		Transparency = 0,
	},
	SystemPrimaryOnHover = {
		Color = Colors.Flint,
		Transparency = 0,
	},
	SystemPrimaryContent = {
		Color = Colors.White,
		Transparency = 0,
	},

	SecondaryDefault = {
		Color = Colors.Black,
		Transparency = 0.5, -- 0.5 Alpha
	},
	SecondaryOnHover = {
		Color = Colors.Flint,
		Transparency = 0,
	},
	SecondaryContent = {
		Color = Colors.Black,
		Transparency = 0.5, -- 0.5 Alpha
	},

	IconDefault = {
		Color = Colors.Black,
		Transparency = 0.4, -- 0.6 alpha
	},
	IconEmphasis = {
		Color = Colors.Flint,
		Transparency = 0,
	},
	IconOnHover = {
		Color = Colors.Flint,
		Transparency = 0,
	},

	TextEmphasis = {
		Color = Colors.Flint,
		Transparency = 0,
	},
	TextDefault = {
		Color = Colors.Smoke,
		Transparency = 0,
	},
	TextMuted = {
		Color = Colors.Black,
		Transparency = 0.4, -- 0.6 Alpha
	},
	TextLink = {
		Color = Colors.Blue,
		Transparency = 0,
	},

	Divider = {
		Color = Colors.Flint,
		Transparency = 0.9, -- 0.1 Alpha
	},
	Overlay = {
		Color = Colors.Black,
		Transparency = 0.7, -- 0.3 Alpha
	},
	DropShadow = {
		Color = Colors.Black,
		Transparency = 0,
	},
	NavigationBar = {
		Color = Colors.White,
		Transparency = 0,
	},
	PlaceHolder = {
		Color = Colors.Chalk,
		Transparency = 0.3, -- 0.7 Alpha
	},

	OnlineStatus = {
		Color = Colors.Green,
		Transparency = 0,
	},
	OfflineStatus = {
		Color = Colors.Black,
		Transparency = 0.5, -- 0.5 Alpha
	},

	Success = {
		Color = Colors.Green,
		Transparency = 0,
	},
	Alert = {
		Color = Colors.Red,
		Transparency = 0,
	},

	Badge = {
		Color = Colors.Flint,
		Transparency = 0,
	},
	BadgeContent = {
		Color = Colors.White,
		Transparency = 0,
	},

	SelectionCursor = {
		Color = Colors.XboxBlue,
		Transparency = 0,
		AnimatedColor = Colors.White, -- For animated cursors, we use GradientColorSequence * AnimatedColor
		GradientRotationSpeed = 2,
		GradientColorSequence = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.new(0.514, 0.82, 0.992)), -- Color is #83D1FD
			ColorSequenceKeypoint.new(1, Color3.new(0.086, 0.678, 0.847)) -- #168DD8
		}),
		GradientTransparencySequence = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(1, 0)
		}),
	},

	PlayerBackgroundDefault = {
		Color = Colors.White,
		Transparency = 0,
		Image = "component_assets/avatarBG_light",
	}
}

return theme

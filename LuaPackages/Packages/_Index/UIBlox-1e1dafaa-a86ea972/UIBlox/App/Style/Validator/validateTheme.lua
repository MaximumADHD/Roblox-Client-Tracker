local Validator = script.Parent
local Style = Validator.Parent
local App = Style.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)

local Color = require(UIBlox.Core.Style.Validator.validateColorInfo)

local ThemePalette = t.strictInterface({
	BackgroundDefault = Color,
	BackgroundContrast = Color,
	BackgroundMuted = Color,
	BackgroundUIDefault = Color,
	BackgroundUIContrast = Color,
	BackgroundOnHover = Color,
	BackgroundOnPress = Color,

	UIDefault = Color,
	UIMuted = Color,
	UIEmphasis = Color,

	ContextualPrimaryDefault = Color,
	ContextualPrimaryOnHover = Color,
	ContextualPrimaryContent = Color,

	SystemPrimaryDefault = Color,
	SystemPrimaryOnHover = Color,
	SystemPrimaryContent = Color,

	SecondaryDefault = Color,
	SecondaryOnHover = Color,
	SecondaryContent = Color,

	IconDefault = Color,
	IconEmphasis = Color,
	IconOnHover = Color,

	TextEmphasis = Color,
	TextDefault = Color,
	TextMuted = Color,

	Divider = Color,
	Overlay = Color,
	DropShadow = Color,
	NavigationBar = Color,
	PlaceHolder = Color,

	OnlineStatus = Color,
	OfflineStatus = Color,
	Success = Color,
	Alert = Color,

	Badge = Color,
	BadgeContent = Color,
})

return ThemePalette

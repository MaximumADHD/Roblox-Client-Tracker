local ValidatorRoot = script.Parent
local StyleRoot = ValidatorRoot.Parent
local UIBloxRoot = StyleRoot.Parent
local t = require(UIBloxRoot.Parent.t)

local Color = t.strictInterface({
	Color = t.Color3,
	Transparency = t.numberConstrained(0, 1),
})

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
})

return ThemePalette

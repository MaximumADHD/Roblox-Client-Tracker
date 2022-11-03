local Validator = script.Parent
local Style = Validator.Parent
local App = Style.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)
local Color = require(UIBlox.Core.Style.Validator.validateColorInfo)
local SelectionCursorType = require(UIBlox.Core.Style.Validator.validateSelectionCursorInfoNew)
local ThemedBackgroundImage = require(UIBlox.Core.Style.Validator.validateThemedBackgroundImageInfo)
local Gradient = require(UIBlox.Core.Style.Validator.validateGradientInfo)

local ThemePalette = t.strictInterface({
	-- Backgrounds
	BackgroundDefault = Color,
	BackgroundContrast = Color,
	BackgroundMuted = Color,
	BackgroundUIDefault = Color,
	BackgroundUIContrast = Color,
	BackgroundOnHover = Color,
	BackgroundOnPress = Color,
	CellOnHover = Color,

	-- UI
	UIDefault = Color,
	UIMuted = Color,
	UIEmphasis = Color,

	-- Text
	TextDefault = Color,
	TextMuted = Color,
	TextEmphasis = Color,
	TextOnHover = Color,
	TextLink = Color,

	-- Icons
	IconDefault = Color,
	IconEmphasis = Color,
	IconOnHover = Color,

	-- Buttons
	ContextualPrimaryDefault = Color,
	ContextualPrimaryOnHover = Color,
	ContextualPrimaryContent = Color,
	SystemPrimaryDefault = Color,
	SystemPrimaryOnHover = Color,
	SystemPrimaryContent = Color,
	SecondaryDefault = Color,
	SecondaryOnHover = Color,
	SecondaryContent = Color,

	-- Styles / States
	Divider = Color,
	Overlay = Color,
	NavigationBar = Color,
	Badge = Color,
	BadgeContent = Color,
	Loading = Gradient,
	PlaceHolder = Color,
	OnlineStatus = Color,
	OfflineStatus = Color,
	SelectionCursor = SelectionCursorType,
	Alert = Color,
	Success = Color,
	Caution = Color,
	DropShadow = Color,

	-- Others
	PlayerBackgroundDefault = ThemedBackgroundImage,
	ItemBackgroundDefault = ThemedBackgroundImage,
})

return ThemePalette

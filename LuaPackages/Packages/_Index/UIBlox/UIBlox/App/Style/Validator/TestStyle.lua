local Validator = script.Parent
local Style = Validator.Parent
local App = Style.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local Cryo = require(Packages.Cryo)

local color = {
	Color = Color3.fromRGB(0, 0, 0),
	Transparency = 0,
}
local selectionCursor = {
	Color = Color3.new(0.086, 0.678, 0.847),
	Transparency = 0,
	AnimatedColor = Color3.new(1, 1, 1),
	GradientRotationSpeed = 2,
	GradientColorSequence = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.new(0.514, 0.82, 0.992)),
		ColorSequenceKeypoint.new(1, Color3.new(0.086, 0.678, 0.847)),
	}),
	GradientTransparencySequence = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(1, 0),
	}),
}
local themedBackgroundImage = {
	Color = Color3.fromRGB(0, 0, 0),
	Transparency = 0,
	Image = "",
}
local testTheme = {
	BackgroundDefault = color,
	BackgroundContrast = color,
	BackgroundMuted = color,
	BackgroundUIDefault = color,
	BackgroundUIContrast = color,
	BackgroundOnHover = color,
	BackgroundOnPress = color,
	UIDefault = color,
	UIMuted = color,
	UIEmphasis = color,
	ContextualPrimaryDefault = color,
	ContextualPrimaryOnHover = color,
	ContextualPrimaryContent = color,
	SystemPrimaryDefault = color,
	SystemPrimaryOnHover = color,
	SystemPrimaryContent = color,
	SecondaryDefault = color,
	SecondaryOnHover = color,
	SecondaryContent = color,
	IconDefault = color,
	IconEmphasis = color,
	IconOnHover = color,
	TextEmphasis = color,
	TextDefault = color,
	TextMuted = color,
	TextLink = color,
	Divider = color,
	Overlay = color,
	DropShadow = color,
	NavigationBar = color,
	PlaceHolder = color,
	OnlineStatus = color,
	OfflineStatus = color,
	Success = color,
	Alert = color,
	Badge = color,
	BadgeContent = color,
	SelectionCursor = selectionCursor,
	PlayerBackgroundDefault = themedBackgroundImage,
	ItemBackgroundDefault = themedBackgroundImage,
}

if UIBloxConfig.useNewThemeColorPalettes then
	local gradient = {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0)),
		}),
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1),
			NumberSequenceKeypoint.new(1, 0),
		}),
		Rotation = 0,
	}

	testTheme = Cryo.Dictionary.join(testTheme, {
		CellOnHover = color,
		TextOnHover = color,
		Loading = gradient,
		Caution = color,
	})

	testTheme.SelectionCursor.Rotation = 0
end

local font = {
	Font = Enum.Font.GothamMedium,
	RelativeSize = 1,
	RelativeMinSize = 1,
}
local testFont = {
	BaseSize = 10,
	Title = font,
	Header1 = font,
	Header2 = font,
	SubHeader1 = font,
	Body = font,
	CaptionHeader = font,
	CaptionSubHeader = font,
	CaptionBody = font,
	Footer = font,
	HeadingLarge = font,
	HeadingSmall = font,
	TitleLarge = font,
	BodyLarge = font,
	CaptionLarge = font,
	BodySmall = font,
	CaptionSmall = font,
}

local testSettings = {
	PreferredTransparency = 0.56,
	ReducedMotion = true,
}

local testStyle = {
	Theme = testTheme,
	Font = testFont,
	Settings = testSettings,
}

return testStyle

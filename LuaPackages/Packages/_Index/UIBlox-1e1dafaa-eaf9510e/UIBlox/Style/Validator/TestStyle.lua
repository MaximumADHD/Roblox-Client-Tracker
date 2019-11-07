local color = {
	Color = Color3.fromRGB(0, 0, 0),
	Transparency = 0,
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
}

local font = {
	Font = Enum.Font.GothamSemibold,
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
}

local testStyle = {
	Theme = testTheme,
	Font = testFont,
}

return testStyle
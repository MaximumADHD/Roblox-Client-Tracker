local color = {
	Color = Color3.fromRGB(0, 0, 0),
	Transparency = 0,
}
local selectionCursor = {
	Color = Color3.new(0.086, 0.678, 0.847),
	Transparency = 0,
	AnimatedColor = Color3.new(1,1,1),
	GradientRotationSpeed = 2,
	GradientColorSequence = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.new(0.514, 0.82, 0.992)),
		ColorSequenceKeypoint.new(1, Color3.new(0.086, 0.678, 0.847))
	}),
	GradientTransparencySequence = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(1, 0)
	}),
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
	ThumbnailBackground = color,
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
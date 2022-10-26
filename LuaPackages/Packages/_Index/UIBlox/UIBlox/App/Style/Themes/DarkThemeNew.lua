--!strict
local Themes = script.Parent
local Styles = Themes.Parent
local App = Styles.Parent
local Root = App.Parent
local ColorSystem = require(Root.Common.Style.ColorSystem)
local Colors = require(Styles.Colors)

local theme = {
	-- Backgrounds
	BackgroundDefault = {
		Color = ColorSystem.Black[0],
		Transparency = 0,
	},
	BackgroundContrast = {
		Color = ColorSystem.Gray[110],
		Transparency = 0,
	},
	BackgroundMuted = {
		Color = ColorSystem.Gray[90],
		Transparency = 0,
	},
	BackgroundUIDefault = {
		Color = ColorSystem.Gray[90],
		Transparency = 0,
	},
	BackgroundUIContrast = {
		Color = ColorSystem.Gray[100],
		Transparency = 0,
	},
	MenuOnHover = {
		Color = ColorSystem.Gray[80],
		Transparency = 0,
	},
	-- "BackgroundOnHover" is kept for compatibility.
	-- Please use "MenuOnHover" instead.
	BackgroundOnHover = {
		Color = ColorSystem.Gray[80],
		Transparency = 0,
	},
	BackgroundOnPress = {
		Color = ColorSystem.Gray[100],
		Transparency = 0,
	},
	CellOnHover = {
		Color = ColorSystem.Gray[110],
		Transparency = 0,
	},

	-- UI
	UIDefault = {
		Color = ColorSystem.Gray[70],
		Transparency = 0,
	},
	UIMuted = {
		Color = ColorSystem.Gray[100],
		Transparency = 0,
	},
	UIEmphasis = {
		Color = ColorSystem.Gray[80],
		Transparency = 0,
	},

	-- Text
	TextDefault = {
		Color = ColorSystem.White[0],
		Transparency = 0,
	},
	TextMuted = {
		Color = ColorSystem.Gray[50],
		Transparency = 0,
	},
	TextOnHover = {
		Color = ColorSystem.Gray[40],
		Transparency = 0,
	},
	-- "TextEmphasis" is kept for compatibility.
	-- Please use "TextOnHover" instead.
	TextEmphasis = {
		Color = ColorSystem.Gray[40],
		Transparency = 0,
	},
	TextLink = {
		Color = ColorSystem.Blue[50],
		Transparency = 0,
	},

	-- Icons
	IconDefault = {
		Color = ColorSystem.White[0],
		Transparency = 0,
	},
	IconEmphasis = { -- To be deprecated
		Color = ColorSystem.White[0],
		Transparency = 0,
	},
	IconOnHover = { -- To be deprecated
		Color = ColorSystem.White[0],
		Transparency = 0,
	},

	-- Buttons
	ContextualPrimaryDefault = {
		Color = ColorSystem.Green[50],
		Transparency = 0,
	},
	ContextualPrimaryOnHover = {
		Color = ColorSystem.Green[40],
		Transparency = 0,
	},
	ContextualPrimaryContent = {
		Color = ColorSystem.Black[0],
		Transparency = 0,
	},
	SystemPrimaryDefault = {
		Color = ColorSystem.White[0],
		Transparency = 0,
	},
	SystemPrimaryOnHover = {
		Color = ColorSystem.Gray[40],
		Transparency = 0,
	},
	SystemPrimaryContent = {
		Color = ColorSystem.Black[0],
		Transparency = 0,
	},
	SecondaryDefault = {
		Color = ColorSystem.White[0],
		Transparency = 0,
	},
	SecondaryOnHover = {
		Color = ColorSystem.Gray[40],
		Transparency = 0,
	},
	SecondaryContent = {
		Color = ColorSystem.White[0],
		Transparency = 0,
	},

	-- Styles / States
	Divider = {
		Color = ColorSystem.Gray[70],
		Transparency = 0,
	},
	Overlay = {
		Color = ColorSystem.Black[0],
		Transparency = 0.6, -- 0.4 Alpha
	},
	NavigationBar = {
		Color = ColorSystem.Gray[110],
		Transparency = 0,
	},
	Badge = {
		Color = ColorSystem.Red[50],
		Transparency = 0,
	},
	BadgeContent = {
		Color = ColorSystem.Black[0],
		Transparency = 0,
	},
	Loading = {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, ColorSystem.White[0]),
			ColorSequenceKeypoint.new(0.5, ColorSystem.White[0]),
			ColorSequenceKeypoint.new(1, ColorSystem.White[0]),
		}),
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1), -- 0 Alpha
			NumberSequenceKeypoint.new(0.5, 0.7), -- 0.3 Alpha
			NumberSequenceKeypoint.new(1, 1), -- 0 Alpha
		}),
		Rotation = 45, -- 135 deg in CSS
	},
	PlaceHolder = {
		Color = ColorSystem.Gray[100],
		Transparency = 0,
	},
	OnlineStatus = {
		Color = ColorSystem.Green[50],
		Transparency = 0,
	},
	OfflineStatus = {
		Color = ColorSystem.Gray[50],
		Transparency = 0,
	},
	SelectionCursor = { -- Gamepad
		Color = ColorSystem.White[0],
		Transparency = 0,
		AnimatedColor = ColorSystem.White[0], -- For animated cursors, we use GradientColorSequence * AnimatedColor
		GradientRotationSpeed = 2,
		GradientColorSequence = ColorSequence.new({
			ColorSequenceKeypoint.new(0, ColorSystem.White[0]),
			ColorSequenceKeypoint.new(1, ColorSystem.Gray[70]),
		}),
		GradientTransparencySequence = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(1, 0),
		}),
		Rotation = 45, -- 135 deg in CSS
	},
	Alert = {
		Color = ColorSystem.Red[50],
		Transparency = 0,
	},
	Success = {
		Color = ColorSystem.Green[50],
		Transparency = 0,
	},
	Caution = {
		Color = ColorSystem.Yellow[50],
		Transparency = 0,
	},
	DropShadow = {
		Color = ColorSystem.Black[0],
		Transparency = 0.2, -- 0.8 Alpha
	},

	-- Others
	PlayerBackgroundDefault = {
		Color = ColorSystem.White[0],
		Transparency = 0,
		Image = "component_assets/avatarBG_dark",
	},

	ItemBackgroundDefault = {
		Color = ColorSystem.Black[0],
		Transparency = 0,
		Image = "component_assets/itemBG_dark",
	},
}

return theme

-- TODO: SOCCONN-1540 move to social-libraries?
local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)

local NotLocalizedStrings = require(FriendsCarousel.Common.NotLocalizedStrings)
local TextKeys = require(FriendsCarousel.Common.TextKeys)
local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType

local presenceText = {
	[EnumPresenceType.Offline] = TextKeys.PresenceOffline,
	[EnumPresenceType.Online] = TextKeys.PresenceOnline,
}

export type Label = {
	textKey: string?,
	font: dependencies.UIBloxFontType?,
	text: string?,
	colorStyle: dependencies.UIBloxThemeItem?,
}

export type ArgsObject = {
	presence: Enum,
	lastLocation: string?,
	font: dependencies.UIBloxFontPalette?,
	theme: dependencies.UIBloxTheme?,
}

return function(args: ArgsObject): Label
	local label = {
		textKey = presenceText[args.presence],
	}
	if args.presence == EnumPresenceType.InGame then
		label.text = args.lastLocation
		label.font = args.font and args.font.CaptionHeader or nil
		label.colorStyle = args.theme and args.theme.TextEmphasis or nil
	elseif args.presence == EnumPresenceType.InStudio then
		if args.lastLocation and args.lastLocation ~= "" then
			label.text = args.lastLocation
			label.font = args.font and args.font.CaptionHeader or nil
			label.colorStyle = args.theme and args.theme.TextEmphasis or nil
		else
			label.text = NotLocalizedStrings.StudioPresenceTextGlobal
		end
	end
	return label
end

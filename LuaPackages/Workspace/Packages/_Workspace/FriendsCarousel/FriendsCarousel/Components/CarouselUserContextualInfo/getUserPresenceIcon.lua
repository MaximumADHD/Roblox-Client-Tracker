-- TODO: SOCCONN-1540 move to social-libraries?
local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)

local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType

local presenceIcons = {
	[EnumPresenceType.Online] = "component_assets/circle_16",
	[EnumPresenceType.InGame] = "icons/menu/games_small",
	[EnumPresenceType.InStudio] = "icons/logo/studiologo_small",
}

export type Icon = {
	path: string?,
	color: Color3?,
	transparency: number?,
	size: UDim2?,
}

export type ArgsObject = {
	presence: Enum,
	theme: dependencies.UIBloxTheme,
}

local ONLINE_ICON_SIZE = UDim2.fromOffset(12, 12)

return function(args: ArgsObject): Icon
	local icon = {
		path = presenceIcons[args.presence],
	}
	if args.presence == EnumPresenceType.Online then
		icon.color = args.theme.OnlineStatus.Color
		icon.transparency = args.theme.OnlineStatus.Transparency
		icon.size = ONLINE_ICON_SIZE
	end
	if args.presence == EnumPresenceType.InGame then
		icon.transparency = args.theme.IconEmphasis.Transparency
	end
	return icon
end

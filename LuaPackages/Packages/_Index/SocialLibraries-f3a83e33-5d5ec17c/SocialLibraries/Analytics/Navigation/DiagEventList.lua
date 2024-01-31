--!strict
local EventNames = require(script.Parent.EventNames)
local Types = require(script.Parent.Parent.FireEvent.Types)

return {
	[EventNames.HomePage_AddFriends] = {
		name = game:DefineFastString("SocialNavigationHomePageAddFriends", "HomePageAddFriends") :: string,
	},
	[EventNames.HomePage_Carousel_LuaProfile] = {
		name = game:DefineFastString(
			"SocialNavigationHomePageCarouselLuaProfile",
			"LuaProfileEntryHomePageFriendsCarousel"
		) :: string,
	},
	[EventNames.HomePage_Carousel_FriendsLanding] = {
		name = game:DefineFastString("SocialNavigationHomePageFriendsLanding", "HomePageNavigationFriendsLanding") :: string,
	},
	[EventNames.MorePage_FriendsLanding] = {
		name = game:DefineFastString("SocialNavigationMorePageFriendsLanding", "MorePageNavigationFriendsLanding") :: string,
	},
} :: Types.DiagEventList

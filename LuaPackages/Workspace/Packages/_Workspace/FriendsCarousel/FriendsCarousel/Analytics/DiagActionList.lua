local EventNames = require(script.Parent.EventNames)

type GenericDiagAction = { name: string, count: number? }

return {
	[EventNames.CarouselLoadedWithUsers] = {
		name = game:DefineFastString("FriendsCarouselLoadedWithUsers", "FriendsCarouselLoadedWithUsers") :: string,
	} :: GenericDiagAction,
	[EventNames.UserPressed] = {
		name = game:DefineFastString("FriendsCarouselUserPressed", "FriendsCarouselUserPressed") :: string,
	},
	[EventNames.RequestFriendship] = {
		name = game:DefineFastString("FriendsCarouselRequestFriendship", "FriendsCarouselRequestFriendship") :: string,
	},
	[EventNames.RevokeFriendRequest] = {
		name = game:DefineFastString("FriendsCarouselRevokeFriendRequest", "FriendsCarouselRevokeFriendRequest") :: string,
	},
	[EventNames.ViewAllFriends] = {
		name = game:DefineFastString("HomePageNavigationViewAllFriends", "HomePageNavigationFriendsLanding"),
	},
	[EventNames.ViewAddFriends] = {
		name = game:DefineFastString("HomePageNavigationViewAddFriends", "AddFriendsHomeEntry"),
	},
}

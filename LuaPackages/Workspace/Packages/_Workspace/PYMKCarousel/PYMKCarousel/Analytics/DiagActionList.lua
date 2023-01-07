local EventNames = require(script.Parent.EventNames)

type GenericDiagAction = { name: string, count: number? }

return {
	[EventNames.CarouselLoadedWithUsers] = {
		name = game:DefineFastString("PYMKCarouselLoadedWithUsers", "PYMKCarouselLoadedWithUsers") :: string,
	} :: GenericDiagAction,
	[EventNames.UserPressed] = {
		name = game:DefineFastString("PYMKCarouselUserPressed", "PYMKCarouselUserPressed") :: string,
	},
	[EventNames.RequestFriendship] = {
		name = game:DefineFastString("PYMKCarouselRequestFriendship", "PYMKCarouselRequestFriendship") :: string,
	},
}

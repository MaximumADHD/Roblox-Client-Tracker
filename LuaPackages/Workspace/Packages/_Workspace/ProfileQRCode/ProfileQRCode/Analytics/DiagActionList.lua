local EventNames = require(script.Parent.EventNames)

type GenericDiagAction = { name: string, count: number? }

return {
	[EventNames.QRPageLoad] = {
		name = game:DefineFastString("ProfileQRPageLoad", "ProfileQRPageLoad") :: string,
	} :: GenericDiagAction,
	[EventNames.QRPageLoadFailed] = {
		name = game:DefineFastString("ProfileQRPageLoadFailed", "ProfileQRPageLoadFailed") :: string,
	},
	[EventNames.QRPageFriendRequestBannerShown] = {
		name = game:DefineFastString("ProfileQRPageFriendRequestBannerShown", "ProfileQRPageFriendRequestBannerShown") :: string,
	},
	[EventNames.QRPageFriendRequestBannerAccepted] = {
		name = game:DefineFastString(
			"ProfileQRPageFriendRequestBannerAccepted",
			"ProfileQRPageFriendRequestBannerAccepted"
		) :: string,
	},
	[EventNames.QRPageFriendRequestBannerDismissed] = {
		name = game:DefineFastString(
			"ProfileQRPageFriendRequestBannerDismissed",
			"ProfileQRPageFriendRequestBannerDismissed"
		) :: string,
	},
}

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local enumerate = require(Packages.Enumerate)

return enumerate(script.Name, {
	QRPageLoad = "QRPageLoad",
	QRPageLoadFailed = "QRPageLoadFailed",
	QRPageFriendRequestBannerShown = "QRPageFriendRequestBannerShown",
	QRPageFriendRequestBannerAccepted = "QRPageFriendRequestBannerAccepted",
	QRPageFriendRequestBannerDismissed = "QRPageFriendRequestBannerDismissed",
	QRCode3DAvatarLoad = "QRCode3DAvatarLoad",
})

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local findElementWithAssert = SocialTestHelpers.TestHelpers.findElementWithAssert
local findImageSet = SocialTestHelpers.TestHelpers.findImageSet
local TextKeys = require(ProfileQRCode.Common.TextKeys)

return {
	findQRCodeView = findElementWithAssert({ Name = "QRCodeView" }),
	findQRCode = findElementWithAssert({ Name = "QRCode" }),
	findDescription = findElementWithAssert({ Text = TextKeys.Description }),
	findTopBarTitle = findElementWithAssert({ Text = TextKeys.Title }),
	findTopBar = findElementWithAssert({ Name = "TopBar" }),
	findPlayerAvatar = findElementWithAssert({ Name = "PlayerAvatar" }),
	findBackButton = findElementWithAssert(findImageSet("icons/navigation/close")),
	findRetryButton = findElementWithAssert(findImageSet("icons/common/refresh")),
	findLoadingElement = findElementWithAssert({ Image = "rbxasset://textures/ui/LuaApp/graphic/shimmer.png" }),
	findQRCodeIcon = findElementWithAssert({ Name = "QRImage" }),
	findUsername = findElementWithAssert({ Name = "Username" }),
	findNotificationDescription = findElementWithAssert({ Name = "Description" }),
	findCloseButton = findElementWithAssert({ Name = "CloseButton" }),
	findAcceptButton = findElementWithAssert({ Name = "AcceptButton" }),
}

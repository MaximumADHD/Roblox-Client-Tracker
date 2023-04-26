local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local SocialLuaAnalytics = require(Packages.SocialLuaAnalytics)

local EventNames = require(script.Parent.EventNames)
local Enums = SocialLuaAnalytics.Analytics.Enums
local BtnValues = require(script.Parent.Parent.Analytics.BtnValues)
local Contexts = Enums.Contexts
local EventTypes = Enums.EventTypes
local Dash = require(Packages.Dash)

type GenericEvent = {
	context: any,
	eventType: any,
	additionalInfo: any?,
	formatRulesForAdditionalInfo: any?,
}

local coreEvents = {
	[EventNames.QRPageLoad] = {
		context = Contexts.ProfileQRCode,
		eventType = EventTypes.PageLoad,
		formatRulesForAdditionalInfo = {
			shareLinkId = Dash.identity,
		},
	} :: GenericEvent,
	[EventNames.QRCode3DAvatarLoad] = {
		context = Contexts.ProfileQRCode,
		eventType = EventTypes.PageLoad,
	},
	[EventNames.QRPageLoadFailed] = {
		context = Contexts.ProfileQRCode,
		eventType = EventTypes.PageLoadFailed,
		formatRulesForAdditionalInfo = {
			errorReason = Dash.identity,
		},
	},
	[EventNames.QRPageFriendRequestBannerShown] = {
		context = Contexts.ProfileQRCode,
		eventType = EventTypes.ProfileQRCodeNotificationBannerShown,
		formatRulesForAdditionalInfo = {
			qrCodeBannerQueueSize = Dash.identity,
		},
	},
	[EventNames.QRPageFriendRequestBannerAccepted] = {
		context = Contexts.ProfileQRCode,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			btn = BtnValues.FriendRequestBannerAccepted,
		},
		formatRulesForAdditionalInfo = {
			qrCodeBannerQueueSize = Dash.identity,
		},
	},
	[EventNames.QRPageFriendRequestBannerDismissed] = {
		context = Contexts.ProfileQRCode,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			btn = BtnValues.FriendRequestBannerDismissed,
		},
		formatRulesForAdditionalInfo = {
			qrCodeBannerQueueSize = Dash.identity,
		},
	},
}

return coreEvents

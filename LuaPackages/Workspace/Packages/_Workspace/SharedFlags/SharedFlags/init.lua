return {
	-- Common
	UIBlox = require(script.UIBlox),
	isSubjectToDesktopPolicies = require(script.isSubjectToDesktopPolicies),

	-- Ecosystems
	getFFlagUseVerifiedBadgeExperienceModal = require(script.getFFlagUseVerifiedBadgeExperienceModal),
	getFFlagVBXboxReducerFix = require(script.getFFlagVBXboxReducerFix),
	getFFlagVirtualEventsGraphQL = require(script.getFFlagVirtualEventsGraphQL),
	getFFlagHorizontalMediaOnEventDetailsPage = require(script.getFFlagHorizontalMediaOnEventDetailsPage),
	getFStringEventsOnExperienceDetailsPageLayer = require(script.getFStringEventsOnExperienceDetailsPageLayer),
	getFFlagRemoveVirtualEventsExperiment = require(script.getFFlagRemoveVirtualEventsExperiment),
	getFFlagFixEventSharesheet = require(script.getFFlagFixEventSharesheet),
	getFFlagFixFlakyTestsInVirtualEvents = require(script.getFFlagFixFlakyTestsInVirtualEvents),
	getFFlagEventHostWorksForGroups = require(script.getFFlagEventHostWorksForGroups),

	-- LuaApp
	getFFlagLuaProfileShareWithDesktopPolicy = require(script.getFFlagLuaProfileShareWithDesktopPolicy),
	GetFFlagEnableSwapToSourceButton = require(script.GetFFlagEnableSwapToSourceButton),
	FFlagDesktopLaunchLinksInExternalBrowser = require(script.FFlagDesktopLaunchLinksInExternalBrowser),
	ConvertUniverseIdToString = require(script.ConvertUniverseIdToString),
	FFlagMultiTryOnPurchaseGamepadEnabled = require(script.FFlagMultiTryOnPurchaseGamepadEnabled),
	GetFFlagUseExperienceDetailsPageSelector = require(script.GetFFlagUseExperienceDetailsPageSelector),

	-- Social
	GetFFlagLuaAppEnableSquadPage = require(script.GetFFlagLuaAppEnableSquadPage),
	getFFlagProfileAliasEnabled = require(script.getFFlagProfileAliasEnabled),
	getFFlagEnableRoduxUsersRoactChat = require(script.getFFlagEnableRoduxUsersRoactChat),
	getFFlagGameInviteShortUrlEnabled = require(script.getFFlagGameInviteShortUrlEnabled),
	getFFlagAddFriendsQRCodeAnalytics = require(script.getFFlagAddFriendsQRCodeAnalytics),
	getFFlagProfileQRCodeCoreFeaturesEnabled = require(script.getFFlagProfileQRCodeCoreFeaturesEnabled),
	getFFlagProfileQRCodeFixDistanceFromTop = require(script.getFFlagProfileQRCodeFixDistanceFromTop),
	getFFlagReEnableAutoSyncContacts = require(script.getFFlagReEnableAutoSyncContacts),
	getFFlagEnableDeeplinkForContactsList = require(script.getFFlagEnableDeeplinkForContactsList),
	getFFlagAddFriendsPageHideBottomBar = require(script.getFFlagAddFriendsPageHideBottomBar),
	getFFlagLuaProfileDeps438 = require(script.getFFlagLuaProfileDeps438),
	getFFlagMoveMutualFriendsTextToUtils = require(script.getFFlagMoveMutualFriendsTextToUtils),
	GetFFlagLuaAppFriendsCarouselExperimentCleanup = require(script.GetFFlagLuaAppFriendsCarouselExperimentCleanup),
	getFFlagLuaProfileEnabledDesktop = require(script.getFFlagLuaProfileEnabledDesktop),
	getFFlagSocialMoveRecsSource = require(script.getFFlagSocialMoveRecsSource),
	getFFlagApolloClientFetchPIFeedConnector = require(script.getFFlagApolloClientFetchPIFeedConnector),
	getFFlagProfileMutualFriendsListFetch = require(script.getFFlagProfileMutualFriendsListFetch),

	-- Notifications
	getFFlagEnableNotificationExperienceInvite = require(script.getFFlagEnableNotificationExperienceInvite),

	-- VR
	GetFFlagUseGridPageLayoutInVR = require(script.GetFFlagUseGridPageLayoutInVR),
	GetFFlagVRAvatarExperienceNoLandingPage = require(script.GetFFlagVRAvatarExperienceNoLandingPage),
	GetFFlagFixStateMutationInVROverlay = require(script.GetFFlagFixStateMutationInVROverlay),
	GetFFlagActivateShadowsInWorldspace = require(script.GetFFlagActivateShadowsInWorldspace),
	GetFFlagEnableIGMv2VoiceReportFlows = require(script.GetFFlagEnableIGMv2VoiceReportFlows),

	-- TenFootUI
	GetFFlagTenFootUiDesignTokens = require(script.GetFFlagTenFootUiDesignTokens),
	GetFFlagGridDesignTokens = require(script.GetFFlagGridDesignTokens),

	-- IXP Layers
	getFStringSocialUserSearchResultsPageLayer = require(script.getFStringSocialUserSearchResultsPageLayer),
	getFStringSocialAddFriendsPageLayer = require(script.getFStringSocialAddFriendsPageLayer),
	getFStringSocialFriendsLandingLayer = require(script.getFStringSocialFriendsLandingLayer),
	getFStringSocialFriendsLayer = require(script.getFStringSocialFriendsLayer),
	getFStringSocialProfileLayer = require(script.getFStringSocialProfileLayer),
	GetFStringLoadingScreenIxpLayer = require(script.GetFStringLoadingScreenIxpLayer),
	GetFStringLargerRobuxUpsellIxpLayer = require(script.GetFStringLargerRobuxUpsellIxpLayer),

	-- Misc
	FFlagLuaAppFixMessageBusUnsubscribe = require(script.FFlagLuaAppFixMessageBusUnsubscribe),
	FFlagAXCatalogSearchSizeGamepad = require(script.FFlagAXCatalogSearchSizeGamepad),
	GetFFlagUseColor3sForBodyParts = require(script.GetFFlagUseColor3sForBodyParts),
	GetFFlagEnableUnifiedWebViews = require(script.GetFFlagEnableUnifiedWebViews),
	GetFFlagEnableVRWelcomePanel = require(script.GetFFlagEnableVRWelcomePanel),
	GetFFlagSkipRedundantVoiceCheck = require(script.GetFFlagSkipRedundantVoiceCheck),
	getFFlagChatUserDeepLinkEnabled = require(script.getFFlagChatUserDeepLinkEnabled),
	getFFlagFixLearnMoreLinkViaSocialTab = require(script.getFFlagFixLearnMoreLinkViaSocialTab),
	getFFlagFriendsCarouselDontUseIngestService = require(script.getFFlagFriendsCarouselDontUseIngestService),
	getFFlagOffNetworkAnalytics = require(script.getFFlagOffNetworkAnalytics),
	getFFlagPYMKDontUseIngestService = require(script.getFFlagPYMKDontUseIngestService),
	getFFlagSocialAddFriendshipRequestEvent = require(script.getFFlagSocialAddFriendshipRequestEvent),
	getFFlagSocialProfileShareAnalyticsEnabled = require(script.getFFlagSocialProfileShareAnalyticsEnabled),
	getFFlagSoothsayerCheckForContactImporter = require(script.getFFlagSoothsayerCheckForContactImporter),
	getFFlagMigrateSocialNetworking = require(script.getFFlagMigrateSocialNetworking),
	GetEnableDesignSystemExperiment = require(script.GetEnableDesignSystemExperiment),
	GetFFlagDisableBubbleChatForExpChat = require(script.GetFFlagDisableBubbleChatForExpChat),
	GetFFlagShareGetPlatformTargetImpl = require(script.GetFFlagShareGetPlatformTargetImpl),
	GetFFlagUseLoadableImageForAvatarThumbnails = require(script.GetFFlagUseLoadableImageForAvatarThumbnails),
	GetFFlagUpgradeExpChatV3_4_4 = require(script.GetFFlagUpgradeExpChatV3_4_4),
	GetFFlagLuaAppAddSignalToFocusArea = require(script.GetFFlagLuaAppAddSignalToFocusArea),
	GetFFlagLuaAppUseUIBloxColorPalettes = require(script.GetFFlagLuaAppUseUIBloxColorPalettes),
	isNewFriendsEndpointsEnabled = require(script.isNewFriendsEndpointsEnabled),
	GetFFlagApiProxyGetUserByIdSwitchToUsersApiEnabled = require(
		script.GetFFlagApiProxyGetUserByIdSwitchToUsersApiEnabled
	),
	getFFlagProfileQRCodeOpenDeepLink = require(script.getFFlagProfileQRCodeOpenDeepLink),
	GetFFlagPeekViewDeprecateFitChildren = require(script.GetFFlagPeekViewDeprecateFitChildren),
	GetFFlagUseVoiceExitBetaLanguage = require(script.GetFFlagUseVoiceExitBetaLanguage),
	GetFFlagGameInfoRowVoiceExitBetaBugFix = require(script.GetFFlagGameInfoRowVoiceExitBetaBugFix),
	GetFFlagHideConnectPageWebViewItemsForVR = require(script.GetFFlagHideConnectPageWebViewItemsForVR),
	GetFFlagPeekViewClipFramePositionFromBottom = require(script.GetFFlagPeekViewClipFramePositionFromBottom),
	GetFFlagDisableEditProfileForVR = require(script.GetFFlagDisableEditProfileForVR),
	GetFFlagLuaAppInfiniteHomePage = require(script.GetFFlagLuaAppInfiniteHomePage),
	getFFlagProfileQRCodePageEnabled = require(script.getFFlagProfileQRCodePageEnabled),
	getFFlagProfileQRCodePageSoothsayerAccessEnabled = require(script.getFFlagProfileQRCodePageSoothsayerAccessEnabled),
	getFFlagProfileQRCodeFriendRequestContextInfoEnabled = require(
		script.getFFlagProfileQRCodeFriendRequestContextInfoEnabled
	),
	getFFlagLuaNativeUtilEnableSMSHandling = require(script.getFFlagLuaNativeUtilEnableSMSHandling),
	GetFFlagEnableTopBarVRPolicyOverride = require(script.GetFFlagEnableTopBarVRPolicyOverride),
	GetFFlagPhoneVerificationWebviewShouldBeFullscreen = require(
		script.GetFFlagPhoneVerificationWebviewShouldBeFullscreen
	),
	GetFFlagLuaAppGamePassGameDetails = require(script.GetFFlagLuaAppGamePassGameDetails),
	GetFFlagApolloClientFetchThumbnails = require(script.GetFFlagApolloClientFetchThumbnails),
	GetFFlagApiFetchThumbnailsKeyMapper = require(script.GetFFlagApiFetchThumbnailsKeyMapper),
	getFFlagDebugLuaAppAlwaysUseGamepad = require(script.getFFlagDebugLuaAppAlwaysUseGamepad),
	GetFFlagApolloClientFetchExperiences = require(script.GetFFlagApolloClientFetchExperiences),
	GetFFlagEnableSurveyImprovements = require(script.GetFFlagEnableSurveyImprovements),
	GetFFlagIrisV2Enabled = require(script.GetFFlagIrisV2Enabled),
	GetFFlagDisableCDLQrCodeForMaquettes = require(script.GetFFlagDisableCDLQrCodeForMaquettes),
	GetFFlagPipEnabled = require(script.GetFFlagPipEnabled),
	GetFFlagPlayerBillboardReducerEnabled = require(script.GetFFlagPlayerBillboardReducerEnabled),
	GetFFlagEnableIAPEntryPointDisablePolicy = require(script.GetFFlagEnableIAPEntryPointDisablePolicy),
	GetFFlagEnableMaquettesU13Block = require(script.GetFFlagEnableMaquettesU13Block),
	GetFFlagInviteListRerank = require(script.GetFFlagInviteListRerank),
}

return {
	-- Common
	UIBlox = require(script.UIBlox),
	isSubjectToDesktopPolicies = require(script.isSubjectToDesktopPolicies),

	-- Ecosystems
	getFFlagUseVerifiedBadgeExperienceModal = require(script.getFFlagUseVerifiedBadgeExperienceModal),
	getFFlagVBDuarFix = require(script.getFFlagVBDuarFix),
	getFFlagFixVerifiedBadgeExperienceDetailsPageOrdering = require(
		script.getFFlagFixVerifiedBadgeExperienceDetailsPageOrdering
	),
	getFFlagVBXboxReducerFix = require(script.getFFlagVBXboxReducerFix),
	GetFFlagFixGameDetailsAutomaticSize = require(script.GetFFlagFixGameDetailsAutomaticSize),
	getFFlagRemoveEventsPageFromMoreTab = require(script.getFFlagRemoveEventsPageFromMoreTab),
	getFFlagVirtualEventsGraphQL = require(script.getFFlagVirtualEventsGraphQL),
	getFFlagHorizontalMediaOnEventDetailsPage = require(script.getFFlagHorizontalMediaOnEventDetailsPage),
	getFFlagHideAttendanceCountsForBoringEvents = require(script.getFFlagHideAttendanceCountsForBoringEvents),
	getFFlagSendAttendanceCountWithTrackingEvents = require(script.getFFlagSendAttendanceCountWithTrackingEvents),

	-- LuaApp
	getFFlagLuaProfileShareWithDesktopPolicy = require(script.getFFlagLuaProfileShareWithDesktopPolicy),
	GetFFlagEnableSwapToSourceButton = require(script.GetFFlagEnableSwapToSourceButton),
	FFlagDesktopLaunchLinksInExternalBrowser = require(script.FFlagDesktopLaunchLinksInExternalBrowser),
	GetFFlagLuaAppUseOmniRecDefaultPolicy = require(script.GetFFlagLuaAppUseOmniRecDefaultPolicy),
	ConvertUniverseIdToString = require(script.ConvertUniverseIdToString),
	getFFlagLuaAppGridPageLayoutPolicy = require(script.getFFlagLuaAppGridPageLayoutPolicy),

	-- Social
	GetFFlagLuaAppEnableSquadPage = require(script.GetFFlagLuaAppEnableSquadPage),
	getFFlagAddFriendsSearchbarIXPEnabled = require(script.getFFlagAddFriendsSearchbarIXPEnabled),
	getFFlagAddFriendsFullSearchbarAnalytics = require(script.getFFlagAddFriendsFullSearchbarAnalytics),
	getFFlagProfileAliasEnabled = require(script.getFFlagProfileAliasEnabled),
	getFFlagProfileAddQRCodeEventLogging = require(script.getFFlagProfileAddQRCodeEventLogging),
	getFFlagProfileQRCodeReducerEnabled = require(script.getFFlagProfileQRCodeReducerEnabled),
	getFFlagEnableRoduxUsersRoactChat = require(script.getFFlagEnableRoduxUsersRoactChat),
	getFFlagMigrageHttpRequestToPackage = require(script.getFFlagMigrageHttpRequestToPackage),
	getFFlagEnableContactInvitesForNonPhoneVerified = require(script.getFFlagEnableContactInvitesForNonPhoneVerified),
	getFFlagGameInviteShortUrlEnabled = require(script.getFFlagGameInviteShortUrlEnabled),
	getFFlagAddFriendsQRCodeAnalytics = require(script.getFFlagAddFriendsQRCodeAnalytics),
	getFFlagProfileQRCodeCoreFeaturesEnabled = require(script.getFFlagProfileQRCodeCoreFeaturesEnabled),

	-- Notifications
	getFFlagEnableNotificationExperienceInvite = require(script.getFFlagEnableNotificationExperienceInvite),

	-- VR
	GetFFlagUseGridPageLayoutInVR = require(script.GetFFlagUseGridPageLayoutInVR),
	GetFFlagVRAvatarExperienceNoLandingPage = require(script.GetFFlagVRAvatarExperienceNoLandingPage),
	GetFFlagFixStateMutationInVROverlay = require(script.GetFFlagFixStateMutationInVROverlay),
	GetFFlagActivateShadowsInWorldspace = require(script.GetFFlagActivateShadowsInWorldspace),

	-- IXP Layers
	getFStringSocialUserSearchResultsPageLayer = require(script.getFStringSocialUserSearchResultsPageLayer),
	getFStringSocialAddFriendsPageLayer = require(script.getFStringSocialAddFriendsPageLayer),
	getFStringSocialFriendsLayer = require(script.getFStringSocialFriendsLayer),
	getFStringSocialProfileLayer = require(script.getFStringSocialProfileLayer),
	GetFStringLoadingScreenIxpLayer = require(script.GetFStringLoadingScreenIxpLayer),
	GetFStringLargerRobuxUpsellIxpLayer = require(script.GetFStringLargerRobuxUpsellIxpLayer),

	-- Misc
	FFlagLuaAppFixMessageBusUnsubscribe = require(script.FFlagLuaAppFixMessageBusUnsubscribe),
	FFlagAXCatalogSearchSizeGamepad = require(script.FFlagAXCatalogSearchSizeGamepad),
	GetFFlagAvatarEditorServiceInUniversalApp = require(script.GetFFlagAvatarEditorServiceInUniversalApp),
	GetEngineFeatureIxpUserAppLayersPrefetchEnabled = require(script.GetEngineFeatureIxpUserAppLayersPrefetchEnabled),
	GetFFlagEnableUnifiedWebViews = require(script.GetFFlagEnableUnifiedWebViews),
	GetFFlagEnableVRWelcomePanel = require(script.GetFFlagEnableVRWelcomePanel),
	GetFFlagSkipRedundantVoiceCheck = require(script.GetFFlagSkipRedundantVoiceCheck),
	getFFlagChatUserDeepLinkEnabled = require(script.getFFlagChatUserDeepLinkEnabled),
	getFFlagContactImporterEnabledForDev = require(script.getFFlagContactImporterEnabledForDev),
	getFFlagContactImporterWithPhoneVerification = require(script.getFFlagContactImporterWithPhoneVerification),
	getFFlagFixLearnMoreLinkViaSocialTab = require(script.getFFlagFixLearnMoreLinkViaSocialTab),
	getFFlagFriendsCarouselDontUseIngestService = require(script.getFFlagFriendsCarouselDontUseIngestService),
	getFFlagOffNetworkAnalytics = require(script.getFFlagOffNetworkAnalytics),
	getFFlagPYMKDontUseIngestService = require(script.getFFlagPYMKDontUseIngestService),
	getFFlagSocialAddFriendshipRequestEvent = require(script.getFFlagSocialAddFriendshipRequestEvent),
	getFFlagSocialPanelIAEnabled = require(script.GetFFlagSocialPanelIAEnabled),
	getFFlagSocialAddMessageModal = require(script.getFFlagSocialAddMessageModal),
	getFFlagSocialProfileShareAnalyticsEnabled = require(script.getFFlagSocialProfileShareAnalyticsEnabled),
	getFFlagSoothsayerCheckForContactImporter = require(script.getFFlagSoothsayerCheckForContactImporter),
	getFFlagMigrateSocialNetworking = require(script.getFFlagMigrateSocialNetworking),
	GetEnableDesignSystemExperiment = require(script.GetEnableDesignSystemExperiment),
	GetFFlagDisableBubbleChatForExpChat = require(script.GetFFlagDisableBubbleChatForExpChat),
	GetFFlagShareGetPlatformTargetImpl = require(script.GetFFlagShareGetPlatformTargetImpl),
	GetFFlagUseLoadableImageForAvatarThumbnails = require(script.GetFFlagUseLoadableImageForAvatarThumbnails),
	GetFFlagAXSaveAvatarThumbnailCustomizationWithAES = require(
		script.GetFFlagAXSaveAvatarThumbnailCustomizationWithAES
	),
	GetFFlagUpgradeExpChatV3_3_9 = require(script.GetFFlagUpgradeExpChatV3_3_9),
	GetEnableFriendFooterOnHomePage = require(script.GetEnableFriendFooterOnHomePage),
	GetFFlagLuaAppAddSignalToFocusArea = require(script.GetFFlagLuaAppAddSignalToFocusArea),
	GetFFlagLuaAppUseUIBloxColorPalettes = require(script.GetFFlagLuaAppUseUIBloxColorPalettes),
	isNewFriendsEndpointsEnabled = require(script.isNewFriendsEndpointsEnabled),
	GetFFlagApiProxyGetUserByIdSwitchToUsersApiEnabled = require(
		script.GetFFlagApiProxyGetUserByIdSwitchToUsersApiEnabled
	),
	getFFlagProfileQRCodeOpenDeepLink = require(script.getFFlagProfileQRCodeOpenDeepLink),
	GetFFlagUseCorrectedFriendSortUtil = require(script.GetFFlagUseCorrectedFriendSortUtil),
	GetFFlagPeekViewDeprecateFitChildren = require(script.GetFFlagPeekViewDeprecateFitChildren),
	GetFFlagHideTopbarWebviewItemsForVR = require(script.GetFFlagHideTopbarWebviewItemsForVR),
	GetFFlagHideWebViewItemsInContextMenuForVR = require(script.GetFFlagHideWebViewItemsInContextMenuForVR),
	GetFFlagHideSystemBarForVRLogin = require(script.GetFFlagHideSystemBarForVRLogin),
	GetFFlagUseVoiceExitBetaLanguage = require(script.GetFFlagUseVoiceExitBetaLanguage),
	GetFFlagGameInfoRowVoiceExitBetaBugFix = require(script.GetFFlagGameInfoRowVoiceExitBetaBugFix),
	GetFFlagHideConnectPageWebViewItemsForVR = require(script.GetFFlagHideConnectPageWebViewItemsForVR),
	GetFFlagHideMorePageContentWithNoWebViewForVR = require(script.GetFFlagHideMorePageContentWithNoWebViewForVR),
	GetFFlagHideGameDetailsWebViewItemsForVR = require(script.GetFFlagHideGameDetailsWebViewItemsForVR),
	GetFFlagEnableToastForDisabledWebViewItemsInVR = require(script.GetFFlagEnableToastForDisabledWebViewItemsInVR),
	getFFlagFixFriendshipOriginSourceType = require(script.getFFlagFixFriendshipOriginSourceType),
	GetFFlagPeekViewClipFramePositionFromBottom = require(script.GetFFlagPeekViewClipFramePositionFromBottom),
	getFFlagPYMKUseDesktopPolicies = require(script.getFFlagPYMKUseDesktopPolicies),
	GetFFlagDisableEditProfileForVR = require(script.GetFFlagDisableEditProfileForVR),
	GetFFlagEnableVRReadyToast = require(script.GetFFlagEnableVRReadyToast),
	GetFFlagLuaAppInfiniteHomePage = require(script.GetFFlagLuaAppInfiniteHomePage),
	getFFlagProfileQRCodePageEnabled = require(script.getFFlagProfileQRCodePageEnabled),
	getFFlagProfileQRCodePageSoothsayerAccessEnabled = require(script.getFFlagProfileQRCodePageSoothsayerAccessEnabled),
	GetFFlagLuaAppWorkspaceUseLumberyakLogger = require(script.GetFFlagLuaAppWorkspaceUseLumberyakLogger),
	getFFlagProfileQRCodeFriendRequestContextInfoEnabled = require(
		script.getFFlagProfileQRCodeFriendRequestContextInfoEnabled
	),
	getFFlagLuaNativeUtilEnableSMSHandling = require(script.getFFlagLuaNativeUtilEnableSMSHandling),
	GetFFlagHideTopBarRobuxButton = require(script.GetFFlagHideTopBarRobuxButton),
	GetFFlagEnableTopBarVRPolicyOverride = require(script.GetFFlagEnableTopBarVRPolicyOverride),
	GetFFlagHidePrivateServerInGameDetailsForVR = require(script.GetFFlagHidePrivateServerInGameDetailsForVR),
	getFFlagFriendsCarouselRemoveVariant = require(script.getFFlagFriendsCarouselRemoveVariant),
	GetFFlagPhoneVerificationWebviewShouldBeFullscreen = require(
		script.GetFFlagPhoneVerificationWebviewShouldBeFullscreen
	),
	getFFlagSocialOnboardingExperimentEnabled = require(script.getFFlagSocialOnboardingExperimentEnabled),
	GetFFlagLuaAppGamePassGameDetails = require(script.GetFFlagLuaAppGamePassGameDetails),
	GetFFlagApolloClientFetchThumbnails = require(script.GetFFlagApolloClientFetchThumbnails),
	GetFFlagApiFetchThumbnailsKeyMapper = require(script.GetFFlagApiFetchThumbnailsKeyMapper),
	getFFlagDebugLuaAppAlwaysUseGamepad = require(script.getFFlagDebugLuaAppAlwaysUseGamepad),
}

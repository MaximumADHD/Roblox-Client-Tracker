local FriendsLanding = script.Parent
local Packages = FriendsLanding.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local SocialLuaAnalytics = require(Packages.SocialLuaAnalytics)

local React = require(Packages.React)
export type ReactElement<Props, ElementType> = React.ReactElement<Props, ElementType>

local Lumberyak = require(Packages.Lumberyak)
local logger = Lumberyak.Logger.new(nil, "FriendsLanding")
local httpLogger = logger:new("FriendsLanding Networking")
local maxHttpRetries = game:DefineFastInt("FriendsLandingHttpRetryCount", 3)
local Players = game:GetService("Players")
local Otter = require(Packages.Otter)
local getFFlagSocialAddFriendshipRequestEvent = require(Packages.SharedFlags).getFFlagSocialAddFriendshipRequestEvent
local getFFlagContactImporterEnabledForDev = require(Packages.SharedFlags).getFFlagContactImporterEnabledForDev
local getFFlagContactImporterWithPhoneVerification =
	require(Packages.SharedFlags).getFFlagContactImporterWithPhoneVerification
local getFFlagVerifiedBadgeInFriendsLanding = require(FriendsLanding.Flags.getFFlagVerifiedBadgeInFriendsLanding)
local getFFlagAddFriendsSearchbarIXPEnabled = require(Packages.SharedFlags).getFFlagAddFriendsSearchbarIXPEnabled
local getFFlagAddFriendsFullSearchbarAnalytics = require(Packages.SharedFlags).getFFlagAddFriendsFullSearchbarAnalytics
local getFStringSocialAddFriendsPageLayer = require(Packages.SharedFlags).getFStringSocialAddFriendsPageLayer
local getFStringSocialFriendsLayer = require(Packages.SharedFlags).getFStringSocialFriendsLayer
local getFFlagProfileQRCodeFriendRequestContextInfoEnabled =
	require(Packages.SharedFlags).getFFlagProfileQRCodeFriendRequestContextInfoEnabled
local getFFlagEnableContactInvitesForNonPhoneVerified =
	require(Packages.SharedFlags).getFFlagEnableContactInvitesForNonPhoneVerified
local getFFlagSocialAddGameJoinSource = require(Packages.SharedFlags).getFFlagSocialAddGameJoinSource
local getFFlagSocialOnboardingExperimentEnabled =
	require(Packages.SharedFlags).getFFlagSocialOnboardingExperimentEnabled
local getFFlagProfileQRCodeCoreFeaturesEnabled = require(Packages.SharedFlags).getFFlagProfileQRCodeCoreFeaturesEnabled
local getFFlagAddFriendsQRCodeAnalytics = require(Packages.SharedFlags).getFFlagAddFriendsQRCodeAnalytics

local HttpRequest = LuaSocialLibrariesDeps.httpRequest
local myHttpRequest = HttpRequest.config({
	requestFunction = function(url, requestMethod, requestOptions)
		httpLogger:info("Fetching: {}", string.format("[ requestMethod = %q, url = %q ]", requestMethod, url))
		return HttpRequest.requestFunctions.HttpRbxApi(url, requestMethod, requestOptions)
	end,
	postRequestFunction = function(response, request)
		httpLogger:debug(
			"Returned: {}",
			string.format(
				"[ requestMethod = %q, url = %q, statusCode = %s, body = %s ]",
				request.requestMethod,
				request.url,
				response.StatusCode,
				response.Body
			)
		)
	end,

	maxRetryCount = maxHttpRetries,
})

local RoduxNetworking = LuaSocialLibrariesDeps.RoduxNetworking
local myRoduxNetworking = RoduxNetworking.config({
	keyPath = "FriendsLanding.NetworkStatus",
	networkImpl = myHttpRequest,
})

local RoduxFriends = LuaSocialLibrariesDeps.RoduxFriends
local RoduxPresence = LuaSocialLibrariesDeps.RoduxPresence
local RoduxUsers = LuaSocialLibrariesDeps.RoduxUsers
local NetworkingFriends = LuaSocialLibrariesDeps.NetworkingFriends

local ContactImporter = require(Packages.ContactImporter)

local SocialLibrariesPackage = LuaSocialLibrariesDeps.SocialLibraries.config({})

return {
	Promise = require(Packages.Promise),
	llama = LuaSocialLibrariesDeps.llama,
	Roact = require(Packages.Roact),
	Rodux = require(Packages.Rodux),
	React = require(Packages.React),
	RoactNavigation = require(Packages.RoactNavigation),
	RoactRodux = require(Packages.RoactRodux),
	RoactAppExperiment = require(Packages.RoactAppExperiment),
	Logger = logger,
	Text = require(Packages.AppCommonLib).Text,
	t = require(Packages.t),
	UIBlox = require(Packages.UIBlox),
	withLocalization = require(Packages.Localization).withLocalization,
	memoize = require(Packages.AppCommonLib).memoize,
	enumerate = require(Packages.enumerate),
	LocalizationProvider = require(Packages.Localization).LocalizationProvider,
	Url = require(Packages.Http).Url,
	Lumberyak = require(Packages.Lumberyak),
	FormFactor = require(Packages.FormFactor).Enums.FormFactor,
	SocialLibraries = SocialLibrariesPackage,
	SocialLuaAnalytics = SocialLuaAnalytics,
	ProfileQRCode = require(Packages.ProfileQRCode),

	UniversalAppPolicy = require(Packages.UniversalAppPolicy).UniversalAppPolicy,
	tutils = require(Packages.tutils),
	AnalyticsService = require(Packages.Analytics).Analytics.new(game:GetService("RbxAnalyticsService")),
	RoduxNetworking = myRoduxNetworking,
	RoduxFriends = RoduxFriends.config({
		keyPath = "FriendsLanding.Friends",
	}),
	Dash = require(Packages.Dash),
	RoduxUsers = RoduxUsers.config({
		keyPath = "FriendsLanding.Users",
	}),
	RoduxPresence = RoduxPresence.config({
		keyPath = "FriendsLanding.Presence",
	}),
	RoduxGames = LuaSocialLibrariesDeps.RoduxGames.config({
		keyPath = "FriendsLanding.Games",
	}),
	RoduxUserPermissions = LuaSocialLibrariesDeps.RoduxUserPermissions.config({
		keyPath = "FriendsLanding.UserPermissions",
	}),
	Players = Players,
	NetworkingFriendsEnums = LuaSocialLibrariesDeps.NetworkingFriends.Enums,
	FriendsNetworking = NetworkingFriends.config({
		roduxNetworking = myRoduxNetworking,
	}),
	GamesNetworking = LuaSocialLibrariesDeps.NetworkingGames.config({
		roduxNetworking = myRoduxNetworking,
	}),
	NetworkingUserSettings = LuaSocialLibrariesDeps.NetworkingUserSettings.config({
		roduxNetworking = myRoduxNetworking,
	}),
	NetworkingAccountInformation = LuaSocialLibrariesDeps.NetworkingAccountInformation.config({
		roduxNetworking = myRoduxNetworking,
	}),
	Otter = Otter,
	CollisionMatchers = LuaSocialLibrariesDeps.CollisionMatchers,
	getFFlagSocialAddFriendshipRequestEvent = getFFlagSocialAddFriendshipRequestEvent,
	getFFlagContactImporterEnabledForDev = getFFlagContactImporterEnabledForDev,
	getFFlagContactImporterWithPhoneVerification = getFFlagContactImporterWithPhoneVerification,
	getFFlagVerifiedBadgeInFriendsLanding = getFFlagVerifiedBadgeInFriendsLanding,
	getFFlagAddFriendsSearchbarIXPEnabled = getFFlagAddFriendsSearchbarIXPEnabled,
	getFFlagAddFriendsFullSearchbarAnalytics = getFFlagAddFriendsFullSearchbarAnalytics,
	getFFlagEnableContactInvitesForNonPhoneVerified = getFFlagEnableContactInvitesForNonPhoneVerified,
	getFStringSocialAddFriendsPageLayer = getFStringSocialAddFriendsPageLayer,
	getFStringSocialFriendsLayer = getFStringSocialFriendsLayer,
	getFFlagProfileQRCodeFriendRequestContextInfoEnabled = getFFlagProfileQRCodeFriendRequestContextInfoEnabled,
	getFFlagSocialAddGameJoinSource = getFFlagSocialAddGameJoinSource,
	getFFlagSocialOnboardingExperimentEnabled = getFFlagSocialOnboardingExperimentEnabled,
	getFFlagProfileQRCodeCoreFeaturesEnabled = getFFlagProfileQRCodeCoreFeaturesEnabled,
	getFFlagAddFriendsQRCodeAnalytics = getFFlagAddFriendsQRCodeAnalytics,

	FindFriendsModal = ContactImporter.FindFriendsModal,
	ContactsList = ContactImporter.ContactsList,
	CINavigator = ContactImporter.Navigator,
	ContactsRevokedAccessDialog = ContactImporter.ContactsRevokedAccessDialog,
	updateOptedInUsers = require(Packages.SocialModalsCommon).Utils.updateOptedInUsers,
	fetchOSPermissionsForContacts = require(Packages.ContactImporter).Utils.fetchOSPermissionsForContacts,
	PermissionsProtocol = require(Packages.PermissionsProtocol).PermissionsProtocol,
	AppStorageService = game:GetService("AppStorageService"),
	ContactImporterConstants = require(Packages.ContactImporter).Constants,
	ShowContactImporterParams = ContactImporter.ShowContactImporterParams,
	FetchUserSettingsMetadata = require(Packages.DiscoverabilityModal).FetchUserSettingsMetadata,
	DiscoverabilityOverlay = require(Packages.DiscoverabilityModal).DiscoverabilityOverlay,

	Hooks = {
		useLocalization = require(Packages.RoactUtils).Hooks.useLocalization,
	},
}

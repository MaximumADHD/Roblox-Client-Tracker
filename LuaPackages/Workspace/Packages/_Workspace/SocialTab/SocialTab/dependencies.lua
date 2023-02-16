local Root = script.Parent
local Packages = Root.Parent

local LuaChatDeps = require(Packages.LuaChatDeps)
local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)

local Lumberyak = require(Packages.Lumberyak)
local logger = Lumberyak.Logger.new(nil, "SocialTab")

local getFFlagSocialProfileShareAnalyticsEnabled =
	require(Packages.SharedFlags).getFFlagSocialProfileShareAnalyticsEnabled
local getFFlagSocialAddFriendshipRequestEvent = require(Packages.SharedFlags).getFFlagSocialAddFriendshipRequestEvent
local getFFlagSocialPanelIAEnabled = require(Packages.SharedFlags).getFFlagSocialPanelIAEnabled
local getFFlagVBXboxReducerFix = require(Packages.SharedFlags).getFFlagVBXboxReducerFix
local GetFFlagUseCorrectedFriendSortUtil = require(Packages.SharedFlags).GetFFlagUseCorrectedFriendSortUtil
local FFlagExperienceJoinAttemptId = require(Packages.GameProtocol).Flags.FFlagExperienceJoinAttemptId
local GetFFlagHideConnectPageWebViewItemsForVR = require(Packages.SharedFlags).GetFFlagHideConnectPageWebViewItemsForVR
local getFFlagSocialAddGameJoinSource = require(Packages.SharedFlags).getFFlagSocialAddGameJoinSource
local getFFlagAddFriendsNewEmptyStateAndBanners =
	require(Packages.SharedFlags).getFFlagAddFriendsNewEmptyStateAndBanners

local maxHttpRetries = game:DefineFastInt("SocialTabHttpRetryCount", 3)

local HttpRequest = LuaSocialLibrariesDeps.httpRequest
local httpLogger = logger:new("SocialTab Networking")
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
local getFFlagSocialTabReplaceRefreshConversations = require(Root.Flags.getFFlagSocialTabReplaceRefreshConversations)

local RoduxNetworking = LuaSocialLibrariesDeps.RoduxNetworking

local myRoduxNetworking = RoduxNetworking.config({
	keyPath = "SocialTab.NetworkStatus",
	networkImpl = myHttpRequest,
})

local validatePropsWithForwardRef = require(Packages.RoactUtils).validatePropsWithForwardRef

local RoduxPresence = LuaSocialLibrariesDeps.RoduxPresence
local RoduxFriends = LuaSocialLibrariesDeps.RoduxFriends
local RoduxGames = LuaSocialLibrariesDeps.RoduxGames
local RoduxUsers = LuaSocialLibrariesDeps.RoduxUsers
local NetworkingFriends = LuaSocialLibrariesDeps.NetworkingFriends
local NetworkingGames = LuaSocialLibrariesDeps.NetworkingGames

return {
	Promise = require(Packages.Promise),
	llama = LuaSocialLibrariesDeps.llama,
	FitFrame = require(Packages.FitFrame),
	Otter = require(Packages.Otter),
	Roact = require(Packages.Roact),
	React = require(Packages.React),
	Rodux = require(Packages.Rodux),
	Cryo = require(Packages.Cryo),
	RetrievalStatus = require(Packages.Http).Enum.RetrievalStatus,
	RoactNavigation = require(Packages.RoactNavigation),

	RoactRodux = require(Packages.RoactRodux),
	ExternalEventConnection = require(Packages.RoactUtils).ExternalEventConnection,
	Logger = logger,
	t = require(Packages.t),
	Text = require(Packages.AppCommonLib).Text,
	UIBlox = LuaChatDeps.UIBlox,
	withLocalization = require(Packages.Localization).withLocalization,
	useDispatch = require(Packages.RoactUtils).Hooks.RoactRodux.useDispatch,
	useLocalization = require(Packages.RoactUtils).Hooks.useLocalization,
	useSelector = require(Packages.RoactUtils).Hooks.RoactRodux.useSelector,
	memoize = require(Packages.AppCommonLib).memoize,
	enumerate = require(Packages.enumerate),
	LocalizationProvider = require(Packages.Localization).LocalizationProvider,
	Url = require(Packages.Http).Url,
	VerifiedBadges = require(Packages.VerifiedBadges),

	UniversalAppPolicy = require(Packages.UniversalAppPolicy).UniversalAppPolicy,

	AppStyle = {
		LightTheme = require(Packages.Style).Themes.LightTheme,
		DarkTheme = require(Packages.Style).Themes.DarkTheme,
		Gotham = require(Packages.Style).Fonts.Gotham,
	},
	Mock = LuaSocialLibrariesDeps.Mock,
	tutils = require(Packages.tutils),
	AnalyticsService = require(Packages.Analytics).Analytics.new(game:GetService("RbxAnalyticsService")),
	NetworkingPresence = LuaSocialLibrariesDeps.NetworkingPresence.config({
		roduxNetworking = myRoduxNetworking,
	}),
	NetworkingFriends = NetworkingFriends.config({
		roduxNetworking = myRoduxNetworking,
	}),
	NetworkingUsers = LuaSocialLibrariesDeps.NetworkingUsers.config({
		roduxNetworking = myRoduxNetworking,
	}),
	NetworkingGames = NetworkingGames.config({
		roduxNetworking = myRoduxNetworking,
	}) or nil,
	Players = game:GetService("Players"),
	RoduxNetworking = myRoduxNetworking,
	RoduxUsers = RoduxUsers.config({
		keyPath = "SocialTab.Users",
	}),
	RoduxFriends = RoduxFriends.config({
		keyPath = "SocialTab.Friends",
	}),
	RoduxPresence = RoduxPresence.config({
		keyPath = "SocialTab.Presence",
	}),
	RoduxGames = RoduxGames.config({
		keyPath = "SocialTab.Games",
	}),
	NetworkingChat = getFFlagSocialTabReplaceRefreshConversations() and LuaSocialLibrariesDeps.NetworkingChat.config({
		roduxNetworking = myRoduxNetworking,
	}) or nil,
	CollisionMatchers = LuaSocialLibrariesDeps.CollisionMatchers,
	Lumberyak = Lumberyak,
	RunService = game:GetService("RunService"),
	UserInputService = game:GetService("UserInputService"),

	validatePropsWithForwardRef = validatePropsWithForwardRef,

	SocialLibraries = LuaSocialLibrariesDeps.SocialLibraries.config({}),
	getFFlagSocialProfileShareAnalyticsEnabled = getFFlagSocialProfileShareAnalyticsEnabled,
	getFFlagSocialAddFriendshipRequestEvent = getFFlagSocialAddFriendshipRequestEvent,
	getFFlagSocialPanelIAEnabled = getFFlagSocialPanelIAEnabled,
	getFFlagVBXboxReducerFix = getFFlagVBXboxReducerFix,
	GetFFlagUseCorrectedFriendSortUtil = GetFFlagUseCorrectedFriendSortUtil,
	FFlagExperienceJoinAttemptId = FFlagExperienceJoinAttemptId,
	GetFFlagHideConnectPageWebViewItemsForVR = GetFFlagHideConnectPageWebViewItemsForVR,
	getFFlagSocialAddGameJoinSource = getFFlagSocialAddGameJoinSource,
	getFFlagAddFriendsNewEmptyStateAndBanners = getFFlagAddFriendsNewEmptyStateAndBanners,
}

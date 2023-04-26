local FriendsCarousel = script.Parent
local Packages = FriendsCarousel.Parent

local Players = game:GetService("Players")

local SocialLuaAnalytics = require(Packages.SocialLuaAnalytics)
local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local Lumberyak = require(Packages.Lumberyak)
local HttpRequest = LuaSocialLibrariesDeps.httpRequest

local logger = Lumberyak.Logger.new(nil, "FriendsCarousel")
local httpLogger = logger:new("FriendsCarousel Networking")
local maxHttpRetries = game:DefineFastInt("FriendsCarouselHttpRetryCount", 3)

local getFFlagFriendsCarouselDontUseIngestService =
	require(Packages.SharedFlags).getFFlagFriendsCarouselDontUseIngestService
local getFFlagMigrateSocialNetworking = require(Packages.SharedFlags).getFFlagMigrateSocialNetworking
local getFFlagSocialOnboardingExperimentEnabled =
	require(Packages.SharedFlags).getFFlagSocialOnboardingExperimentEnabled

local myHttpRequest = HttpRequest.config({
	requestFunction = function(url, requestMethod, requestOptions)
		httpLogger:info("Fetching: {}", string.format("[ requestMethod = %q, url = %q ]", requestMethod, url))
		if getFFlagMigrateSocialNetworking() then
			return HttpRequest.requestFunctions.RequestInternal(url, requestMethod, requestOptions)
		else
			return HttpRequest.requestFunctions.HttpRbxApi(url, requestMethod, requestOptions)
		end
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

local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY

local RoduxNetworking = LuaSocialLibrariesDeps.RoduxNetworking

local myRoduxNetworking = RoduxNetworking.config({
	keyPath = RODUX_KEY .. ".NetworkStatus",
	networkImpl = myHttpRequest,
})

local UIBlox = require(Packages.UIBlox)
export type UIBloxFontType = UIBlox.Font
export type UIBloxFontPalette = UIBlox.FontPalette
export type UIBloxTheme = UIBlox.Theme
export type UIBloxAppStyle = UIBlox.AppStyle
export type UIBloxThemeItem = UIBlox.ThemeItem

return {
	SocialLuaAnalytics = SocialLuaAnalytics,
	Promise = require(Packages.Promise),
	UIBlox = UIBlox,
	Roact = require(Packages.Roact),
	React = require(Packages.React),
	Rodux = require(Packages.Rodux),
	RoactRodux = require(Packages.RoactRodux),
	LocalizationProvider = require(Packages.Localization).LocalizationProvider,
	withLocalization = require(Packages.Localization).withLocalization,
	t = require(Packages.t),
	Dash = require(Packages.Dash),
	llama = LuaSocialLibrariesDeps.llama,
	memoize = require(Packages.AppCommonLib).memoize,
	Hooks = {
		useSelector = require(Packages.RoactUtils).Hooks.RoactRodux.useSelector,
		useDispatch = require(Packages.RoactUtils).Hooks.RoactRodux.useDispatch,
		useLocalization = require(Packages.RoactUtils).Hooks.useLocalization,
		useEffectOnce = require(Packages.RoactUtils).Hooks.useEffectOnce,
	},

	SocialLibraries = LuaSocialLibrariesDeps.SocialLibraries.config({}),
	SocialModalsCommon = require(Packages.SocialModalsCommon),
	RoduxNetworking = myRoduxNetworking,
	NetworkingFriendsEnums = LuaSocialLibrariesDeps.NetworkingFriends.Enums,
	NetworkingFriends = LuaSocialLibrariesDeps.NetworkingFriends.config({
		roduxNetworking = myRoduxNetworking,
	}),
	NetworkingUsers = LuaSocialLibrariesDeps.NetworkingUsers.config({
		roduxNetworking = myRoduxNetworking,
	}),
	NetworkingUserSettings = LuaSocialLibrariesDeps.NetworkingUserSettings.config({
		roduxNetworking = myRoduxNetworking,
	}),
	NetworkingAccountInformation = LuaSocialLibrariesDeps.NetworkingAccountInformation.config({
		roduxNetworking = myRoduxNetworking,
	}),
	NetworkingAliases = LuaSocialLibrariesDeps.NetworkingAliases.config({
		roduxNetworking = myRoduxNetworking,
	}),
	RoduxUsers = LuaSocialLibrariesDeps.RoduxUsers_v13.config({
		keyPath = RODUX_KEY .. ".Users",
	}),
	RoduxFriends = LuaSocialLibrariesDeps.RoduxFriends.config({
		keyPath = RODUX_KEY .. ".Friends",
	}),
	RoduxPresence = LuaSocialLibrariesDeps.RoduxPresence_v3.config({
		keyPath = RODUX_KEY .. ".Presence",
	}),
	RoduxUserPermissions = LuaSocialLibrariesDeps.RoduxUserPermissions.config({
		keyPath = RODUX_KEY .. ".UserPermissions",
	}),
	RoduxAnalytics = SocialLuaAnalytics.Analytics.RoduxAnalytics.config({
		keyPath = RODUX_KEY .. ".Analytics",
	}),
	Players = Players,
	convertActions = require(Packages.SocialReducerAdaptors).convertActions,
	usersActionAdaptor = require(Packages.SocialReducerAdaptors).usersActionAdaptor,
	friendsActionAdaptor = require(Packages.SocialReducerAdaptors).friendsActionAdaptor,
	presenceActionAdaptor = require(Packages.SocialReducerAdaptors).presenceActionAdaptor,
	Text = require(Packages.AppCommonLib).Text,
	enumerate = require(Packages.enumerate),
	IXPService = game:GetService("IXPService"),
	RetrievalStatus = require(Packages.Http).Enum.RetrievalStatus,

	AnalyticsService = require(Packages.Analytics).Analytics.new(game:GetService("RbxAnalyticsService")),

	PermissionsProtocol = require(Packages.PermissionsProtocol).PermissionsProtocol,
	AppStorageService = game:GetService("AppStorageService"),

	-- TODO SOCGRAPH-619: clean up CI dependencies:
	contactImporterModalInfo = require(Packages.ContactImporter).Utils.contactImporterModalInfo,
	ShowContactImporterParams = require(Packages.ContactImporter).ShowContactImporterParams,
	SetContactImporterDisplayLogic = require(Packages.ContactImporter).Actions.SetContactImporterDisplayLogic,
	AutoSyncContacts = require(Packages.ContactImporter).Networking.AutoSyncContacts,
	ContactsProtocol = require(Packages.ContactsProtocol).ContactsProtocol,
	FetchContactImporterParams = require(Packages.ContactImporter).Networking.FetchContactImporterParams,
	-- end TODO SOCGRAPH-619

	getFStringSocialFriendsLayer = require(Packages.SharedFlags).getFStringSocialFriendsLayer,
	getFFlagProfileAliasEnabled = require(Packages.SharedFlags).getFFlagProfileAliasEnabled,

	getFFlagFriendsCarouselDontUseIngestService = getFFlagFriendsCarouselDontUseIngestService,
	getFFlagSocialOnboardingExperimentEnabled = getFFlagSocialOnboardingExperimentEnabled,

	isSubjectToDesktopPolicies = require(Packages.SharedFlags).isSubjectToDesktopPolicies,
	getFFlagFriendsCarouselCleanUpFetchExperimentCode = require(Packages.SharedFlags).getFFlagFriendsCarouselCleanUpFetchExperimentCode,
	GetFFlagLuaAppFriendsCarouselExperimentCleanup = require(Packages.SharedFlags).GetFFlagLuaAppFriendsCarouselExperimentCleanup,
}

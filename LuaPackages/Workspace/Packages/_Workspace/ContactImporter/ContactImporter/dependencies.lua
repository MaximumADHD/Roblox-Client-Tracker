local ContactImporter = script.Parent
local Packages = ContactImporter.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local Lumberyak = require(Packages.Lumberyak)
local HttpRequest = LuaSocialLibrariesDeps.httpRequest
local VirtualizedList = require(Packages.VirtualizedList)
local UrlBuilderPackage = require(Packages.UrlBuilder)

local SocialLuaAnalytics = require(Packages.SocialLuaAnalytics)
local logger = Lumberyak.Logger.new(nil, "ContactImporter")
local httpLogger = logger:new("ContactImporter Networking")
local maxHttpRetries = game:DefineFastInt("ContactImporterHttpRetryCount", 3)

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

local RODUX_KEY = require(ContactImporter.Common.Constants).RODUX_KEY

local RoduxNetworking = LuaSocialLibrariesDeps.RoduxNetworking

local myRoduxNetworking = RoduxNetworking.config({
	keyPath = RODUX_KEY .. ".NetworkStatus",
	networkImpl = myHttpRequest,
})

local RoactAppExperiment = require(Packages.RoactAppExperiment)

local UIBlox = require(Packages.UIBlox)

export type UIBloxFontPalette = UIBlox.FontPalette
export type UIBloxTheme = UIBlox.Theme

return {
	SocialLuaAnalytics = SocialLuaAnalytics,
	Dash = require(Packages.Dash),
	UIBlox = UIBlox,
	Roact = require(Packages.Roact),
	RoactNavigation = require(Packages.RoactNavigation),
	Rodux = require(Packages.Rodux),
	ReactRoblox = require(Packages.ReactRoblox),
	RoactRodux = require(Packages.RoactRodux),
	LocalizationProvider = require(Packages.Localization).LocalizationProvider,
	withLocalization = require(Packages.Localization).withLocalization,
	Url = require(Packages.Http).Url,
	t = require(Packages.t),
	Promise = require(Packages.Promise),
	llama = LuaSocialLibrariesDeps.llama,
	memoize = require(Packages.AppCommonLib).memoize,
	RoduxNetworking = myRoduxNetworking,
	enumerate = require(Packages.enumerate),
	IXPService = game:GetService("IXPService"),

	SocialLibraries = LuaSocialLibrariesDeps.SocialLibraries.config({}),
	SocialModalsCommon = require(Packages.SocialModalsCommon),
	NetworkingContacts = LuaSocialLibrariesDeps.NetworkingContacts.config({
		roduxNetworking = myRoduxNetworking,
	}),
	NetworkingFriends = LuaSocialLibrariesDeps.NetworkingFriends.config({
		roduxNetworking = myRoduxNetworking,
	}),
	NetworkingUserSettings = LuaSocialLibrariesDeps.NetworkingUserSettings.config({
		roduxNetworking = myRoduxNetworking,
	}),
	NetworkingAccountInformation = LuaSocialLibrariesDeps.NetworkingAccountInformation.config({
		roduxNetworking = myRoduxNetworking,
	}),
	NetworkingAccountSettings = LuaSocialLibrariesDeps.NetworkingAccountSettings.config({
		roduxNetworking = myRoduxNetworking,
	}),
	NetworkingShareLinks = LuaSocialLibrariesDeps.NetworkingShareLinks.config({
		roduxNetworking = myRoduxNetworking,
	}),
	UrlBuilder = UrlBuilderPackage.UrlBuilder,

	ContactsProtocol = require(Packages.ContactsProtocol).ContactsProtocol,
	NativeUtilProtocol = require(Packages.NativeUtilProtocol).NativeUtilProtocol,
	SMSProtocol = require(Packages.SMSProtocol).SMSProtocol,

	PermissionsProtocol = require(Packages.PermissionsProtocol).PermissionsProtocol,
	RoduxContacts = LuaSocialLibrariesDeps.RoduxContacts.config({
		keyPath = RODUX_KEY .. ".Contacts",
	}),
	RoduxUserPermissions = LuaSocialLibrariesDeps.RoduxUserPermissions.config({
		keyPath = RODUX_KEY .. ".UserPermissions",
	}),
	RoduxShareLinks = LuaSocialLibrariesDeps.RoduxShareLinks.config({
		keyPath = RODUX_KEY .. ".ShareLinks",
	}),
	AppStorageService = game:GetService("AppStorageService"),
	UserInputService = game:GetService("UserInputService"),
	ThrottleUserId = require(Packages.AppCommonLib).ThrottleUserId,
	getFStringSocialFriendsLayer = require(Packages.SharedFlags).getFStringSocialFriendsLayer,
	Players = game:GetService("Players"),
	React = require(Packages.React),
	FlatList = VirtualizedList.FlatList,
	useSelector = require(Packages.RoactUtils).Hooks.RoactRodux.useSelector,
	useDispatch = require(Packages.RoactUtils).Hooks.RoactRodux.useDispatch,
	usePrevious = require(Packages.RoactUtils).Hooks.usePrevious,
	useNavigation = require(Packages.RoactUtils).Hooks.useNavigation,
	useLocalization = require(Packages.RoactUtils).Hooks.useLocalization,
	useStyle = UIBlox.Core.Style.useStyle,
	useUserExperiment = RoactAppExperiment.useUserExperiment,
	useEffectOnce = require(Packages.RoactUtils).Hooks.useEffectOnce,
	DiscoverabilityOverlay = require(Packages.DiscoverabilityModal).DiscoverabilityOverlay,
	DiscoverabilityAnalytics = require(Packages.DiscoverabilityModal).Analytics,
	RoactExperimentProvider = RoactAppExperiment.Provider,
	getFFlagLuaNativeUtilEnableSMSHandling = require(Packages.SharedFlags).getFFlagLuaNativeUtilEnableSMSHandling,
	SelfViewProfileDiscoverabilityUpsellIXP = require(Packages.DiscoverabilityModal).Flags.SelfViewProfileDiscoverabilityUpsellIXP,
	getFFlagEnableDeeplinkForContactsList = require(Packages.SharedFlags).getFFlagEnableDeeplinkForContactsList,
	getFFlagReEnableAutoSyncContacts = require(Packages.SharedFlags).getFFlagReEnableAutoSyncContacts,
}

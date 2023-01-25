local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local Packages = PYMKCarousel.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local SocialLuaAnalytics = require(Packages.SocialLuaAnalytics)

local Lumberyak = require(Packages.Lumberyak)
local HttpRequest = LuaSocialLibrariesDeps.httpRequest

local getFFlagPYMKDontUseIngestService = require(Packages.SharedFlags).getFFlagPYMKDontUseIngestService

local logger = Lumberyak.Logger.new(nil, "PYMKCarousel")
local httpLogger = logger:new("PYMKCarousel Networking")
local maxHttpRetries = game:DefineFastInt("PYMKCarouselHttpRetryCount", 3)
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

local RODUX_KEY = require(PYMKCarousel.Common.Constants).RODUX_KEY

local RoduxNetworking = LuaSocialLibrariesDeps.RoduxNetworking

local myRoduxNetworking = RoduxNetworking.config({
	keyPath = RODUX_KEY .. ".NetworkStatus",
	networkImpl = myHttpRequest,
})

return {
	SocialLuaAnalytics = SocialLuaAnalytics,
	UIBlox = require(Packages.UIBlox),
	Roact = require(Packages.Roact),
	React = require(Packages.React),
	Rodux = require(Packages.Rodux),
	RoactRodux = require(Packages.RoactRodux),
	Result = require(Packages.Result),
	llama = LuaSocialLibrariesDeps.llama,
	Dash = require(Packages.Dash),
	RoduxNetworking = myRoduxNetworking,
	RoduxFriends = LuaSocialLibrariesDeps.RoduxFriends.config({
		keyPath = RODUX_KEY .. ".Friends",
	}),
	RoduxUsers = LuaSocialLibrariesDeps.RoduxUsers_v13.config({
		keyPath = RODUX_KEY .. ".Users",
	}),
	NetworkingFriendsEnums = LuaSocialLibrariesDeps.NetworkingFriends.Enums,
	NetworkingFriends = LuaSocialLibrariesDeps.NetworkingFriends_221.config({
		roduxNetworking = myRoduxNetworking,
	}),
	RoduxAnalytics = SocialLuaAnalytics.Analytics.RoduxAnalytics.config({
		keyPath = RODUX_KEY .. ".Analytics",
	}),
	Players = game:GetService("Players"),
	convertActions = require(Packages.SocialReducerAdaptors).convertActions,
	usersActionAdaptor = require(Packages.SocialReducerAdaptors).usersActionAdaptor,
	friendsActionAdaptor = require(Packages.SocialReducerAdaptors).friendsActionAdaptor,
	SocialLibraries = LuaSocialLibrariesDeps.SocialLibraries.config({}),
	Hooks = {
		useSelector = require(Packages.RoactUtils).Hooks.RoactRodux.useSelector,
		useDispatch = require(Packages.RoactUtils).Hooks.RoactRodux.useDispatch,
		useLocalization = require(Packages.RoactUtils).Hooks.useLocalization,
		dependencyArray = require(Packages.RoactUtils).Hooks.dependencyArray,
	},
	LocalizationProvider = require(Packages.Localization).LocalizationProvider,
	enumerate = require(Packages.enumerate),
	getFFlagPYMKDontUseIngestService = getFFlagPYMKDontUseIngestService,
	getFFlagSocialUpdateRoduxFriendsv314 = LuaSocialLibrariesDeps.getFFlagSocialUpdateRoduxFriendsv314,
	getFFlagFixFriendshipOriginSourceType = require(Packages.SharedFlags).getFFlagFixFriendshipOriginSourceType,
}

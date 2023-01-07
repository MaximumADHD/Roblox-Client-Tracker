local DiscoverabilityModal = script.Parent
local Packages = DiscoverabilityModal.Parent
local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)

local RoduxNetworking = LuaSocialLibrariesDeps.RoduxNetworking
local Lumberyak = require(Packages.Lumberyak)
local HttpRequest = LuaSocialLibrariesDeps.httpRequest

local logger = Lumberyak.Logger.new(nil, "DiscoverabilityModal")
local httpLogger = logger:new("DiscoverabilityModal Networking")
local maxHttpRetries = game:DefineFastInt("DiscoverabilityModalHttpRetryCount", 3)
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

local RODUX_KEY = require(DiscoverabilityModal.Common.Constants).RODUX_KEY

local myRoduxNetworking = RoduxNetworking.config({
	keyPath = RODUX_KEY .. ".NetworkStatus",
	networkImpl = myHttpRequest,
})

local SocialLuaAnalytics = require(Packages.SocialLuaAnalytics)

return {
	AppStorageService = game:GetService("AppStorageService"),
	SocialLuaAnalytics = SocialLuaAnalytics,
	Dash = require(Packages.Dash),
	UIBlox = require(Packages.UIBlox),
	Roact = require(Packages.Roact),
	RoactRodux = require(Packages.RoactRodux),
	Rodux = require(Packages.Rodux),
	React = require(Packages.React),
	ContactsProtocol = require(Packages.ContactsProtocol).ContactsProtocol,
	Promise = require(Packages.Promise),
	enumerate = require(Packages.enumerate),
	RoduxNetworking = myRoduxNetworking,

	SocialLibraries = LuaSocialLibrariesDeps.SocialLibraries.config({}),
	SocialModalsCommon = require(Packages.SocialModalsCommon),
	PermissionsProtocol = require(Packages.PermissionsProtocol).PermissionsProtocol,
	NetworkingUserSettings = LuaSocialLibrariesDeps.NetworkingUserSettings.config({
		roduxNetworking = myRoduxNetworking,
	}),
	RoduxUserPermissions = LuaSocialLibrariesDeps.RoduxUserPermissions.config({
		keyPath = RODUX_KEY .. ".UserPermissions",
	}),

	LocalizationProvider = require(Packages.Localization).LocalizationProvider,

	Hooks = {
		useLocalization = require(Packages.RoactUtils).Hooks.useLocalization,
		useNavigation = require(Packages.RoactUtils).Hooks.useNavigation,
		useSelector = require(Packages.RoactUtils).Hooks.RoactRodux.useSelector,
		useDispatch = require(Packages.RoactUtils).Hooks.RoactRodux.useDispatch,
	},
}

local SetAlias = script.Parent
local Packages = SetAlias.Parent
local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local RODUX_KEY = require(SetAlias.Common.Constants).RODUX_KEY

local RoduxNetworking = LuaSocialLibrariesDeps.RoduxNetworking
local Lumberyak = require(Packages.Lumberyak)
local HttpRequest = LuaSocialLibrariesDeps.httpRequest

local logger = Lumberyak.Logger.new(nil, RODUX_KEY)
local httpLogger = logger:new(RODUX_KEY .. " Networking")
local maxHttpRetries = game:DefineFastInt("SetAliasHttpRetryCount", 3)
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
	RoactNavigation = require(Packages.RoactNavigation),
	Rodux = require(Packages.Rodux),
	React = require(Packages.React),
	ContactsProtocol = require(Packages.ContactsProtocol).ContactsProtocol,
	Promise = require(Packages.Promise),
	enumerate = require(Packages.enumerate),
	RoactFitComponents = LuaSocialLibrariesDeps.RoactFitComponents,
	RoduxNetworking = myRoduxNetworking,

	NetworkingAliases = LuaSocialLibrariesDeps.NetworkingAliases.config({
		roduxNetworking = myRoduxNetworking,
	}),
	RoduxAliases = LuaSocialLibrariesDeps.RoduxAliases.config({
		keyPath = RODUX_KEY .. ".Aliases",
	}),

	SocialLibraries = LuaSocialLibrariesDeps.SocialLibraries.config({}),
	LocalizationProvider = require(Packages.Localization).LocalizationProvider,

	Hooks = {
		useLocalization = require(Packages.RoactUtils).Hooks.useLocalization,
		useSelector = require(Packages.RoactUtils).Hooks.RoactRodux.useSelector,
		useDispatch = require(Packages.RoactUtils).Hooks.RoactRodux.useDispatch,
	},
}

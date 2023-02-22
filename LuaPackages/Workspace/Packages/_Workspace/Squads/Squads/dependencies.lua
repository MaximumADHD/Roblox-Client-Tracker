local Squads = script:FindFirstAncestor("Squads")
local Packages = Squads.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local Lumberyak = require(Packages.Lumberyak)

local logger = Lumberyak.Logger.new(nil, "Squad")
local httpLogger = logger:new("Squad Networking")
local maxHttpRetries = game:DefineFastInt("SquadHttpRetryCount", 3)
local RODUX_KEY = require(Squads.Common.Constants).RODUX_KEY

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
	keyPath = "Squad.NetworkStatus",
	networkImpl = myHttpRequest,
})

return {
	AppStyle = {
		LightTheme = require(Packages.Style).Themes.LightTheme,
		DarkTheme = require(Packages.Style).Themes.DarkTheme,
	},
	Dash = require(Packages.Dash),
	ExternalContentSharingProtocol = require(Packages.ExternalContentSharingProtocol).ExternalContentSharingProtocol.default,
	Hooks = {
		dependencyArray = require(Packages.RoactUtils).Hooks.dependencyArray,
		useLocalization = require(Packages.RoactUtils).Hooks.useLocalization,
		useSelector = require(Packages.RoactUtils).Hooks.RoactRodux.useSelector,
	},
	PeekView = require(Packages.PeekView),
	React = require(Packages.React),
	Roact = require(Packages.Roact),
	RoactFitComponents = LuaSocialLibrariesDeps.RoactFitComponents,
	RoactRodux = require(Packages.RoactRodux),
	RoactNavigation = require(Packages.RoactNavigation),
	Rodux = require(Packages.Rodux),
	RoduxNetworking = myRoduxNetworking,
	RunService = game:GetService("RunService"),
	SocialLibraries = LuaSocialLibrariesDeps.SocialLibraries.config({}),
	UIBlox = require(Packages.UIBlox),
	Url = require(Packages.Http).Url,
	enumerate = require(Packages.enumerate),
	llama = LuaSocialLibrariesDeps.llama,
	t = require(Packages.t),
	withLocalization = require(Packages.Localization).withLocalization,

	RoduxGames = LuaSocialLibrariesDeps.RoduxGames.config({
		keyPath = RODUX_KEY .. ".Games",
	}),
	RoduxSquads = LuaSocialLibrariesDeps.RoduxSquads.config({
		keyPath = RODUX_KEY .. ".Squad",
	}),

	NetworkingGames = LuaSocialLibrariesDeps.NetworkingGames.config({
		roduxNetworking = myRoduxNetworking,
	}),
}

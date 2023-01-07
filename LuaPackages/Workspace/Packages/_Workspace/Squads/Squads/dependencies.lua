local Root = script.Parent
local Packages = Root.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local Lumberyak = require(Packages.Lumberyak)

local logger = Lumberyak.Logger.new(nil, "SocialModalsSquads")
local httpLogger = logger:new("SocialModalsSquads Networking")
local maxHttpRetries = game:DefineFastInt("SocialModalsSquadsHttpRetryCount", 3)

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
	keyPath = "SocialModalsSquads.NetworkStatus",
	networkImpl = myHttpRequest,
})

return {
	Dash = require(Packages.Dash),
	React = require(Packages.React),
	Roact = require(Packages.Roact),
	RoactRodux = require(Packages.RoactRodux),
	Rodux = require(Packages.Rodux),
	RoactNavigation = require(Packages.RoactNavigation),
	UIBlox = require(Packages.UIBlox),
	Url = require(Packages.Http).Url,
	t = require(Packages.t),
	withLocalization = require(Packages.Localization).withLocalization,

	llama = LuaSocialLibrariesDeps.llama,

	SocialLibraries = LuaSocialLibrariesDeps.SocialLibraries.config({}),

	RoactFitComponents = LuaSocialLibrariesDeps.RoactFitComponents,

	RoduxGames = LuaSocialLibrariesDeps.RoduxGames.config({
		keyPath = "SocialModalsSquads.Games",
	}),

	RoduxNetworking = myRoduxNetworking,
	NetworkingGames = LuaSocialLibrariesDeps.NetworkingGames.config({
		roduxNetworking = myRoduxNetworking,
	}),

	Hooks = {
		dependencyArray = require(Packages.RoactUtils).Hooks.dependencyArray,
	},

	RunService = game:GetService("RunService"),
}

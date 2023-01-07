local InviteLinkExpiredModal = script:FindFirstAncestor("InviteLinkExpiredModal")
local Packages = InviteLinkExpiredModal.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local Lumberyak = require(Packages.Lumberyak)

local logger = Lumberyak.Logger.new(nil, "InviteLinkExpiredModal")
local httpLogger = logger:new("InviteLinkExpiredModal Networking")
local maxHttpRetries = game:DefineFastInt("InviteLinkExpiredModalHttpRetryCount", 3)

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
	keyPath = "InviteLinkExpiredModal.NetworkStatus",
	networkImpl = myHttpRequest,
})

return {
	Dash = require(Packages.Dash),
	Roact = require(Packages.Roact),
	RoactRodux = require(Packages.RoactRodux),
	RoactNavigation = require(Packages.RoactNavigation),
	Rodux = require(Packages.Rodux),
	t = require(Packages.t),
	UIBlox = require(Packages.UIBlox),
	LocalizationProvider = require(Packages.Localization).LocalizationProvider,
	withLocalization = require(Packages.Localization).withLocalization,

	llama = LuaSocialLibrariesDeps.llama,

	SocialLibraries = LuaSocialLibrariesDeps.SocialLibraries.config({}),

	RoduxGames = LuaSocialLibrariesDeps.RoduxGames.config({
		keyPath = "InviteLinkExpiredModal.Games",
	}),

	RoduxShareLinks = LuaSocialLibrariesDeps.RoduxShareLinks.config({
		keyPath = "InviteLinkExpiredModal.ShareLinks",
	}),

	RoduxNetworking = myRoduxNetworking,
	NetworkingGames = LuaSocialLibrariesDeps.NetworkingGames.config({
		roduxNetworking = myRoduxNetworking,
	}),
}

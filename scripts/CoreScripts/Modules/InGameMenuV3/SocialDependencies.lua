local CorePackages = game:GetService("CorePackages")
local LuaSocialLibrariesDeps = require(CorePackages.LuaSocialLibrariesDeps)
local RoduxShareLinks = LuaSocialLibrariesDeps.RoduxShareLinks
local NetworkingShareLinks = LuaSocialLibrariesDeps.NetworkingShareLinks
local RoduxNetworking = LuaSocialLibrariesDeps.RoduxNetworking
local HttpRequest = LuaSocialLibrariesDeps.httpRequest
local Lumberyak = require(CorePackages.Lumberyak)

local UrlBuilderPackage = require(CorePackages.Packages.UrlBuilder)
local UrlBuilder = UrlBuilderPackage.UrlBuilder

local InGameMenu = script.Parent
local GetFFlagShareInviteLinkContextMenuV3Enabled =
	require(InGameMenu.Flags.GetFFlagShareInviteLinkContextMenuV3Enabled)

local logger = Lumberyak.Logger.new(nil, "InGameMenu")
local maxHttpRetries = game:DefineFastInt("InGameMenuHttpRetryCount", 3)
local httpLogger = logger:new("InGameMenu Networking")
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
	keyPath = "NetworkStatus",
	networkImpl = myHttpRequest,
})

return {
	RoduxShareLinks = RoduxShareLinks.config({
		keyPath = "InGameMenu.ShareLinks",
	}),
	NetworkingShareLinks = NetworkingShareLinks.config({
		roduxNetworking = myRoduxNetworking,
		useMockedResponse = if GetFFlagShareInviteLinkContextMenuV3Enabled() then false else true,
	}),
	UrlBuilder = UrlBuilder,
	RoduxNetworking = myRoduxNetworking,
}

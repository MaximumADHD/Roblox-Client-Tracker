local CorePackages = game:GetService("CorePackages")
local LuaSocialLibrariesDeps = require(CorePackages.LuaSocialLibrariesDeps)
local RoduxShareLinks = LuaSocialLibrariesDeps.RoduxShareLinks
local NetworkingShareLinks = LuaSocialLibrariesDeps.NetworkingShareLinks
local RoduxNetworking = LuaSocialLibrariesDeps.RoduxNetworking
local HttpRequest = LuaSocialLibrariesDeps.httpRequest
local Lumberyak = require(CorePackages.Lumberyak)

local logger = Lumberyak.Logger.new(nil, "ShareGame")
local maxHttpRetries = game:DefineFastInt("ShareGameHttpRetryCount", 3)
local httpLogger = logger:new("ShareGame Networking")
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
	keyPath = "ShareGame.NetworkStatus",
	networkImpl = myHttpRequest,
})

return {
	RoduxShareLinks = RoduxShareLinks.config({
		keyPath = "ShareGame.ShareLinks",
	}),
	NetworkingShareLinks = NetworkingShareLinks.config({
		roduxNetworking = myRoduxNetworking,
		useMockedResponse = true,
	}),
}

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local RODUX_KEY = require(ProfileQRCode.Common.Constants).RODUX_KEY
local Lumberyak = require(Packages.Lumberyak)

local HttpRequest = LuaSocialLibrariesDeps.httpRequest

local logger = Lumberyak.Logger.new(nil, "ProfileQRCode")
local httpLogger = logger:new("ProfileQRCode Networking")
local maxHttpRetries = game:DefineFastInt("ProfileQRCodeHttpRetryCount", 3)

local myHttpRequest = HttpRequest.config({
	requestFunction = function(url, requestMethod, requestOptions)
		httpLogger:info("Fetching: {}", string.format("[ requestMethod = %q, url = %q ]", requestMethod, url))
		return HttpRequest.requestFunctions.RequestInternal(url, requestMethod, requestOptions)
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
	keyPath = RODUX_KEY .. ".NetworkStatus",
	networkImpl = myHttpRequest,
})

return myRoduxNetworking

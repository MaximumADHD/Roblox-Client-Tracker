local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local HttpRequest = require(VirtualEvents.Parent.HttpRequest)
local RoduxNetworking = require(VirtualEvents.Parent.RoduxNetworking)
local NetworkingVirtualEvents = require(VirtualEvents.Parent.NetworkingVirtualEvents)
local NetworkingGames = require(VirtualEvents.Parent.NetworkingGames)
local NetworkingSponsoredEvents = require(VirtualEvents.NetworkingSponsoredEvents)
local logger = require(VirtualEvents.logger)

local maxHttpRetries = game:DefineFastInt("VirtualEventsHttpRetryCount", 3)

local myHttpRequest = HttpRequest.config({
	requestFunction = function(url, requestMethod, requestOptions)
		logger:debug("GET {}", url)

		-- We are using RequestInternal because it is required to make requests
		-- to ads.roblox.com. Once we migrate away from that endpoint we should
		-- switch back to HttpRbxApi
		return HttpRequest.requestFunctions.RequestInternal(url, requestMethod, requestOptions)
	end,

	postRequestFunction = function(response, request)
		logger:debug("{} {} {}", response.StatusCode, request.url, response.Body)
	end,

	maxRetryCount = maxHttpRetries,
})

local myRoduxNetworking = RoduxNetworking.config({
	keyPath = "VirtualEvents.networkStatus",
	networkImpl = myHttpRequest,
})

local myNetworkingVirtualEvents = NetworkingVirtualEvents.config({
	roduxNetworking = myRoduxNetworking,
})

local myNetworkingSponsoredEvents = NetworkingSponsoredEvents.config({
	roduxNetworking = myRoduxNetworking,
})

local myNetworkingGames = NetworkingGames.config({
	roduxNetworking = myRoduxNetworking,
})

return {
	RoduxNetworking = myRoduxNetworking,
	NetworkingVirtualEvents = myNetworkingVirtualEvents,
	NetworkingSponsoredEvents = myNetworkingSponsoredEvents,
	NetworkingGames = myNetworkingGames,
}

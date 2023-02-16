return {
	request = {
		cachePolicy = Enum.HttpCachePolicy.None,
		headers = {},
		method = "GET",
		url = {
			host = "apis.roblox.com",
			path = "/virtual-events/v1/universes/-1/virtual-events",
			query = {
				limit = "25",
			},
			scheme = "https",
		},
	},
	response = {
		body = "",
		headers = {
			["content-length"] = "0",
			["strict-transport-security"] = "max-age=3600",
			["x-envoy-upstream-service-time"] = "19",
			date = "Fri, 03 Feb 2023 19:20:21 GMT",
			server = "envoy",
		},
		isCached = false,
		stats = {
			durations = {
				SSLHandshake = 0.05134000000000001,
				connect = 0.023109,
				inQueue = 0.00009806900015973952,
				makeRequest = 0.000057999999999988616,
				nameLookup = 0.002309,
				receiveResponse = 0.09068200000000001,
				roundTripTime = 0.167601255000136,
			},
			retried = false,
		},
		status = {
			code = 500,
			message = "Internal Server Error",
		},
		type = "internal-response",
	},
}

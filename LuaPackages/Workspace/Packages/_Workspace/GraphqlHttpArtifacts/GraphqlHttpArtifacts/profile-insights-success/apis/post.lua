return {
	request = {
		body = '{"userIds":["2705220939"],"count":2}',
		cachePolicy = Enum.HttpCachePolicy.None,
		headers = {
			["content-type"] = "application/json",
			accept = "application/json",
		},
		method = "POST",
		url = {
			host = "apis.roblox.com",
			path = "/profile-insights-api/v1/multiProfileInsights",
			query = {},
			scheme = "https",
		},
	},
	response = {
		body = '{"userInsights":[{"targetUser":2705220939,"profileInsights":[{"mutualFriendInsight":{"mutualFriends":{"2326285850":{"username":"justUser444","displayName":"Displayname_olga"}}},"insightCase":1}]}]}',
		headers = {
			["content-length"] = "197",
			["content-type"] = "application/json; charset=utf-8",
			["report-to"] = '{"group":"network-errors","max_age":604800,"endpoints":[{"url":"https://ncs.roblox.com/upload"}]}',
			["strict-transport-security"] = "max-age=3600",
			["x-envoy-upstream-service-time"] = "123",
			date = "Tue, 21 Feb 2023 23:54:34 GMT",
			nel = '{"report_to":"network-errors","max_age":604800,"success_fraction":0.001,"failure_fraction":1}',
			server = "envoy",
		},
		isCached = false,
		stats = {
			durations = {
				SSLHandshake = 0.015057000000000001,
				connect = 0.007671,
				inQueue = 0.00004848499997933686,
				makeRequest = 0.000059000000000000025,
				nameLookup = 0.004717,
				receiveResponse = 0.190536,
				roundTripTime = 0.21809353899993766,
			},
			retried = false,
		},
		status = {
			code = 200,
			message = "OK",
		},
		type = "internal-response",
	},
}

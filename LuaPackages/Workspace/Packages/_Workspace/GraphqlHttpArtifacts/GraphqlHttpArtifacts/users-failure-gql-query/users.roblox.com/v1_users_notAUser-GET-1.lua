return {
	request = {
		cachePolicy = Enum.HttpCachePolicy.None,
		headers = {},
		method = "GET",
		url = {
			host = "users.roblox.com",
			path = "/v1/users/notAUser",
			query = {},
			scheme = "https",
		},
	},
	response = {
		body = '{"errors":[{"code":0,"message":"NotFound"}]}',
		headers = {
			["cache-control"] = "no-cache",
			["content-length"] = "44",
			["content-type"] = "application/json",
			["report-to"] = '{"group":"network-errors","max_age":604800,"endpoints":[{"url":"https://ncs.roblox.com/upload"}]}',
			["roblox-machine-id"] = "CHI1-WEB6285",
			["x-frame-options"] = "SAMEORIGIN",
			["x-powered-by"] = "ASP.NET",
			date = "Mon, 21 Nov 2022 21:11:45 GMT",
			nel = '{"report_to":"network-errors","max_age":604800,"success_fraction":0.001,"failure_fraction":1}',
			p3p = 'CP="CAO DSP COR CURa ADMa DEVa OUR IND PHY ONL UNI COM NAV INT DEM PRE"',
			server = "Microsoft-IIS/8.5",
		},
		isCached = false,
		stats = {
			durations = {
				SSLHandshake = 0,
				connect = 0,
				inQueue = 0.00001302399999980608,
				makeRequest = 0.000037999999999999995,
				nameLookup = 0.000041,
				receiveResponse = 0.066523,
				roundTripTime = 0.06666799799999978,
			},
			retried = false,
		},
		status = {
			code = 404,
			message = "Not Found",
		},
		type = "internal-response",
	},
}

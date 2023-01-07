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
			["roblox-machine-id"] = "CHI2-WEB1494",
			["x-frame-options"] = "SAMEORIGIN",
			["x-powered-by"] = "ASP.NET",
			date = "Thu, 01 Dec 2022 18:51:43 GMT",
			nel = '{"report_to":"network-errors","max_age":604800,"success_fraction":0.001,"failure_fraction":1}',
			p3p = 'CP="CAO DSP COR CURa ADMa DEVa OUR IND PHY ONL UNI COM NAV INT DEM PRE"',
			server = "Microsoft-IIS/8.5",
		},
		isCached = false,
		stats = {
			durations = {
				SSLHandshake = 0,
				connect = 0,
				inQueue = 0.000008864999999858014,
				makeRequest = 0.000029999999999999997,
				nameLookup = 0.000077,
				receiveResponse = 0.11363100000000001,
				roundTripTime = 0.11377876800000042,
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

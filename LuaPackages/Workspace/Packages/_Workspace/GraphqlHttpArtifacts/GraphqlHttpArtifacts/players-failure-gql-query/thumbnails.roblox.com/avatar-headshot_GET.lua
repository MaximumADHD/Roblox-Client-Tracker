return {
	request = {
		cachePolicy = Enum.HttpCachePolicy.None,
		headers = {},
		method = "GET",
		url = {
			host = "thumbnails.roblox.com",
			path = "/v1/users/avatar-headshot",
			query = {
				format = "Png",
				isCircular = "true",
				size = "48x48",
				userIds = "notAUser",
			},
			scheme = "https",
		},
	},
	response = {
		body = '{"errors":[{"code":4,"message":"The requested Ids are invalid, of an invalid type or missing."}]}',
		headers = {
			["cache-control"] = "no-cache",
			["content-length"] = "97",
			["content-type"] = "application/json",
			["report-to"] = '{"group":"network-errors","max_age":604800,"endpoints":[{"url":"https://ncs.roblox.com/upload"}]}',
			["roblox-machine-id"] = "CHI2-WEB2337",
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
				inQueue = 0.000010810000000027742,
				makeRequest = 0.00004,
				nameLookup = 0.00004,
				receiveResponse = 0.06936,
				roundTripTime = 0.0694803949999998,
			},
			retried = false,
		},
		status = {
			code = 400,
			message = "Bad Request",
		},
		type = "internal-response",
	},
}

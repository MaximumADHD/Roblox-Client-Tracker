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
		body = '{"errors":[{"code":4,"message":"The requested Ids are invalid, of an invalid type or missing.","userFacingMessage":"Something went wrong"}]}',
		headers = {
			["cache-control"] = "no-cache",
			["content-length"] = "140",
			["content-type"] = "application/json",
			["report-to"] = '{"group":"network-errors","max_age":604800,"endpoints":[{"url":"https://ncs.roblox.com/upload"}]}',
			["roblox-machine-id"] = "CHI2-WEB2417",
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
				inQueue = 0.00003957300000001496,
				makeRequest = 0.000041,
				nameLookup = 0.000045,
				receiveResponse = 0.138814,
				roundTripTime = 0.1389526790000004,
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

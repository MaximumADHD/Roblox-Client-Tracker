return {
	request = {
		cachePolicy = Enum.HttpCachePolicy.None,
		headers = {},
		method = "GET",
		url = {
			host = "games.roblox.com",
			path = "/v1/games",
			query = {
				universeIds = "badUniverseId",
			},
			scheme = "https",
		},
	},
	response = {
		body = '{"errors":[{"code":8,"message":"No universe IDs were specified.","userFacingMessage":"Something went wrong"}]}',
		headers = {
			["cache-control"] = "no-store, must-revalidate, no-cache",
			["content-length"] = "110",
			["content-type"] = "application/json",
			["report-to"] = '{"group":"network-errors","max_age":604800,"endpoints":[{"url":"https://ncs.roblox.com/upload"}]}',
			["roblox-machine-id"] = "CHI1-WEB6489",
			["x-frame-options"] = "SAMEORIGIN",
			["x-powered-by"] = "ASP.NET",
			date = "Mon, 05 Dec 2022 21:54:54 GMT",
			nel = '{"report_to":"network-errors","max_age":604800,"success_fraction":0.001,"failure_fraction":1}',
			p3p = 'CP="CAO DSP COR CURa ADMa DEVa OUR IND PHY ONL UNI COM NAV INT DEM PRE"',
			pragma = "no-cache",
			server = "Microsoft-IIS/8.5",
		},
		isCached = false,
		stats = {
			durations = {
				SSLHandshake = 0,
				connect = 0,
				inQueue = 0.000011888999992493154,
				makeRequest = 0.000061,
				nameLookup = 0.00004,
				receiveResponse = 0.157646,
				roundTripTime = 0.15781145900000126,
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

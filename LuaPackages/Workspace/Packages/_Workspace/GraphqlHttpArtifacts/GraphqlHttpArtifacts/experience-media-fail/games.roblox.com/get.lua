return {
	request = {
		cachePolicy = Enum.HttpCachePolicy.None,
		headers = {},
		method = "GET",
		url = {
			host = "games.roblox.com",
			path = "/v2/games/badUniverseId/media",
			query = {},
			scheme = "https",
		},
	},
	response = {
		body = '{"errors":[{"code":2,"message":"The requested universe does not exist.","userFacingMessage":"Something went wrong"}]}',
		headers = {
			["cache-control"] = "no-store, must-revalidate, no-cache",
			["content-length"] = "117",
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
				connect = 0.000001000000000000004,
				inQueue = 0.0000123780000080842,
				makeRequest = 0.000059,
				nameLookup = 0.000037,
				receiveResponse = 0.066049,
				roundTripTime = 0.06620810299999391,
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

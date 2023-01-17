return {
	request = {
		cachePolicy = Enum.HttpCachePolicy.None,
		headers = {},
		method = "GET",
		url = {
			host = "games.roblox.com",
			path = "/v2/games/3531439676/media",
			query = {},
			scheme = "https",
		},
	},
	response = {
		body = '{"data":[{"assetTypeId":1,"assetType":"Image","imageId":10226488734,"videoHash":null,"videoTitle":null,"approved":true,"altText":""}]}',
		headers = {
			["cache-control"] = "no-store, must-revalidate, no-cache",
			["content-length"] = "134",
			["content-type"] = "application/json; charset=utf-8",
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
				inQueue = 0.000011533999995094746,
				makeRequest = 0.000063,
				nameLookup = 0.000039,
				receiveResponse = 0.07576,
				roundTripTime = 0.07594699499999535,
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

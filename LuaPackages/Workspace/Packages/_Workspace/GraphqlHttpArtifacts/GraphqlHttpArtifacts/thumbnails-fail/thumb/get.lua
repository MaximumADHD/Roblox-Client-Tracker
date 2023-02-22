return {
	request = {
		cachePolicy = Enum.HttpCachePolicy.None,
		headers = {},
		method = "GET",
		url = {
			host = "thumbnails.roblox.com",
			path = "/v1/games/icons",
			query = {
				format = "png",
				size = "150x150",
				universeIds = "badUniverseId",
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
			["roblox-machine-id"] = "CHI2-WEB2504",
			["x-frame-options"] = "SAMEORIGIN",
			["x-powered-by"] = "ASP.NET",
			date = "Tue, 14 Feb 2023 18:23:36 GMT",
			nel = '{"report_to":"network-errors","max_age":604800,"success_fraction":0.001,"failure_fraction":1}',
			p3p = 'CP="CAO DSP COR CURa ADMa DEVa OUR IND PHY ONL UNI COM NAV INT DEM PRE"',
			server = "Microsoft-IIS/8.5",
		},
		isCached = false,
		stats = {
			durations = {
				SSLHandshake = 0.080124,
				connect = 0.036839000000000004,
				inQueue = 0.00003999400001930553,
				makeRequest = 0.00005099999999999549,
				nameLookup = 0.033743,
				receiveResponse = 0.11476499999999998,
				roundTripTime = 0.26564008299999387,
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

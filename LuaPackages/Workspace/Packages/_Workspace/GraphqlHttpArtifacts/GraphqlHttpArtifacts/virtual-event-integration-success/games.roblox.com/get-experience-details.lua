return {
	request = {
		cachePolicy = Enum.HttpCachePolicy.None,
		headers = {},
		method = "GET",
		url = {
			host = "games.roblox.com",
			path = "/v1/games",
			query = {
				universeIds = "2158344278",
			},
			scheme = "https",
		},
	},
	response = {
		body = '{"data":[{"id":2158344278,"rootPlaceId":9468764549,"name":"Selfie Mode Demo","description":"Welcome to the Selfie Mode demo! This experience is designed to show off Selfie Mode developer module and its features, and is open source so that you can edit the experience and see how to use the API\\r\\n\\r\\nRead more:\\r\\nhttps://create.roblox.com/docs/tools/modules/selfie-mode","sourceName":"Selfie Mode Demo","sourceDescription":"Welcome to the Selfie Mode demo! This experience is designed to show off Selfie Mode developer module and its features, and is open source so that you can edit the experience and see how to use the API\\r\\n\\r\\nRead more:\\r\\nhttps://create.roblox.com/docs/tools/modules/selfie-mode","creator":{"id":7384468,"name":"Roblox Arena Events","type":"Group","isRNVAccount":false,"hasVerifiedBadge":false},"price":null,"allowedGearGenres":["All"],"allowedGearCategories":[],"isGenreEnforced":true,"copyingAllowed":true,"playing":0,"visits":6863,"maxPlayers":20,"created":"2022-04-25T23:33:11.96Z","updated":"2022-12-01T21:14:18.023Z","studioAccessToApisAllowed":false,"createVipServersAllowed":false,"universeAvatarType":"MorphToR15","genre":"All","isAllGenre":true,"isFavoritedByUser":false,"favoritedCount":241}]}',
		headers = {
			["cache-control"] = "no-store, must-revalidate, no-cache",
			["content-length"] = "1231",
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
				SSLHandshake = 0.041664999999999994,
				connect = 0.010108000000000006,
				inQueue = 0.000029717000003870453,
				makeRequest = 0.00004900000000000737,
				nameLookup = 0.04665,
				receiveResponse = 0.196289,
				roundTripTime = 0.2948425499999985,
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

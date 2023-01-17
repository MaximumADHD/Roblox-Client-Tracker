return {
	request = {
		cachePolicy = Enum.HttpCachePolicy.None,
		headers = {},
		method = "GET",
		url = {
			host = "apis.roblox.com",
			path = "/virtual-events/v1/virtual-events/813902335774097414",
			query = {},
			scheme = "https",
		},
	},
	response = {
		body = '{"id":"813902335774097414","title":"Future whale event (probably like 100 years later.)","description":"Will whales be extinct, or will whales be humans? WHUMANS? WHALEMANS?","eventTime":{"startUtc":"2122-11-15T00:00:00+00:00","endUtc":"2122-11-30T23:59:00+00:00"},"host":{"hostName":"TheTesterWhale2","hasVerifiedBadge":true,"hostType":"user","hostId":11115966616},"universeId":2158344278,"eventStatus":"active","createdUtc":"2022-11-14T19:21:21.171+00:00","updatedUtc":"2022-11-14T19:21:58.058+00:00","userRsvpStatus":"going"}',
		headers = {
			["cache-control"] = "no-cache",
			["content-length"] = "601",
			["content-type"] = "application/json; charset=utf-8",
			["report-to"] = '{"group":"network-errors","max_age":604800,"endpoints":[{"url":"https://ncs.roblox.com/upload"}]}',
			["roblox-machine-id"] = "CHI1-WEB9068",
			["x-frame-options"] = "SAMEORIGIN",
			["x-powered-by"] = "ASP.NET",
			date = "Thu, 01 Dec 2022 18:51:44 GMT",
			nel = '{"report_to":"network-errors","max_age":604800,"success_fraction":0.001,"failure_fraction":1}',
			p3p = 'CP="CAO DSP COR CURa ADMa DEVa OUR IND PHY ONL UNI COM NAV INT DEM PRE"',
			server = "Microsoft-IIS/8.5",
		},
		isCached = false,
		stats = {
			durations = {
				SSLHandshake = 0.09612300000000001,
				connect = 0.085217,
				inQueue = 0.000017911000000037092,
				makeRequest = 0.00002599999999997049,
				nameLookup = 0.095011,
				receiveResponse = 0.146775,
				roundTripTime = 0.42320003199999956,
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

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
				userIds = "1",
			},
			scheme = "https",
		},
	},
	response = {
		body = '{"data":[{"targetId":1,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/837aca8a1522baa27e951da106284553/48/48/AvatarHeadshot/Png/isCircular"}]}',
		headers = {
			["cache-control"] = "no-cache",
			["content-length"] = "149",
			["content-type"] = "application/json; charset=utf-8",
			["report-to"] = '{"group":"network-errors","max_age":604800,"endpoints":[{"url":"https://ncs.roblox.com/upload"}]}',
			["roblox-machine-id"] = "CHI1-WEB1800",
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
				SSLHandshake = 0.08807200000000001,
				connect = 0.075631,
				inQueue = 0.000014058000000094495,
				makeRequest = 0.00003100000000000325,
				nameLookup = 0.143498,
				receiveResponse = 0.13149099999999997,
				roundTripTime = 0.4387827249999998,
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

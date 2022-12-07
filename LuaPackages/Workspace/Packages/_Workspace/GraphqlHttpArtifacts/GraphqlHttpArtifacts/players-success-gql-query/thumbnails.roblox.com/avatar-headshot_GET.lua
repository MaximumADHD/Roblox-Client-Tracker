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
			["roblox-machine-id"] = "CHI2-WEB3670",
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
				SSLHandshake = 0.030061000000000004,
				connect = 0.018639999999999997,
				inQueue = 0.00003205499999969774,
				makeRequest = 0.000028999999999994308,
				nameLookup = 0.00243,
				receiveResponse = 0.06919,
				roundTripTime = 0.12040715600000018,
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

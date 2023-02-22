return {
	request = {
		body = '{"rsvpStatus":"going"}',
		cachePolicy = Enum.HttpCachePolicy.None,
		headers = {
			["content-type"] = "application/json",
			accept = "application/json",
		},
		method = "POST",
		url = {
			host = "apis.roblox.com",
			path = "/virtual-events/v1/virtual-events/832582841240813598/rsvps",
			query = {},
			scheme = "https",
		},
	},
	response = {
		body = '{"userId":957765952,"rsvpStatus":"going"}',
		headers = {
			["content-length"] = "41",
			["content-type"] = "application/json; charset=utf-8",
			["report-to"] = '{"group":"network-errors","max_age":604800,"endpoints":[{"url":"https://ncs.roblox.com/upload"}]}',
			["strict-transport-security"] = "max-age=3600",
			["x-envoy-upstream-service-time"] = "43",
			date = "Wed, 08 Feb 2023 22:39:19 GMT",
			nel = '{"report_to":"network-errors","max_age":604800,"success_fraction":0.001,"failure_fraction":1}',
			server = "envoy",
		},
		isCached = false,
		stats = {
			durations = {
				SSLHandshake = 0,
				connect = 0,
				inQueue = 0.000050204999979541753,
				makeRequest = 0.00010200000000000001,
				nameLookup = 0.000238,
				receiveResponse = 0.132872,
				roundTripTime = 0.13329447199998867,
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

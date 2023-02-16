return {
	request = {
		cachePolicy = Enum.HttpCachePolicy.None,
		headers = {},
		method = "GET",
		url = {
			host = "apis.roblox.com",
			path = "/virtual-events/v1/universes/2183742951/virtual-events",
			query = {
				limit = "25",
			},
			scheme = "https",
		},
	},
	response = {
		body = '{"nextPageCursor":"","previousPageCursor":"","data":[{"id":"819835226362085386","title":"Marin\'s Test Event","description":"Irure incididunt magna excepteur aliquip proident sint velit ea irure magna velit qui mollit. Consectetur exercitation mollit irure aliquip proident fugiat dolore do. Et fugiat ipsum excepteur fugiat in tempor fugiat dolor voluptate. Incididunt qui enim dolore mollit esse non cupidatat minim nisi amet dolore.","eventTime":{"startUtc":"2022-12-06T20:00:00+00:00","endUtc":"2023-02-01T20:00:00+00:00"},"host":{"hostName":"marin","hasVerifiedBadge":true,"hostType":"user","hostId":11125479544},"universeId":2180646966,"eventStatus":"active","createdUtc":"2022-12-05T18:17:35.678+00:00","updatedUtc":"2022-12-05T18:17:35.947+00:00"},{"id":"832320008850472967","title":"Soemthing else","description":"Description","eventTime":{"startUtc":"2023-01-19T20:00:00+00:00","endUtc":"2023-02-18T20:00:00+00:00"},"host":{"hostName":"marin","hasVerifiedBadge":true,"hostType":"user","hostId":11125479544},"universeId":2183742951,"eventStatus":"active","createdUtc":"2023-01-18T20:38:28.934+00:00","updatedUtc":"2023-01-18T20:40:46.704+00:00"},{"id":"830318654857707529","title":"Ongoing Test Event","description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pretium luctus quam, id ornare elit suscipit ut. Nulla vulputate molestie ipsum sit amet aliquam. Aenean nec urna nec elit suscipit rutrum. Morbi et pulvinar ex, et tincidunt enim. Pellentesque at tortor sed lacus interdum mollis vel eu mi. Nam dapibus sit amet felis sed vehicula. Integer hendrerit nisl sem, sed eleifend nisi porttitor id. Curabitur sit amet sollicitudin diam. Sed non dolor sollicitudin arcu maximus efficitur a in massa. Aenean eu nunc venenatis, semper diam id, cursus elit. Aenean ultrices id ante eget consectetur. In ut tellus felis. Donec consectetur felis nec massa feugiat placerat nec eu risus.","eventTime":{"startUtc":"2023-01-12T20:00:00+00:00","endUtc":"2024-04-03T17:55:00+00:00"},"host":{"hostName":"marin","hasVerifiedBadge":true,"hostType":"user","hostId":11125479544},"universeId":2183742951,"eventStatus":"active","createdUtc":"2023-01-11T18:59:04.156+00:00","updatedUtc":"2023-01-11T19:51:51.497+00:00"}]}',
		headers = {
			["content-length"] = "2233",
			["content-type"] = "application/json; charset=utf-8",
			["strict-transport-security"] = "max-age=3600",
			["x-envoy-upstream-service-time"] = "48",
			date = "Fri, 03 Feb 2023 18:59:05 GMT",
			server = "envoy",
		},
		isCached = false,
		stats = {
			durations = {
				SSLHandshake = 0.020894000000000003,
				connect = 0.025745999999999998,
				inQueue = 0.00008981399969343329,
				makeRequest = 0.000054999999999999494,
				nameLookup = 0.015391,
				receiveResponse = 0.159231,
				roundTripTime = 0.22146358099962526,
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

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
				universeIds = "1165835263,3891948728,943733974,2471084,2092410051,1214576306,31970568,2983322490,3971451848,2540112923,4098540216,3930295766,4073526437,3536822421,3945648722,4123380959,1177208440,4088408930,1218014086,3910603601,1358851719,1648565735,2014337322",
			},
			scheme = "https",
		},
	},
	response = {
		body = '{"data":[{"targetId":1165835263,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/82f076093b1954a2be9501a9b4b7b610/150/150/Image/Png"},{"targetId":3891948728,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/4833deac55f35200772e563899b47f9d/150/150/Image/Png"},{"targetId":943733974,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/200251ddd4e38987bcc1c83c9471e7e2/150/150/Image/Png"},{"targetId":2471084,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/4e0bd5c77756dce55561929587ff8772/150/150/Image/Png"},{"targetId":2092410051,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/1529345ee48bcf1cf8c9748690491a7f/150/150/Image/Png"},{"targetId":1214576306,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/1335759919f1eb7bab2f1d3c161978c9/150/150/Image/Png"},{"targetId":31970568,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/fb51d6471e222f6203b5940132d82938/150/150/Image/Png"},{"targetId":2983322490,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/3f7ed7c444ede1e0d25e39cedd6b1ee0/150/150/Image/Png"},{"targetId":3971451848,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/171c18616c81e2e436371b4e0ce346c1/150/150/Image/Png"},{"targetId":2540112923,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/0bb44b22a017fb4ee2662e06d5255e68/150/150/Image/Png"},{"targetId":4098540216,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/56a9645b1375980b51c44c136fcedbed/150/150/Image/Png"},{"targetId":3930295766,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/1a97ca81af665a6a97ddf6947235474d/150/150/Image/Png"},{"targetId":4073526437,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/5df74551efcb2fb2626aa6c7f7703e83/150/150/Image/Png"},{"targetId":3536822421,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/9a745d40c29ef35acf52fc92f25a684d/150/150/Image/Png"},{"targetId":3945648722,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/d2fe10e27363814d26dad537953033fb/150/150/Image/Png"},{"targetId":4123380959,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/77a9f3317868788069a4dd3c5c4a41b0/150/150/Image/Png"},{"targetId":1177208440,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/811c29807674e6c4561be12e0da28c34/150/150/Image/Png"},{"targetId":4088408930,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/1519ec8cafd40029776cf2e4dd7b71cd/150/150/Image/Png"},{"targetId":1218014086,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/66089277aa8b96409de77aa7395bdac9/150/150/Image/Png"},{"targetId":3910603601,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/607a7fe694a9945f8ff87714f50cdbb3/150/150/Image/Png"},{"targetId":1358851719,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/2fcd30d8cd0e2562ef8e111598b82e71/150/150/Image/Png"},{"targetId":1648565735,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/ad66e018ce436fcffb3ec70bc9246263/150/150/Image/Png"},{"targetId":2014337322,"state":"Completed","imageUrl":"https://tr.rbxcdn.com/31cb67577051e9e58c2b4f41b7c990fb/150/150/Image/Png"}]}',
		headers = {
			["cache-control"] = "no-cache",
			["content-length"] = "2994",
			["content-type"] = "application/json; charset=utf-8",
			["report-to"] = '{"group":"network-errors","max_age":604800,"endpoints":[{"url":"https://ncs.roblox.com/upload"}]}',
			["roblox-machine-id"] = "CHI2-WEB4107",
			["x-frame-options"] = "SAMEORIGIN",
			["x-powered-by"] = "ASP.NET",
			date = "Tue, 14 Feb 2023 19:49:39 GMT",
			nel = '{"report_to":"network-errors","max_age":604800,"success_fraction":0.001,"failure_fraction":1}',
			p3p = 'CP="CAO DSP COR CURa ADMa DEVa OUR IND PHY ONL UNI COM NAV INT DEM PRE"',
			server = "Microsoft-IIS/8.5",
		},
		isCached = false,
		stats = {
			durations = {
				SSLHandshake = 0.038983,
				connect = 0.023148,
				inQueue = 0.00005053300000001926,
				makeRequest = 0.00003700000000000925,
				nameLookup = 0.028743,
				receiveResponse = 0.269099,
				roundTripTime = 0.3601268149999999,
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

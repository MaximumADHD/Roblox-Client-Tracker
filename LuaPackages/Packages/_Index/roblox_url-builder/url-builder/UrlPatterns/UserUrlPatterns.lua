
return function(UrlBuilder)
	return {
		profile = UrlBuilder.fromString("www:users/{userId}/profile"),
		friends = UrlBuilder.fromString("www:users/{userId}/friends"),
		inventory = UrlBuilder.fromString("www:users/{userId}/inventory"),
		search = UrlBuilder.fromString("www:search/users?{keyword}"),

		report = function(params)
			-- Web is fixing a bug that requires actionName and redirectUrl for this page to work
			-- once fixed, this pattern function can be replaced with
			-- UrlBuilder.fromString("www:abusereport/embedded/chat?id={userId}&{conversationId}"),
			return UrlBuilder.fromString("www:abusereport/embedded/chat?id={userId}&{actionName}&{conversationId}&{redirecturl}")({
				userId = params.userId,
				conversationId = params.conversationId,
				actionName = "chat",
				redirecturl = UrlBuilder.fromString("www:home")(),
			})
		end
	}
end

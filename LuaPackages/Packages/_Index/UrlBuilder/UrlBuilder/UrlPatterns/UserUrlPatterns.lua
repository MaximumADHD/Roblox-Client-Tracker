return function(UrlBuilder)
	return {
		profile = UrlBuilder.fromString("www:users/{userId}/profile?friendshipSourceType={sourceType|}"),
		group = UrlBuilder.fromString("www:groups/{groupId}/{groupName|}#!/about"),
		friends = UrlBuilder.fromString("www:users/{userId}/friends"),
		inventory = UrlBuilder.fromString("www:users/{userId}/inventory"),
		search = UrlBuilder.fromString("www:search/users?{keyword}"),
		profileWithFriendshipSourceType = UrlBuilder.fromString(
			"www:users/{userId}/profile?friendshipSourceType={sourceType}"
		),
		followers = UrlBuilder.fromString("www:users/{userId}/friends#!/followers"),
		following = UrlBuilder.fromString("www:users/{userId}/friends#!/following"),

		report = function(params)
			-- Web is fixing a bug that requires actionName and redirectUrl for this page to work
			-- once fixed, this pattern function can be replaced with
			-- UrlBuilder.fromString("www:abusereport/embedded/chat?id={userId}&{conversationId}"),
			return UrlBuilder.fromString(
				"www:abusereport/embedded/chat?id={userId}&{actionName}&{conversationId}&{redirecturl}"
			)({
				userId = params.userId,
				conversationId = params.conversationId,
				actionName = "chat",
				redirecturl = UrlBuilder.fromString("www:home")(),
			})
		end,
		appsflyer = function(params)
			local mobileUrl = UrlBuilder.fromString("mobilenav:profile?userId={userId}&friendshipSourceType={sourceType}")(params)
			local webUrl = UrlBuilder.fromString("www:users/{userId}/profile?friendshipSourceType={sourceType}")(params)
			return UrlBuilder.fromString("appsflyer:Ebh5?pid=share&is_retargeting=true&af_dp={mobileUrl}&af_web_dp={webUrl}")({
				mobileUrl = mobileUrl,
				webUrl = webUrl,
			})
		end,
	}
end

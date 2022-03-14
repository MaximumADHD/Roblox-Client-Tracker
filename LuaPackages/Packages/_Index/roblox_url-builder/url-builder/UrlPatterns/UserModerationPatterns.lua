return function(UrlBuilder)
	local UserModerationUrlPatterns = {}

	UserModerationUrlPatterns.moderationDetail = UrlBuilder.fromString("usermoderation:not-approved")
	UserModerationUrlPatterns.reactivate = UrlBuilder.fromString("usermoderation:not-approved/reactivate")

	return UserModerationUrlPatterns
end

return function(UrlBuilder)
	local UserModerationUrlPatterns = {}

	UserModerationUrlPatterns.moderationDetail = UrlBuilder.fromString("usermoderation:v1/not-approved")
	UserModerationUrlPatterns.reactivate = UrlBuilder.fromString("usermoderation:v1/not-approved/reactivate")
	UserModerationUrlPatterns.reminder = UrlBuilder.fromString("usermoderation:v1/reminder")
	UserModerationUrlPatterns.dismissIntervention = UrlBuilder.fromString("usermoderation:v1/dismiss-intervention")
	UserModerationUrlPatterns.accessDetail = UrlBuilder.fromString("usermoderation:v2/not-approved")

	return UserModerationUrlPatterns
end

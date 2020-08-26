--!nocheck

return function(UrlBuilder)

	local GameUrlPatterns = {}

	--- from GameInfoList.lua
	GameUrlPatterns.info = {
		webpage = UrlBuilder.fromString("www:games/{placeId}"),
		store = UrlBuilder.fromString("www:games/store-section/{universeId}"),
		badges = UrlBuilder.fromString("www:games/badges-section/{universeId}"),
		servers = UrlBuilder.fromString("www:games/servers-section/{universeId}"),
		serversPreopenCreateVip = UrlBuilder.fromString("www:games/servers-section-preopen-create-vip/{universeId}"),
		group = UrlBuilder.fromString("www:groups/{creatorId}"),
		user = UrlBuilder.fromString("www:users/{creatorId}/profile"),
		-- {creatorType=Group|User, creatorId}
		creator = function(params)
			if params.creatorType == "Group" then
				return GameUrlPatterns.info.group(params)
			elseif params.creatorType == "User" then
				return GameUrlPatterns.info.user(params)
			end
			warn(string.format("%s - unknown creatorType of %s", tostring(script.name), tostring(params.creatorType)))
			return nil
		end,
		appsflyer = function(params)
			return UrlBuilder.fromString("appsflyer:Ebh5?pid=share&is_retargeting=true&af_dp={mobileUrl}&af_web_dp={webUrl}")({
				mobileUrl = UrlBuilder.fromString("mobilenav:game_details?gameId={universeId}")(params),
				webUrl = GameUrlPatterns.info.webpage(params),
			})
		end,
	}

	--- from Http/Requests/*
	GameUrlPatterns.details = UrlBuilder.fromString("games:games?{universeIds}")
	GameUrlPatterns.playability = UrlBuilder.fromString("games:games/multiget-playability-status?{universeIds}")
	GameUrlPatterns.media = UrlBuilder.fromString("games:games/{universeId}/media")
	GameUrlPatterns.favorite = UrlBuilder.fromString("games:games/{universeId}/favorites")
	GameUrlPatterns.social = UrlBuilder.fromString("games:games/{universeId}/social-links/list")
	GameUrlPatterns.recommended = UrlBuilder.fromString("games:games/recommendations/game/{universeId}?{paginationKey|}&{maxRows|6}")
	GameUrlPatterns.thumbnail = UrlBuilder.fromString("games:games/game-thumbnails?{height|150}&{width|150}&{imageTokens}")
	GameUrlPatterns.vote = {
		-- votes for all users
		all = UrlBuilder.fromString("games:games/{universeId}/votes"),
		-- current user vote status
		get = UrlBuilder.fromString("games:games/{universeId}/votes/user"),
		set = UrlBuilder.fromString("games:games/{universeId}/user-votes"),
	}
	GameUrlPatterns.follow = {
		get = UrlBuilder.fromString("followings:users/{userId}/universes/{universeId}/status"),
		set = UrlBuilder.fromString("followings:users/{userId}/universes/{universeId}"),
	}
	GameUrlPatterns.report = UrlBuilder.fromString("www:abusereport/asset?id={placeId}")

	GameUrlPatterns.place = UrlBuilder.fromString("games:games/multiget-place-details?{placeIds}")

	return GameUrlPatterns

end

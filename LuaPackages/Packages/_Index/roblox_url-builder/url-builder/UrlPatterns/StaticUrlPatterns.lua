return function(UrlBuilder)
	local function isQQ()
		return string.find(UrlBuilder.fromString("corp:")(), "qq.com")
	end

	return {
		catalog = UrlBuilder.fromString("www:catalog"),
		buildersClub = UrlBuilder.fromString("www:mobile-app-upgrades/native-ios/bc"),
		trades = UrlBuilder.fromString("www:trades"),
		profile = UrlBuilder.fromString("www:users/profile"),
		friends = UrlBuilder.fromString("www:users/friends"),
		groups = UrlBuilder.fromString("www:my/groups"),
		inventory = UrlBuilder.fromString("www:users/inventory"),
		messages = UrlBuilder.fromString("www:my/messages"),
		feed = UrlBuilder.fromString("www:feeds/inapp"),
		develop = UrlBuilder.fromString("www:develop/landing"),
		blog = UrlBuilder.fromString("blog:"),
		help = UrlBuilder.fromString(isQQ() and "corp:faq" or "www:help"),
		email = {
			getSetEmail = UrlBuilder.fromString("accountSettings:v1/email"),
			sendVerificationEmail = UrlBuilder.fromString("accountSettings:v1/email/verify")
		},
		about = {
			us = UrlBuilder.fromString("corp:"),
			careers = UrlBuilder.fromString(isQQ() and "corp:careers.html" or "corp:careers"),
			parents = UrlBuilder.fromString("corp:parents"),
			terms = function(params)
				if isQQ() and params.useGameQQUrls then
					return UrlBuilder.fromString("https://game.qq.com/contract.shtml")()
				else
					return UrlBuilder.fromString("www:info/terms")()
				end
			end,
			privacy = function(params)
				if isQQ() and params.useGameQQUrls then
					return UrlBuilder.fromString("https://game.qq.com/privacy_guide.shtml")()
				else
					return UrlBuilder.fromString("www:info/privacy")()
				end
			end,
		},
		settings = {
			account = UrlBuilder.fromString("www:my/account#!/info"),
			security = UrlBuilder.fromString("www:my/account#!/security"),
			privacy = UrlBuilder.fromString("www:my/account#!/privacy"),
			billing = UrlBuilder.fromString("www:my/account#!/billing"),
			notifications = UrlBuilder.fromString("www:my/account#!/notifications"),
		},
		tencent = {
			childrenPrivacyGuide = UrlBuilder.fromString("https://game.qq.com/privacy_guide_children.shtml"),
			luobuRiderTerms = UrlBuilder.fromString("https://roblox.qq.com/web201904/newsdetail.html?newsid=12429812"),
			reputationInfo = UrlBuilder.fromString("https://gamecredit.qq.com/static/games/index.htm"),
		},
	}
end

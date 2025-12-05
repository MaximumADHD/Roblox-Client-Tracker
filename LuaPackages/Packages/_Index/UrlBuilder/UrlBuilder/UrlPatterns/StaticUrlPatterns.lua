game:DefineFastFlag("EnableShopGiftCardsURL", false)

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
		groups = UrlBuilder.fromString("www:my/communities"),
		inventory = UrlBuilder.fromString("www:users/inventory"),
		messages = UrlBuilder.fromString("www:my/messages"),
		feed = UrlBuilder.fromString("www:feeds/inapp"),
		develop = UrlBuilder.fromString("www:develop"),
		creatorHub = UrlBuilder.fromString("create:"),
		blog = UrlBuilder.fromString("blog:"),
		giftCards = function(source)
			local sourceCode = source or ""
			local giftCardsUrl = "www:giftcards?ref={source}"
			if game:GetFastFlag("EnableShopGiftCardsURL") then
				giftCardsUrl = "www:shopgiftcards?ref={source}"
			end
			return UrlBuilder.fromString(giftCardsUrl)({ source = sourceCode })
		end,
		giftCardsWithRedeem = function(source, countryCode)
			if countryCode and countryCode ~= "" then
				local baseUrl = "www:giftcards-" .. countryCode .. "?ref={source}"
				return UrlBuilder.fromString(baseUrl)({ source = source })
			else
				return UrlBuilder.fromString("www:shopgiftcards?ref={source}")({ source = source })
			end
		end,
		redeem = UrlBuilder.fromString("www:redeem"),
		amazonStore = UrlBuilder.fromString("https://www.amazon.com/roblox"),
		help = UrlBuilder.fromString(isQQ() and "corp:faq" or "www:help"),
		appealsPortal = {
			-- link the Report & Appeals standalone portal (e.g. not part of settings)
			main = UrlBuilder.fromString("www:report-appeals?t_source={source|app}"),
			-- link to a specific violation within the portal
			-- The URL builder does not support paramters in the hash
			-- so we send that as a query parameter instead and handle it in the portal
			violation = UrlBuilder.fromString("www:report-appeals?vid={id}&t_source={source|app}"),
		},
		email = {
			getSetEmail = UrlBuilder.fromString("accountSettings:v1/email"),
			sendVerificationEmail = UrlBuilder.fromString("accountSettings:v1/email/verify"),
		},
		about = {
			us = function(locale)
				local localeCode = locale or ""
				return UrlBuilder.fromString("www:info/about-us?locale={localeCode}")({ localeCode = localeCode })
			end,
			careers = function(locale)
				if isQQ() then
					return UrlBuilder.fromString("corp:careers.html")
				else
					local localeCode = locale or ""
					return UrlBuilder.fromString("www:info/jobs?locale={localeCode}")({ localeCode = localeCode })
				end
			end,
			parents = function(locale)
				local localeCode = locale or ""
				return UrlBuilder.fromString("www:info/parents?locale={localeCode}")({ localeCode = localeCode })
			end,
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
			guidelines = UrlBuilder.fromString("www:info/community-guidelines"),
			support = UrlBuilder.fromString("www:support"),
		},
		settings = {
			account = UrlBuilder.fromString("www:my/account#!/info"),
			security = UrlBuilder.fromString("www:my/account#!/security"),
			privacy = UrlBuilder.fromString("www:my/account#!/privacy"),
			parentalControls = UrlBuilder.fromString("www:my/account#!/parental-controls"),
			billing = UrlBuilder.fromString("www:my/account#!/billing"),
			subscriptions = UrlBuilder.fromString("www:my/account#!/subscriptions"),
			notifications = UrlBuilder.fromString("www:my/account#!/notifications"),
			appPermissions = UrlBuilder.fromString("www:my/account#!/app-permissions"),
			screentimeSettings = UrlBuilder.fromString("www:my/account#!/privacy/Screentime"),
			blockedExperiencesSettings = UrlBuilder.fromString(
				"www:my/account#!/privacy/ContentRestrictions/BlockedExperiences"
			),
			blockedUsersSettings = UrlBuilder.fromString("www:my/account#!/privacy/BlockedUsers"),
			experienceChatSettings = UrlBuilder.fromString("www:my/account#!/privacy/Communication/ExperienceChat"),
			partySettings = UrlBuilder.fromString("www:my/account#!/privacy/Communication/Party"),
			communicationSettings = UrlBuilder.fromString("www:my/account#!/privacy/Communication"),
			voiceSettings = UrlBuilder.fromString("www:my/account#!/privacy/Communication/Voice"),
			tradingInventorySettings = UrlBuilder.fromString("www:my/account#!/privacy/TradingAndInventory"),
			friendsContactsSettings = UrlBuilder.fromString("www:my/account#!/privacy/FriendsAndContacts"),
			privateServerSettings = UrlBuilder.fromString(
				"www:my/account#!/privacy/VisibilityAndPrivateServers/PrivateServerPrivacy"
			),
			visibilitySettings = UrlBuilder.fromString(
				"www:my/account#!/privacy/VisibilityAndPrivateServers/Visibility"
			),
		},
		tencent = {
			childrenPrivacyGuide = UrlBuilder.fromString("https://game.qq.com/privacy_guide_children.shtml"),
			luobuRiderTerms = UrlBuilder.fromString("https://roblox.qq.com/web201904/newsdetail.html?newsid=12429812"),
			reputationInfo = UrlBuilder.fromString("https://gamecredit.qq.com/static/games/index.htm"),
			luobuThirdPartyDataUse = UrlBuilder.fromString("https://game.qq.com/zlkdatasys/privacy_SDK.html"),
		},
		idVerification = {
			verify = UrlBuilder.fromString("www:id-verification/verify"),
			getAge = UrlBuilder.fromString("apis:age-verification-service/v1/age-verification/get-verified-age"),
		},
		notifications = {
			clearUnread = UrlBuilder.fromString("notifications:stream-notifications/clear-unread"),
			unreadCount = UrlBuilder.fromString("notifications:stream-notifications/unread-count"),
		},
		securityAlert = UrlBuilder.fromString("www:security-feedback?payload={payload}&username={username}"),
		securityAlertWithChannel = UrlBuilder.fromString(
			"www:security-feedback?payload={payload}&username={username}&channel={channel}"
		),
	}
end

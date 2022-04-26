--[[
	Url Constructor

	Provides a single location for base urls.

]]--
local ContentProvider = game:GetService("ContentProvider")

local FFlagLuaFixEconomyCreatorStatsUrl = game:DefineFastFlag("LuaFixEconomyCreatorStatsUrl", false)

-- helper functions
local function parseBaseUrlInformation()
	-- get the current base url from the current configuration
	local baseUrl = ContentProvider.BaseUrl

	-- keep a copy of the base url (https://www.roblox.com/)
	-- append a trailing slash if there isn't one
	if baseUrl:sub(#baseUrl) ~= "/" then
		baseUrl = baseUrl .. "/"
	end

	-- parse out scheme (http, https)
	local _, schemeEnd = baseUrl:find("://")

	-- parse out the prefix (www, kyle, ying, etc.)
	local prefixIndex, prefixEnd = baseUrl:find("%.", schemeEnd + 1)
	local basePrefix = baseUrl:sub(schemeEnd + 1, prefixIndex - 1)

	-- parse out the domain (roblox.com/, sitetest1.robloxlabs.com/, etc.)
	local baseDomain = baseUrl:sub(prefixEnd + 1)

	return baseUrl, basePrefix, baseDomain
end
local function preventTableModification(aTable, key, value)
	error("Attempt to modify read-only table")
end
local function createReadOnlyTable(aTable)
   return setmetatable({}, {
     __index = aTable,
     __newindex = preventTableModification,
     __metatable = false
   });
end


-- url construction building blocks
local _baseUrl, _basePrefix, _baseDomain = parseBaseUrlInformation()

-- construct urls once
local _baseApiUrl = string.format("https://api.%s", _baseDomain)
local _baseApisUrl = string.format("https://apis.%s", _baseDomain)
local _baseAuthUrl = string.format("https://auth.%s", _baseDomain)
local _baseAccountSettingsUrl = string.format("https://accountsettings.%s", _baseDomain)
local _baseAvatarUrl = string.format("https://avatar.%s", _baseDomain)
local _baseCatalogUrl = string.format("https://catalog.%s", _baseDomain)
local _baseInventoryUrl = string.format("https://inventory.%s", _baseDomain)
local _baseChatUrl = string.format("https://chat.%sv2", _baseDomain)
local _baseFriendUrl = string.format("https://friends.%sv1", _baseDomain)
local _baseUsersUrl = string.format("https://users.%sv1", _baseDomain)
local _baseGameAssetUrl = string.format("https://assetgame.%s", _baseDomain)
local _baseGamesUrl = string.format("https://games.%s", _baseDomain)
local _baseGroupsUrl = string.format("https://groups.%s", _baseDomain)
local _baseNotificationUrl = string.format("https://notifications.%s", _baseDomain)
local _basePresenceUrl = string.format("https://presence.%sv1", _baseDomain)
local _baseRealtimeUrl = string.format("https://realtime.%s", _baseDomain)
local _baseWebUrl = string.format("https://web.%s", _baseDomain)
local _baseWwwUrl = string.format("https://www.%s", _baseDomain)
local _baseAdsUrl = string.format("https://ads.%s", _baseDomain)
local _baseFollowingsUrl = string.format("https://followings.%s", _baseDomain)
local _baseEconomyUrl = string.format("https://economy.%s", _baseDomain)
local _baseThumbnailsUrl = string.format("https://thumbnails.%s", _baseDomain)
local _baseAccountSettings = string.format("https://accountsettings.%s", _baseDomain)
local _basePremiumFeatures = string.format("https://premiumfeatures.%s", _baseDomain)
local _baseLocale = string.format("https://locale.%s", _baseDomain)
local _baseBadgesUrl = string.format("https://badges.%s", _baseDomain)
local _baseMetricsUrl = string.format("https://metrics.%sv1", _baseDomain)
local _baseApisRcsUrl = string.format("https://apis.rcs.%s", _baseDomain)
local _baseDiscussionsUrl = string.format("https://discussions.%s", _baseDomain)
local _baseContactsUrl = string.format("https://contacts.%s", _baseDomain)
local _baseSearchUrl = string.format("https://search.%s", _baseDomain)
local _baseStaticUrl = string.format("https://static.%s", _baseDomain)
local _baseGameSearchUITreatments = string.format("https://gamesearchuitreatments.api.%s", _baseDomain)
local _baseEconomyCreatorStats = FFlagLuaFixEconomyCreatorStatsUrl
	and string.format("https://economycreatorstats.%s", _baseDomain)
	or string.format("https://economycreatorstats.api.%s", _baseDomain)
local _baseUserModerationUrl = string.format("https://usermoderation.%s", _baseDomain)
local _baseUrlSecure = string.gsub(_baseUrl, "http://", "https://")
local _baseVoiceUrl = string.format("https://voice.%s", _baseDomain)
local _baseTranslationsUrl = string.format("https://translations.%s", _baseDomain)
local _baseTwoStepVerification = string.format("https://twostepverification.%s", _baseDomain)

-- Version of the static farm URL that makes use of CDN on prod.
local _baseStaticCdnUrl = _baseStaticUrl
if _baseDomain == "roblox.com/" then
	_baseStaticCdnUrl = string.gsub(_baseStaticCdnUrl, _baseDomain, "rbxcdn.com/")
end

-- public api
local Url = {
	DOMAIN = _baseDomain,
	PREFIX = _basePrefix,
	BASE_URL = _baseUrlSecure,
	BASE_URL_SECURE = _baseUrlSecure,
	API_URL = _baseApiUrl,
	APIS_URL = _baseApisUrl,
	AUTH_URL = _baseAuthUrl,
	ACCOUNT_SETTINGS_URL = _baseAccountSettingsUrl,
	AVATAR_URL = _baseAvatarUrl,
	CATALOG_URL = _baseCatalogUrl,
	INVENTORY_URL = _baseInventoryUrl,
	GAME_URL = _baseGamesUrl,
	GAME_ASSET_URL = _baseGameAssetUrl,
	GROUPS_URL = _baseGroupsUrl,
	CHAT_URL = _baseChatUrl,
	FRIEND_URL = _baseFriendUrl,
	USERS_URL = _baseUsersUrl,
	PRESENCE_URL = _basePresenceUrl,
	NOTIFICATION_URL = _baseNotificationUrl,
	REALTIME_URL = _baseRealtimeUrl,
	WEB_URL = _baseWebUrl,
	WWW_URL = _baseWwwUrl,
	ADS_URL = _baseAdsUrl,
	SEARCH_URL = _baseSearchUrl,
	GAME_SEARCH_UI_TREATMENTS = _baseGameSearchUITreatments,
	FOLLOWINGS_URL = _baseFollowingsUrl,
	ECONOMY_URL = _baseEconomyUrl,
	THUMBNAILS_URL = _baseThumbnailsUrl,
	BADGES_URL = _baseBadgesUrl,
	ACCOUNT_SETTINGS = _baseAccountSettings,
	PREMIUM_FEATURES = _basePremiumFeatures,
	LOCALE = _baseLocale,
	METRICS_URL = _baseMetricsUrl,
	APIS_RCS_URL = _baseApisRcsUrl,
	DISCUSSIONS_URL = _baseDiscussionsUrl,
	CONTACTS_URL = _baseContactsUrl,
	STATIC_URL = _baseStaticUrl,
	STATIC_CDN_URL = _baseStaticCdnUrl,
	BLOG_URL = "https://blog.roblox.com/",
	CORP_URL = "https://corp.roblox.com/",
	ECNOMY_CREATOR_STATS = _baseEconomyCreatorStats,
	USER_MODERATION_URL = _baseUserModerationUrl,
	VOICE_URL = _baseVoiceUrl,
	TRANSLATIONS_URL = _baseTranslationsUrl,
	TWOSTEPVERIFICATION_URL = _baseTwoStepVerification
}

function Url:getUserProfileUrl(userId)
	return string.format("%susers/%s/profile", self.BASE_URL, userId)
end

function Url:getUserFriendsUrl(userId)
	return string.format("%susers/%s/friends", self.BASE_URL, userId)
end

function Url:getUserInventoryUrl(userId)
	return string.format("%susers/%s/inventory", self.BASE_URL, userId)
end

function Url:getPlaceDefaultThumbnailUrl(placeId, width, height)
	return string.format(
		"%sThumbs/Asset.ashx?width=%d&height=%d&assetId=%s&ignorePlaceMediaItems=true",
		self.BASE_URL,
		width,
		height,
		tostring(placeId))
end

function Url:isVanitySite()
	return self.PREFIX ~= "www"
end

-- data - (table<string, string>) a table of key/value pairs to format
function Url:makeQueryString(data)
	--NOTE - This function can be used to create a query string of parameters
	-- at the end of url query, or create a application/form-url-encoded post body string
	local params = {}

	-- NOTE - Arrays are handled, but generally data is expected to be flat.
	for key, value in pairs(data) do
		if value ~= nil then --for optional params
			if type(value) == "table" then
				for i = 1, #value do
					table.insert(params, key .. "=" .. value[i])
				end
			else
				table.insert(params, key .. "=" .. tostring(value))
			end
		end
	end

	return table.concat(params, "&")
end


-- prevent anyone from modifying this table:
Url = createReadOnlyTable(Url)

return Url

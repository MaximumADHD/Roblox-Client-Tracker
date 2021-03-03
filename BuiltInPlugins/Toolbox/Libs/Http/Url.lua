--[[
	Url Constructor

	Provides a single location for base urls.
]]

local HttpService = game:GetService("HttpService")
local ContentProvider = game:GetService("ContentProvider")

-- helper functions
local function parseBaseUrlInformation()
	-- get the current base url from the current configuration
	local baseUrl = ContentProvider.BaseUrl

	-- keep a copy of the base url
	-- append a trailing slash if there isn't one
	if baseUrl:sub(#baseUrl) ~= "/" then
		baseUrl = baseUrl .. "/"
	end

	-- parse out scheme (http, https)
	local _, schemeEnd = baseUrl:find("://")

	-- parse out the prefix (www, kyle, ying, etc.)
	local prefixIndex, prefixEnd = baseUrl:find("%.", schemeEnd + 1)
	local basePrefix = baseUrl:sub(schemeEnd + 1, prefixIndex - 1)

	-- parse out the domain
	local baseDomain = baseUrl:sub(prefixEnd + 1)

	return baseUrl, basePrefix, baseDomain
end

-- url construction building blocks
local _baseUrl, _basePrefix, _baseDomain = parseBaseUrlInformation()

-- construct urls once
local _baseApiUrl = string.format("https://api.%s", _baseDomain)
local _baseApisUrl = string.format("https://apis.%s", _baseDomain)
local _baseAuthUrl = string.format("https://auth.%s", _baseDomain)
local _baseChatUrl = string.format("https://chat.%sv2", _baseDomain)
local _baseGameAssetUrl = string.format("https://assetgame.%s", _baseDomain)
local _baseGamesUrl = string.format("https://games.%s", _baseDomain)
local _baseNotificationUrl = string.format("https://notifications.%s", _baseDomain)
local _baseRealtimeUrl = string.format("https://realtime.%s", _baseDomain)
local _baseWebUrl = string.format("https://web.%s", _baseDomain)
local _baseCatalogUrl = string.format("https://catalog.%s", _baseDomain)
local _baseDevelopUrl = string.format("https://develop.%s", _baseDomain)
local _baseItemConfigurationUrl = string.format("https://itemconfiguration.%s", _baseDomain)
local _basePublishUrl = string.format("https://publish.%s", _baseDomain)
local _baseDataUrl = string.format("https://data.%s", _baseDomain)
local _baseGroupUrl = string.format("https://groups.%s", _baseDomain)
local _baseThumbnailUrl = string.format("https://thumbnails.%s", _baseDomain)
local _baseEconomyUrl = string.format("https://economy.%s", _baseDomain)
local _baseFriendsUrl = string.format("https://friends.%s", _baseDomain)

-- public api
local Url = {
	DOMAIN = _baseDomain,
	PREFIX = _basePrefix,
	BASE_URL = _baseUrl,
	API_URL = _baseApiUrl,
	APIS_URL = _baseApisUrl,
	AUTH_URL = _baseAuthUrl,
	GAME_URL = _baseGamesUrl,
	GAME_ASSET_URL = _baseGameAssetUrl,
	CHAT_URL = _baseChatUrl,
	NOTIFICATION_URL = _baseNotificationUrl,
	REALTIME_URL = _baseRealtimeUrl,
	WEB_URL = _baseWebUrl,
	CATALOG_URL = _baseCatalogUrl,
	DEVELOP_URL = _baseDevelopUrl,
	ITEM_CONFIGURATION_URL = _baseItemConfigurationUrl,
	PUBLISH_URL = _basePublishUrl,
	DATA_URL = _baseDataUrl,
	GROUP_URL = _baseGroupUrl,
	THUMBNAIL_URL = _baseThumbnailUrl,
	ECONOMY_URL = _baseEconomyUrl,
	FRIENDS_URL = _baseFriendsUrl,
}

function Url:isVanitySite()
	return self.PREFIX ~= "www"
end

-- data - (table<string, string>) a table of key/value pairs to format
function Url.makeQueryString(data)
	--NOTE - This function can be used to create a query string of parameters
	-- at the end of url query, or create a application/form-url-encoded post body string
	local params = {}

	-- NOTE - Arrays are handled, but generally data is expected to be flat.
	for key, value in pairs(data) do
		if value ~= nil then --for optional params
			if type(value) == "table" then
				for i = 1, #value do
					table.insert(params, HttpService:UrlEncode(key) .. "=" .. HttpService:UrlEncode(value[i]))
				end
			else
				table.insert(params, HttpService:UrlEncode(key) .. "=" .. HttpService:UrlEncode(tostring(value)))
			end
		end
	end

	return table.concat(params, "&")
end

return Url

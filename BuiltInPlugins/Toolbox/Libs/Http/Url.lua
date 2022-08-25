--[[
	Url Constructor

	Provides a single location for base urls.
]]

local HttpService = game:GetService("HttpService")
local ContentProvider = game:GetService("ContentProvider")
local FFlagToolboxUseQueryForCategories2 = game:GetFastFlag("ToolboxUseQueryForCategories2")

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

function isMap(value)
	-- In lua, using #value with a table will return the # of elements if it's an array but 0 if it's not an array:
	return typeof(value) == "table" and #value == 0
end

function addArrayToParams(params, key, value, separateArrayValsWithComma)
	if value ~= nil and #value > 0 then
		if separateArrayValsWithComma then
			params[HttpService:UrlEncode(key)] = HttpService:UrlEncode(table.concat(value, ","))
		else
			-- Supporting the legacy way that arrays were sent while still using a map instead of array for params
			local stringOfArrayVals = HttpService:UrlEncode(value[1])
			for i = 2, #value do
				stringOfArrayVals = stringOfArrayVals .. "&" .. HttpService:UrlEncode(key) .. "=" .. HttpService:UrlEncode(value[i])
			end
			params[HttpService:UrlEncode(key)] = stringOfArrayVals
		end
	end
end

function addNonMapValueToParams(params, key, value, separateArrayValsWithComma)
	if value ~= nil and not isMap(value) then --for optional params
		if type(value) == "table" then
			addArrayToParams(params, key, value, separateArrayValsWithComma)
		else
			params[HttpService:UrlEncode(key)] = HttpService:UrlEncode(tostring(value))
		end
	end
end

-- This function can be used to create a query string of parameters at the end of url query, or create a application/form-url-encoded post body string
-- data - (table<string, string>) a table of key/value pairs to format
-- includeMaps - boolean that will include maps in data if true.
	-- "Including" a map means to add its key and values as query params. e.g. someKeyInData = { a = 2 , b = 3 } would add a=2&b=3 to the result.
-- separateArrayValsWithComma - boolean indicating how arrays are encoded in the query. If true: arr = {a, b, c} --> arr=a,b,c  . If false: arr = {a, b, c} --> arr=a&arr=b&arr=c
	-- The falsy way is how it's been done in the past, so it's included for backwards compatibility
	-- Going forward, devs should strive to set this to true
function Url.makeQueryString(data, includeMaps, separateArrayValsWithComma)
	if FFlagToolboxUseQueryForCategories2 then
		local params = {}

		for key, value in pairs(data) do
			local valueIsMap = isMap(value)
			if not valueIsMap then
				addNonMapValueToParams(params, key, value, separateArrayValsWithComma)
			elseif valueIsMap and includeMaps then
				for keyInMap, valInMap in pairs(value) do
					-- We're ignoring nested maps because sending those in a GET request is too messy and never needed in Toolbox
					assert(not isMap(valInMap), "Nested maps are not currently supported")
					addNonMapValueToParams(params, keyInMap, valInMap, separateArrayValsWithComma)
				end
			end
		end

		local flatParams = {}
		for key, val in pairs(params) do
			table.insert(flatParams, key .. "=" .. val)
		end
		return table.concat(flatParams, "&")
	else
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
end

return Url

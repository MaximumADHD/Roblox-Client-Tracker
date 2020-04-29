--[[
	Url Constructor

	Provides a single location for base urls.
]]

local ContentProvider = game:GetService("ContentProvider")

-- helper functions
local function parseBaseUrlInformation(baseUrl)
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



-- public api
local Url = {}
Url.__index = Url

-- baseUrl : (string) a url for the current environment like https://www.roblox.com
function Url.new(baseUrl)
	if not baseUrl then
		baseUrl = ContentProvider.BaseUrl
	end

	-- url construction building blocks
	local _baseUrl, _basePrefix, _baseDomain = parseBaseUrlInformation(baseUrl)

	local u = {
		PREFIX = _basePrefix, -- www
		DOMAIN = _baseDomain, -- roblox.com
		BASE_URL = _baseUrl,  -- https://www.roblox.com
		API_URL = string.format("https://api.%s", _baseDomain),
		ASSET_GAME_URL = string.format("https://assetgame.%s", _baseDomain),
		AUTH_URL = string.format("https://auth.%s", _baseDomain),
		CATALOG_URL = string.format("https://catalog.%s", _baseDomain),
		CHAT_URL = string.format("https://chat.%s", _baseDomain),
		DATA_URL = string.format("https://data.%s", _baseDomain),
		DEVELOP_URL = string.format("https://develop.%s", _baseDomain),
		GAME_URL = string.format("https://games.%s", _baseDomain),
		GROUP_URL = string.format("https://groups.%s", _baseDomain),
		ITEM_CONFIGURATION_URL = string.format("https://itemconfiguration.%s", _baseDomain),
		NOTIFICATION_URL = string.format("https://notifications.%s", _baseDomain),
		PUBLISH_URL = string.format("https://publish.%s", _baseDomain),
		REALTIME_URL = string.format("https://realtime.%s", _baseDomain),
		WEB_URL = string.format("https://web.%s", _baseDomain),
	}
	setmetatable(u, Url)

	return u
end

-- data - (table<string, string>) a table of key/value pairs to format
-- returns - a string of key,value parameters connected by &
function Url.makeQueryString(data)
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

-- return a global table that is immediately usable anywhere
local globalUrlTable = Url.new()
return globalUrlTable
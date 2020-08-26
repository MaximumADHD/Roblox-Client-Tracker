
local ContentProvider = game:GetService("ContentProvider")

--- base configuration -----------------------------
local baseUrl = ContentProvider.BaseUrl
baseUrl = string.gsub(baseUrl, ".*://", "")
baseUrl = string.gsub(baseUrl, "/.*", "")
baseUrl = string.gsub(baseUrl, "^www%.", "")

local UrlBase = {}

--[[
	builds the base URL for an API

	name (string): base name of the API, eg: "games"
	params (optional table): a configuration table with any of the following:
		* proto (optional string): the URL protocol, eg "http", "ftp", defaults to "https"
		* version (optional int, string): an optional version, eg "1" will append "/v1" to the URL
		* path (optional string): a subpath to append to the URL, no leading slash
		* secure (optional boolean): equivalent to proto = "https"
	all strings can be empty (including name), output will adapt accordingly

	alternatively, version can be provided as second argument eg ("games", 1)
]]
function UrlBase.new(name, params)
	assert(type(name) == "string", "UrlBase.new: `name` should be a string")
	if params == nil then
		params = {}
	end
	if type(params) == "number" or type(params) == "string" then
		params = {version = params}
	end
	assert(type(params) == "table",  "UrlBase.new: `params` should be a table")
	local proto = params.proto
	local version = params.version
	local path = params.path
	if proto == nil then
		if params.secure == false then
			proto = "http"
		else
			proto = "https"
		end
	end
	local urlbase = proto
	if #proto > 0 then
		urlbase = urlbase .. "://"
	end
	urlbase = urlbase .. name
	if #name > 0 then
		urlbase = urlbase .. "."
	end
	urlbase = urlbase .. baseUrl
	if version ~= nil and #tostring(version) > 0 then
		urlbase = urlbase .. "/v" .. tostring(version)
	end
	if path ~= nil and #path > 0 then
		urlbase = urlbase .. "/" .. path
	end
	return urlbase
end

local isQQ = string.sub(baseUrl, -6) == "qq.com"

-- from Url.lua
UrlBase.API = UrlBase.new("api")
UrlBase.APIS = UrlBase.new("apis")
UrlBase.AUTH = UrlBase.new("auth")
UrlBase.CHAT = UrlBase.new("chat")
UrlBase.FRIENDS = UrlBase.new("friends", 1)
UrlBase.ASSETGAME = UrlBase.new("assetgame")
UrlBase.GAMES = UrlBase.new("games", 1)
UrlBase.NOTIFICATION = UrlBase.new("notification", 2)
UrlBase.PRESENCE = UrlBase.new("presence", 1)
UrlBase.REALTIME = UrlBase.new("realtime")
UrlBase.WEB = UrlBase.new("web")
UrlBase.WWW = UrlBase.new("www")
UrlBase.ASD = UrlBase.new("ads", 1)
UrlBase.FOLLOWINGS = UrlBase.new("followings", 1)
UrlBase.PREMIUM = UrlBase.new("premiumfeatures", 1)
UrlBase.BLOG = "https://blog.roblox.com"
UrlBase.CORP = isQQ and "https://roblox.qq.com" or "https://corp.roblox.com"
-- from Http.lua
UrlBase.ACCOUNTSETTINGS = UrlBase.new("accountsettings")
UrlBase.BADGES = UrlBase.new("badges", 1)
UrlBase.INVENTORY = UrlBase.new("inventory", 1)
UrlBase.CATALOG = UrlBase.new("catalog", 1)
-- from AEWebApi.lua
UrlBase.AVATAR = UrlBase.new("avatar", 1)

UrlBase.MOBILENAV = "robloxmobile://navigation"
UrlBase.APPSFLYER = "https://ro.blox.com"

return UrlBase

-- Domain list
local Urls = {}

local ContentProvider = game:GetService("ContentProvider")

local function getBaseDomain(baseUrl)
	local _, prefixEnd = baseUrl:find("%.")
	local baseDomain = baseUrl:sub(prefixEnd + 1)

	if baseDomain:sub(-1) ~= "/" then
		baseDomain = baseDomain .. "/"
	end
	return baseDomain
end

local baseUrl = ContentProvider.BaseUrl
local baseDomain = getBaseDomain(baseUrl)

local baseGameUrl = string.format("https://games.%s", baseDomain)
local baseRcsUrl = string.format("https://apis.rcs.%s", baseDomain)
local baseApisUrl = string.format("https://apis.%s", baseDomain)

local urlValues = {
	GAME_URL = baseGameUrl,
	RCS_URL = baseRcsUrl,
	APIS_URL = baseApisUrl,
}

setmetatable(Urls, {
		__newindex = function(t, key, index)
		end,
		__index = function(t, index)
			return urlValues[index]
		end
	})

return Urls
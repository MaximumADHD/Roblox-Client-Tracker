--!strict
-- TODO: Make own package. Was stolen from AppTempCommon

local ContentProvider: ContentProvider = game:GetService("ContentProvider")

-- url construction building blocks
local function parseBaseUrlInformation(): (string, string, string)
	-- get the current base url from the current configuration
	local baseUrl: string = ContentProvider.BaseUrl

	-- keep a copy of the base url (https://www.roblox.com/)
	-- append a trailing slash if there isn't one
	if baseUrl:sub(#baseUrl) ~= "/" then
		baseUrl = baseUrl .. "/"
	end

	-- parse out scheme (http, https)
	local _, schemeEnd: number? = baseUrl:find("://")
	assert(type(schemeEnd) == "number", "Expected schemeEnd to be a number")

	-- parse out the prefix (www, kyle, ying, etc.)
	local prefixIndex: number?, prefixEnd: number? = baseUrl:find("%.", schemeEnd + 1)
	assert(type(prefixIndex) == "number", "Expected prefixIndex to be a number")
	assert(type(prefixEnd) == "number", "Expected prefixEnd to be a number")

	local basePrefix: string = baseUrl:sub(schemeEnd + 1, prefixIndex - 1)

	-- parse out the domain (roblox.com/, sitetest1.robloxlabs.com/, etc.)
	local baseDomain: string = baseUrl:sub(prefixEnd + 1)

	return baseUrl, basePrefix, baseDomain
end

local _baseUrl: string, _basePrefix: string, baseDomain: string = parseBaseUrlInformation()

return function(siteName: string): string
	return string.format("https://%s.%s", siteName, baseDomain)
end

local ContentProvider = game:GetService("ContentProvider")

-- url construction building blocks
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

local _baseUrl, _basePrefix, baseDomain = parseBaseUrlInformation()

return function(siteName)
	return string.format("https://%s.%s", siteName, baseDomain)
end

local BaseUrl = game:GetService("ContentProvider").BaseUrl:lower()
if BaseUrl:find("https://www.") then
	BaseUrl = BaseUrl:sub(13)
elseif BaseUrl:find("http://www.") then
	BaseUrl = BaseUrl:sub(12)
end

local UrlConstructor = {}

function UrlConstructor.BuildUrl(subdomain, path, ...)
	local pathString = string.format(path, ...) or ""
	return string.format("https://%s.%s%s", subdomain, BaseUrl, pathString)
end

return UrlConstructor
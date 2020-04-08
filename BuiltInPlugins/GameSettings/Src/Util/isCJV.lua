--[[
	Determine if isCJV by base url
]]

return function()
	local baseUrl = game:GetService("ContentProvider").BaseUrl:lower()
	return string.find(baseUrl, "roblox.qq.com") ~= nil or string.find(baseUrl, "roblox.cn") ~= nil
end
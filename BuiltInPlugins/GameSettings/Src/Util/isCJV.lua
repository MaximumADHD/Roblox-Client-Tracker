--[[
	Determine if isCJV by base url
]]

-- TODO: jbousellam - 3/16/21 - remove file with FFlagStudioCreatePluginPolicyService

return function()
	local baseUrl = game:GetService("ContentProvider").BaseUrl:lower()
	return string.find(baseUrl, "roblox.qq.com") ~= nil or string.find(baseUrl, "roblox.cn") ~= nil
end
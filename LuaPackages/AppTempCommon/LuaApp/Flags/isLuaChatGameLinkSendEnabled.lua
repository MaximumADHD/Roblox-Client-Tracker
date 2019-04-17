local CorePackages = game:GetService("CorePackages")

local ThrottleUserId = require(CorePackages.AppTempCommon.LuaApp.Utils.ThrottleUserId)

local FIntLuaChatGameLinkSendThrottle = settings():GetFVariable("LuaChatGameLinkSendThrottle")

return function(userId)
	return ThrottleUserId(tonumber(FIntLuaChatGameLinkSendThrottle), userId)
end
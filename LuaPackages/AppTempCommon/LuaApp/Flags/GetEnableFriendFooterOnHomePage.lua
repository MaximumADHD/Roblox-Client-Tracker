local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local ThrottleUserId = require(CorePackages.AppTempCommon.LuaApp.Utils.ThrottleUserId)

local FIntEnableFriendFooterOnHomePage = settings():GetFVariable("EnableFriendFooterOnHomePageV369")

-- Don't call this function globally because we cannot get the userId
-- Reason: The LocalPlayer wouldn't be ready if we called it globally.
return function()
	local throttleNumber = tonumber(FIntEnableFriendFooterOnHomePage)
	local userId = Players.LocalPlayer.UserId

	return ThrottleUserId(throttleNumber, userId)
end
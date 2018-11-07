local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local ThrottleUserId = require(CorePackages.AppTempCommon.LuaApp.Utils.ThrottleUserId)

local FIntLuaHomePageEnablePlacesListV1 = settings():GetFVariable("LuaHomePageEnablePlacesListV1V361")

-- Don't call this function globally because we cannot get the userId
-- Reason: The LocalPlayer wouldn't be ready if we called it globally.
return function()
	local throttleNumber = tonumber(FIntLuaHomePageEnablePlacesListV1)
	local userId = Players.LocalPlayer.UserId

	return ThrottleUserId(throttleNumber, userId)
end
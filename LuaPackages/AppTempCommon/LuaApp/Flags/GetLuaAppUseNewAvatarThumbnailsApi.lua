local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local ThrottleUserId = require(CorePackages.AppTempCommon.LuaApp.Utils.ThrottleUserId)

local FIntLuaAppUseNewAvatarThumbnailsApi = settings():GetFVariable("LuaAppUseNewAvatarThumbnailsApi3")

--[[
	GetLuaAppUseNewAvatarThumbnailsApi.lua

	Returns a boolean of whether LuaAppUseNewAvatarThumbnailsApi should be on or not based on
	the rollout coverage and current userId.
--]]
return function()
	local throttleNumber = tonumber(FIntLuaAppUseNewAvatarThumbnailsApi)

	if game:GetService("RunService"):IsStudio() or _G.__TESTEZ_RUNNING_TEST__ then
		return throttleNumber ~= 0
	else
		local userId = Players.LocalPlayer.UserId

		return ThrottleUserId(throttleNumber, userId)
	end
end
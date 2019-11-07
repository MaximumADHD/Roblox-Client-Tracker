local FIntLuaAppUseNewAvatarThumbnailsApi = settings():GetFVariable("LuaAppUseNewAvatarThumbnailsApi5")

local throttledFlagValue = nil
--[[
	GetLuaAppUseNewAvatarThumbnailsApi.lua

	Returns a boolean of whether LuaAppUseNewAvatarThumbnailsApi should be on or not.
--]]
return function()
	local throttleNumber = tonumber(FIntLuaAppUseNewAvatarThumbnailsApi)

	if type(throttledFlagValue) ~= "boolean" then
		if type(throttleNumber) == "number" then
			math.randomseed(tick() * 365)
			local randomValueGenerated = math.random(99)
			if randomValueGenerated < throttleNumber then
				throttledFlagValue = true
			else
				throttledFlagValue = false
			end
		else
			throttledFlagValue = false
		end
	end

	return throttledFlagValue
end
local Players = game:GetService("Players")

local FFlagWhitelistThumbnailsAPI = settings():GetFFlag("WhitelistThumbnailsAPI")
local FIntLuaAppPercentRollOutNewThumbnailsAPI = settings():GetFVariable("LuaAppPercentRollOutNewThumbnailsApiV3")

return function()
	if not FFlagWhitelistThumbnailsAPI then
		return false
	end

	if not Players.LocalPlayer then
		return false
	end

	-- shift number allows different users to get the chances in different feature rollouts
	local rollout = (tonumber(Players.LocalPlayer.UserId) + 55) % 100
	return (tonumber(FIntLuaAppPercentRollOutNewThumbnailsAPI) > rollout)
end
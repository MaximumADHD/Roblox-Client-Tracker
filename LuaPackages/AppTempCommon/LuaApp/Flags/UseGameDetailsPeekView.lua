game:DefineFastInt("LuaAppPercentRolloutGameDetailsPeekViewV1p5", 0) -- GAMEDISC-195

local Players = game:GetService("Players")

local FIntLuaAppPercentRolloutGameDetailsPeekView = game:GetFastInt("LuaAppPercentRolloutGameDetailsPeekViewV1p5")
local FFlagLuaAppDeepLinkEventReceiver = settings():GetFFlag("LuaAppDeepLinkEventReceiver")

return function()
	if not Players.LocalPlayer then
		return false
	end

	if not FFlagLuaAppDeepLinkEventReceiver then
		return false
	end

	-- shift number allows different users to get the chances in different feature rollouts
	local rollout = (tonumber(Players.LocalPlayer.UserId) + 33) % 100
	return (tonumber(FIntLuaAppPercentRolloutGameDetailsPeekView) > rollout)
end

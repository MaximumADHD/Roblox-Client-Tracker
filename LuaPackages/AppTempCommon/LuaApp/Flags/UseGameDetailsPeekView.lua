local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local ABTestService = game:GetService("ABTestService")
local Modules = CoreGui.RobloxGui.Modules
local GetFFlagLuaAppInitializeABTests = require(Modules.LuaApp.Flags.GetFFlagLuaAppInitializeABTests)

game:DefineFastInt("LuaAppPercentRolloutGameDetailsPeekViewV1p5", 0) -- GAMEDISC-195

local FFlagLuaAppABTestGameDetailsPeekView = settings():GetFFlag("LuaAppABTestGameDetailsPeekView")

return function()
	if not Players.LocalPlayer then
		return false
	end

	local FFlagLuaAppInitializeABTests = GetFFlagLuaAppInitializeABTests()

	if FFlagLuaAppInitializeABTests and FFlagLuaAppABTestGameDetailsPeekView then
		--[[
			0 : Not Enrolled
			1 : Enrolled, No PeekView
			2 : Enrolled, PeekView is enabled
		]]
		local variation = ABTestService:GetVariant("AllUsers.LuaApp.GameDetailsPeekView")
		return (variation == "Variation2")
	else
		local FIntLuaAppPercentRolloutGameDetailsPeekView = game:GetFastInt("LuaAppPercentRolloutGameDetailsPeekViewV1p5")
		-- shift number allows different users to get the chances in different feature rollouts
		local rollout = (tonumber(Players.LocalPlayer.UserId) + 33) % 100
		return (tonumber(FIntLuaAppPercentRolloutGameDetailsPeekView) > rollout)
	end
end

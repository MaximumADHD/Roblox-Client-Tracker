local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local ABTestService = game:GetService("ABTestService")
local Modules = CoreGui.RobloxGui.Modules
local GetFFlagLuaAppInitializeABTests = require(Modules.LuaApp.Flags.GetFFlagLuaAppInitializeABTests)

game:DefineFastInt("LuaAppPercentRolloutFeaturedGameTileInSearch", 0) -- GAMEDISC-238
game:DefineFastFlag("LuaAppABTestFeaturedGameTileInSearch", false) -- GAMEDISC-307

return function()
	if not Players.LocalPlayer then
		return false
	end

	local FFlagLuaAppInitializeABTests = GetFFlagLuaAppInitializeABTests()
	local FFlagLuaAppABTestFeaturedGameTileInSearch = game:GetFastFlag("LuaAppABTestFeaturedGameTileInSearch")
	if FFlagLuaAppInitializeABTests and FFlagLuaAppABTestFeaturedGameTileInSearch then
		--[[
			GAMEDISC-307
			https://confluence.rbx.com/display/DISCOVERY/Featured+Search+in+App

			0 : Not Enrolled
			1 : Enrolled, No Features Applied
			2 : Enrolled, Featured Search Card Applied
			3 : Enrolled, Midsize Featured Search Card Applied
		]]
		local variation = ABTestService:GetVariant("AllUsers.LuaApp.FeaturedGameTileInSearch")
		return (variation == "Variation2" or variation == "Variation3")
	else
		local FIntLuaAppPercentRolloutFeaturedGameTileInSearch
			= game:GetFastInt("LuaAppPercentRolloutFeaturedGameTileInSearch")

		-- shift number allows different users to get the chances in different feature rollouts
		local rollout = (tonumber(Players.LocalPlayer.UserId) + 55) % 100
		return (tonumber(FIntLuaAppPercentRolloutFeaturedGameTileInSearch) > rollout)
	end
end
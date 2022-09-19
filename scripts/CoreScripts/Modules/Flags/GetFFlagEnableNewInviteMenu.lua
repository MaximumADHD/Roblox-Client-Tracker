local Players = game:GetService("Players")

local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local NewInviteMenuExperimentManager = require(Modules.Settings.Pages.ShareGame.NewInviteMenuExperimentManager)

game:DefineFastInt("EnableNewInviteMenuRolloutDev", 0)
game:DefineFastFlag("EnableNewInviteMenuDev", false)

return function()
	if not Players.LocalPlayer then
		return false
	end

	if game:GetFastFlag("EnableNewInviteMenuDev") then
		return true
	end

	local localPlayer = Players.LocalPlayer :: Player
	if game:GetFastInt("EnableNewInviteMenuRolloutDev") > localPlayer.UserId % 100 then
		return true
	end

	return NewInviteMenuExperimentManager.default:getEnabled()
end

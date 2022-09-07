local Players = game:GetService("Players")

local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local NewInviteMenuExperimentManager = require(Modules.Settings.Pages.ShareGame.NewInviteMenuExperimentManager)

game:DefineFastInt("EnableNewInviteMenuRollout", 0)

return function()
	if not Players.LocalPlayer then
		return false
	end

	local localPlayer = Players.LocalPlayer :: Player
	if game:GetFastInt("EnableNewInviteMenuRollout") > localPlayer.UserId % 100 then
		return true
	end

	return NewInviteMenuExperimentManager.default:getEnabled()
end

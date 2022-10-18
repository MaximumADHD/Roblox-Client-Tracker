local Players = game:GetService("Players")

local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local NewInviteMenuExperimentManager = require(Modules.Settings.Pages.ShareGame.NewInviteMenuExperimentManager)

game:DefineFastInt("EnableNewInviteMenuStyleRollout", 0)
game:DefineFastFlag("EnableNewInviteMenuStyle", false)

return function()
	if not Players.LocalPlayer then
		return false
	end

	if game:GetFastFlag("EnableNewInviteMenuStyle") then
		return true
	end

	local localPlayer = Players.LocalPlayer :: Player
	if game:GetFastInt("EnableNewInviteMenuStyleRollout") > localPlayer.UserId % 100 then
		return true
	end

	return NewInviteMenuExperimentManager.default:getStyleEnabled()
end

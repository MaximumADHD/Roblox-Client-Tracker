local Players = game:GetService("Players")

local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local NewInviteMenuExperimentManager = require(Modules.Settings.Pages.ShareGame.NewInviteMenuExperimentManager)

game:DefineFastFlag("EnableNewInviteMenuCustomization2", false)
game:DefineFastFlag("EnableNewInviteMenuCustomizationIXP2", false)

return function()
	return game:GetFastFlag("EnableNewInviteMenuCustomization2")
		or (
			game:GetFastFlag("EnableNewInviteMenuCustomizationIXP2")
			and NewInviteMenuExperimentManager.default:getCustomizationEnabled()
		)
end

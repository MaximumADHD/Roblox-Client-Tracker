local Players = game:GetService("Players")

local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local NewInviteMenuExperimentManager = require(Modules.Settings.Pages.ShareGame.NewInviteMenuExperimentManager)

game:DefineFastFlag("EnableNewInviteMenuCustomization", false)
game:DefineFastFlag("EnableNewInviteMenuCustomizationIXP", false)

return function()
	return game:GetFastFlag("EnableNewInviteMenuCustomization")
		or (
			game:GetFastFlag("EnableNewInviteMenuCustomizationIXP")
			and NewInviteMenuExperimentManager.default:getCustomizationEnabled()
		)
end

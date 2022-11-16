local Players = game:GetService("Players")

local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local NewInviteMenuExperimentManager = require(Modules.Settings.Pages.ShareGame.NewInviteMenuExperimentManager)

game:DefineFastFlag("EnableNewInviteSendEndpoint", false)
game:DefineFastFlag("EnableNewInviteSendEndpointIXP", false)

return function()
	return game:GetFastFlag("EnableNewInviteSendEndpoint")
		or (
			game:GetFastFlag("EnableNewInviteSendEndpointIXP")
			and NewInviteMenuExperimentManager.default:getCustomizationEnabled()
		)
end

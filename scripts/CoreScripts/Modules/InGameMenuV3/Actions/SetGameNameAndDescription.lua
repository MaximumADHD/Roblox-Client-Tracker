local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)
local InGameMenu = script.Parent.Parent

local GetFFlagShareInviteLinkContextMenuV3Enabled = require(InGameMenu.Flags.GetFFlagShareInviteLinkContextMenuV3Enabled)

return Action(script.Name, function(name, description, creator, created)
	if GetFFlagShareInviteLinkContextMenuV3Enabled() then
		return {
			gameName = name,
			gameDescription = description,
			gameCreator = creator,
			gameCreated = created,
		}
	else
		return {
			gameName = name,
			gameDescription = description,
			gameCreator = creator,
		}
	end
end)

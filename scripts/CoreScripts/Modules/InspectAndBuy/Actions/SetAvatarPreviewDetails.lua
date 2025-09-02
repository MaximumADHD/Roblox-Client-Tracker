local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Packages.Rodux).makeActionCreator
local AvatarExperienceInspectAndBuy = require(CorePackages.Workspace.Packages.AvatarExperienceInspectAndBuy)
type AvatarPreviewResponse = AvatarExperienceInspectAndBuy.AvatarPreviewResponse

export type SetAvatarPreviewDetails = {
	avatarPreviewDetails: AvatarPreviewResponse,
}

return Action(script.Name, function(avatarPreviewDetails: AvatarPreviewResponse)
	return {
		avatarPreviewDetails = avatarPreviewDetails or {},
	}
end)

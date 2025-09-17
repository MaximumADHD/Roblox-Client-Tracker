local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Packages.Rodux).makeActionCreator
local AvatarExperienceInspectAndBuy = require(CorePackages.Workspace.Packages.AvatarExperienceInspectAndBuy)

type PromptBulkPurchaseFinishedResult = AvatarExperienceInspectAndBuy.PromptBulkPurchaseFinishedResult
type AvatarPreviewResponse = AvatarExperienceInspectAndBuy.AvatarPreviewResponse

export type UpdateBulkPuchaseResults = {
	result: PromptBulkPurchaseFinishedResult,
}

return Action(script.Name, function(result: PromptBulkPurchaseFinishedResult)
	return {
		result = result or {},
	}
end)

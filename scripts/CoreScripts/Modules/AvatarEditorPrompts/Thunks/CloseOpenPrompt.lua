local AvatarEditorService = game:GetService("AvatarEditorService")
local CorePackages = game:GetService("CorePackages")

local AvatarEditorPrompts = script.Parent.Parent
local CloseOpenPrompt = require(AvatarEditorPrompts.Actions.CloseOpenPrompt)

local PromptType = require(AvatarEditorPrompts.PromptType)
local FFlagAXAvatarTimeoutFlowIE = require(CorePackages.Workspace.Packages.AvatarExperienceFlags).FFlagAXAvatarTimeoutFlowIE

return function(store)
	local openPromptType = store:getState().promptInfo.promptType

	if openPromptType == PromptType.AllowInventoryReadAccess then
		AvatarEditorService:SetAllowInventoryReadAccess(false)
	elseif openPromptType == PromptType.SaveAvatar then
		AvatarEditorService:SignalSaveAvatarPermissionDenied()
	elseif openPromptType == PromptType.CreateOutfit then
		AvatarEditorService:SignalCreateOutfitPermissionDenied()
	elseif openPromptType == PromptType.EnterOutfitName then
		AvatarEditorService:SignalCreateOutfitPermissionDenied()
	elseif openPromptType == PromptType.SetFavorite then
		AvatarEditorService:SignalSetFavoritePermissionDenied()
	elseif openPromptType == PromptType.DeleteOutfit then
		AvatarEditorService:SignalDeleteOutfitPermissionDenied()
	elseif openPromptType == PromptType.RenameOutfit then
		AvatarEditorService:SignalRenameOutfitPermissionDenied()
	elseif openPromptType == PromptType.UpdateOutfit then
		AvatarEditorService:SignalUpdateOutfitPermissionDenied()
	elseif FFlagAXAvatarTimeoutFlowIE and openPromptType == PromptType.SaveAvatarTimeout then
		AvatarEditorService:SignalSaveAvatarPermissionDenied()
	elseif openPromptType ~= nil then
		error("CloseOpenPrompt for unhandled prompt type " .. tostring(openPromptType))
	end

	store:dispatch(CloseOpenPrompt())
end

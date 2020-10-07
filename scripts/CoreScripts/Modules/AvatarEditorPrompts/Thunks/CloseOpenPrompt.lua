local AvatarEditorService = game:GetService("AvatarEditorService")

local AvatarEditorPrompts = script.Parent.Parent
local CloseOpenPrompt = require(AvatarEditorPrompts.Actions.CloseOpenPrompt)

local PromptType = require(AvatarEditorPrompts.PromptType)

return function(store)
	local openPromptType = store:getState().promptInfo.promptType

	if openPromptType == PromptType.AllowInventoryReadAccess then
		AvatarEditorService:SetAllowInventoryReadAccess(false)
	elseif openPromptType == PromptType.SaveAvatar then
		AvatarEditorService:SignalSaveAvatarPermissionDenied()
	elseif openPromptType == PromptType.CreateOutfit then
		AvatarEditorService:SignalCreateOutfitPermissionDenied()
	elseif openPromptType == PromptType.SetFavorite then
		AvatarEditorService:SignalSetFavoritePermissionDenied()
	end

	store:dispatch(CloseOpenPrompt())
end
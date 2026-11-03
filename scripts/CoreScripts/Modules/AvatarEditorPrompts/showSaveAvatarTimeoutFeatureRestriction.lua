--[[
	Handles a save avatar request while the user is timed out by showing the Universal Feature
	Restriction dialog instead of SaveAvatarTimeoutPrompt.

	The denial is signaled immediately rather than on dialog dismiss: UFR only shows the dialog when
	moderation detail is found, so waiting on dismiss could leave the experience's PromptSaveAvatar
	call unresolved.
]]

local AvatarEditorService = game:GetService("AvatarEditorService")
local CorePackages = game:GetService("CorePackages")

local showAvatarChangeFeatureRestriction =
	require(CorePackages.Workspace.Packages.AvatarExperienceCommon).Utils.showAvatarChangeFeatureRestriction

local function showSaveAvatarTimeoutFeatureRestriction(avatarEditorService: AvatarEditorService?)
	local service = avatarEditorService or AvatarEditorService
	service:SignalSaveAvatarPermissionDenied()
	showAvatarChangeFeatureRestriction()
end

return showSaveAvatarTimeoutFeatureRestriction

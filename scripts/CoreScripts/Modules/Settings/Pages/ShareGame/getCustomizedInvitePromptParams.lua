local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local Constants = require(Modules.Settings.Pages.ShareGame.Constants)

-- Returns parameters from ExperienceInviteOptions based on if the feature is
-- enabled and customization options are present. If nil is returned, the modal
-- should not be shown

return function(
	experienceInviteOptions: ExperienceInviteOptions?,
	getCanSendAndCanCustomize: (trigger: string, inviteUserId: number?) -> (boolean, boolean)
): {
	inviteMessageId: string?,
	inviteUserId: number?,
	promptMessage: string?,
	launchData: string?
}?
	local inviteUserId: number? = if (experienceInviteOptions
			and experienceInviteOptions.InviteUser ~= 0)
			then experienceInviteOptions.InviteUser else nil


	local trigger = if inviteUserId then Constants.Triggers.DeveloperSingle else Constants.Triggers.DeveloperMultiple


	local canSend, canCustomize = getCanSendAndCanCustomize(trigger, inviteUserId)

	if not canSend then
		return nil
	end

	local params = {}
	if canCustomize and experienceInviteOptions then
		if experienceInviteOptions.InviteMessageId ~= "" then
			params.inviteMessageId = experienceInviteOptions.InviteMessageId
		end
		if experienceInviteOptions.InviteUser ~= 0 then
			params.inviteUserId = experienceInviteOptions.InviteUser
		end
		if experienceInviteOptions.PromptMessage ~= "" then
			params.promptMessage = experienceInviteOptions.PromptMessage
		end
		if experienceInviteOptions.LaunchData ~= "" then
			params.launchData = experienceInviteOptions.LaunchData
		end
	end
	return params
end

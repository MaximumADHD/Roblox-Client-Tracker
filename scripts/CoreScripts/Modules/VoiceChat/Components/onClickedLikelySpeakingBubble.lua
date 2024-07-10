local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)

return function()
	VoiceChatServiceManager:ShowInExperienceVoiceUpsell(VoiceConstants.IN_EXP_UPSELL_ENTRYPOINTS.LIKELY_SPEAKING)
end

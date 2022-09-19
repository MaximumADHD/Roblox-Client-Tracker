local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

return function(name: string, folder: string): string
	return VoiceChatServiceManager:GetIcon(name, folder)
end

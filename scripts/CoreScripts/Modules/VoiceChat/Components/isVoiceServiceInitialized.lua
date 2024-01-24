-- Helper inside experience chat in order to check if voice service has been initialized with AsyncInit

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local Promise = require(CorePackages.Promise)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

return function()
	return VoiceChatServiceManager:asyncInit()
end

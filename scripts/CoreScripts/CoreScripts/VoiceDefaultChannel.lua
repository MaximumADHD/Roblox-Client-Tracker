--!nocheck

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VoiceChatServiceManager = require(RobloxGui.Modules.Settings.Models.VoiceChatServiceManager)

VoiceChatServiceManager:init()
local VoiceChatService = VoiceChatServiceManager:getService()

if not VoiceChatService then
	return
end

VoiceChatService:JoinByGroupIdToken("default", false)

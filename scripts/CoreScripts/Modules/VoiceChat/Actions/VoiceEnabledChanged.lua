local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Action = require(CorePackages.Rodux).makeActionCreator
local t = require(CorePackages.Packages.t)
local maybeAssert = require(RobloxGui.Modules.InGameChat.BubbleChat.Helpers.maybeAssert)

local GetFFlagRemoveInGameChatBubbleChatReferences = require(RobloxGui.Modules.Flags.GetFFlagRemoveInGameChatBubbleChatReferences)
if GetFFlagRemoveInGameChatBubbleChatReferences() then
	maybeAssert = require(RobloxGui.Modules.VoiceChat.Helpers.maybeAssert)
end

return Action(script.Name, function(enabled)
	maybeAssert(t.boolean(enabled))

	return {
		enabled = enabled,
	}
end)

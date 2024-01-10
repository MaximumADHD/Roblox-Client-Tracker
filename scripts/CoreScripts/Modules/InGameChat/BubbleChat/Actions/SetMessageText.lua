local CorePackages = game:GetService("CorePackages")
local ExperienceChat = require(CorePackages.ExperienceChat)
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

local Action = require(CorePackages.Rodux).makeActionCreator
local t = require(CorePackages.Packages.t)
local maybeAssert = require(script.Parent.Parent.Helpers.maybeAssert)

local GetFFlagConsolidateBubbleChat = require(RobloxGui.Modules.Flags.GetFFlagConsolidateBubbleChat)

local check = t.tuple(t.string, t.string)

return Action(script.Name, function(messageId, newText)
	maybeAssert(check(messageId, newText))

	if GetFFlagConsolidateBubbleChat() then
		local Events = ExperienceChat.Events :: any -- Remove :: any cast when cleaning up GetFFlagConsolidateBubbleChat()
		if Events.LegacyBubbleTextUpdated ~= nil then -- Remove check when cleaning up GetFFlagConsolidateBubbleChat()
			Events.LegacyBubbleTextUpdated(messageId, newText)
		end
	end
	return {
		messageId = messageId,
		newText = newText,
	}
end)

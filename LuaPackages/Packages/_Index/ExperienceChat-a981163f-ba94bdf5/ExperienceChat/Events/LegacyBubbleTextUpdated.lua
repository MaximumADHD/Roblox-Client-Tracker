local createEvent = require(script.Parent.event)

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Actions = ExperienceChat.Actions
local LegacyBubbleTextUpdated = require(Actions.LegacyBubbleTextUpdated)

return createEvent(LegacyBubbleTextUpdated)

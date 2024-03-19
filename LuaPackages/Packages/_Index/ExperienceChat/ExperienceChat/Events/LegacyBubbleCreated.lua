local createEvent = require(script.Parent.event)

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Actions = ExperienceChat.Actions
local LegacyBubbleCreated = require(Actions.LegacyBubbleCreated)

return createEvent(LegacyBubbleCreated)

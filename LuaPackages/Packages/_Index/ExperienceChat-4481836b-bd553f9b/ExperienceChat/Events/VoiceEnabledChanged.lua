local createEvent = require(script.Parent.event)

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Actions = ExperienceChat.Actions
local VoiceEnabledChanged = require(Actions.VoiceEnabledChanged)

return createEvent(VoiceEnabledChanged)

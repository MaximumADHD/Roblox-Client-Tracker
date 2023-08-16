local createEvent = require(script.Parent.event)

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Actions = ExperienceChat.Actions
local VoiceStateChanged = require(Actions.VoiceStateChanged)

return createEvent(VoiceStateChanged)

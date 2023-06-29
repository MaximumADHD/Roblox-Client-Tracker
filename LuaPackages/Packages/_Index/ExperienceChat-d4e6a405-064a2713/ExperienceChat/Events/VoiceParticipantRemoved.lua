local createEvent = require(script.Parent.event)

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Actions = ExperienceChat.Actions
local VoiceParticipantRemoved = require(Actions.VoiceParticipantRemoved)

return createEvent(VoiceParticipantRemoved)

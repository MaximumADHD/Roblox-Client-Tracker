local createEvent = require(script.Parent.event)

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Actions = ExperienceChat.Actions
local VoiceParticipantAdded = require(Actions.VoiceParticipantAdded)

return createEvent(VoiceParticipantAdded)

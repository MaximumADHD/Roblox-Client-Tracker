local createEvent = require(script.Parent.event)

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Actions = ExperienceChat.Actions
local VoiceParticipantToggleMuted = require(Actions.VoiceParticipantToggleMuted)

return createEvent(VoiceParticipantToggleMuted)

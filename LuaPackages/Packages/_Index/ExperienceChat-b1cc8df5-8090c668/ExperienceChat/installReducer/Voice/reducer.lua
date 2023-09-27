local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

local FFlagEasierUnmutingVoiceParticipantsMutedReducer =
	game:DefineFastFlag("EasierUnmutingVoiceParticipantsMutedReducer", false)

return Rodux.combineReducers({
	participants = require(script.Parent.participants),
	participantsMuted = if FFlagEasierUnmutingVoiceParticipantsMutedReducer
		then require(script.Parent.participantsMuted)
		else Rodux.createReducer({}, {}),
	isEnabled = require(script.Parent.isEnabled),
})

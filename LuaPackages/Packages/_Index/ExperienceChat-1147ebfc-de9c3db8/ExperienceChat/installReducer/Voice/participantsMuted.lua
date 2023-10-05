local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Dictionary = require(Packages.llama).Dictionary
local None = require(Packages.llama).None
local Rodux = require(Packages.Rodux)

local Actions = ExperienceChat.Actions
local VoiceParticipantToggleMuted = require(Actions.VoiceParticipantToggleMuted)
local VoiceParticipantAdded = require(Actions.VoiceParticipantAdded)
local VoiceParticipantRemoved = require(Actions.VoiceParticipantRemoved)

type State = {
	[string]: boolean,
}

local defaultState: State = {}
return Rodux.createReducer(defaultState, {
	-- Add the new user with the default voice chat state.
	[VoiceParticipantAdded.name] = function(state: State, action: VoiceParticipantAdded.Action)
		local userId = action.userId
		local isMuted: boolean = state[userId] or false

		return Dictionary.set(state, userId, isMuted)
	end :: any,

	-- Remove player from the voice chat list
	[VoiceParticipantRemoved.name] = function(state: State, action: VoiceParticipantRemoved.Action)
		return Dictionary.set(state, action.userId, None)
	end :: any,

	-- Change the current voice state for a specific player.
	[VoiceParticipantToggleMuted.name] = function(state: State, action: VoiceParticipantToggleMuted.Action)
		-- Ignore state changes for users not already in the list
		if state[action.userId] ~= nil then
			return Dictionary.join(state, {
				[action.userId] = action.isMuted,
			})
		else
			return state
		end
	end :: any,
})

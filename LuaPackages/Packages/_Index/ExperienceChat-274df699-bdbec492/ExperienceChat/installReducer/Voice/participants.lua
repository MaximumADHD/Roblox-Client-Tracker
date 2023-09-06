local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Dictionary = require(Packages.llama).Dictionary
local None = require(Packages.llama).None
local Rodux = require(Packages.Rodux)

local Actions = ExperienceChat.Actions
local VoiceParticipantAdded = require(Actions.VoiceParticipantAdded)
local VoiceParticipantRemoved = require(Actions.VoiceParticipantRemoved)
local VoiceStateChanged = require(Actions.VoiceStateChanged)

type VoiceState = VoiceStateChanged.VoiceState
type State = {
	[string]: VoiceState,
}

local defaultState: State = {}
return Rodux.createReducer(defaultState, {
	-- Add the new user with the default voice chat state.
	[VoiceParticipantAdded.name] = function(state: State, action: VoiceParticipantAdded.Action)
		local userId = action.userId
		local voiceState: VoiceState = state[userId] or "Hidden"

		return Dictionary.join(state, {
			[userId] = voiceState,
		})
	end :: any,

	-- Remove player from the voice chat list
	[VoiceParticipantRemoved.name] = function(state: State, action: VoiceParticipantRemoved.Action)
		return Dictionary.join(state, {
			[action.userId] = None,
		})
	end :: any,

	-- Change the current voice state for a specific player.
	[VoiceStateChanged.name] = function(state: State, action: VoiceStateChanged.Action)
		-- Ignore state changes for users not already in the list
		if state[action.userId] then
			return Dictionary.join(state, {
				[action.userId] = action.newState,
			})
		else
			return state
		end
	end :: any,
})

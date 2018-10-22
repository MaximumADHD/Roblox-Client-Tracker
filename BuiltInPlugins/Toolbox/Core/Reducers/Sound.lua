local Plugin = script.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local Immutable = require(Plugin.Core.Util.Immutable)

local PlayPreviewSound = require(Plugin.Core.Actions.PlayPreviewSound)
local PausePreviewSound = require(Plugin.Core.Actions.PausePreviewSound)
local StopPreviewSound = require(Plugin.Core.Actions.StopPreviewSound)
local ResumePreviewSound = require(Plugin.Core.Actions.ResumePreviewSound)
local StopAllSounds = require(Plugin.Core.Actions.StopAllSounds)

return function(state, action)
	state = state or {
		currentSoundId = 0,
		isPlaying = false,
	}

	if action.type == PlayPreviewSound.name then
		if state.currentSoundId == action.currentSoundId and DebugFlags.shouldDebugWarnings() then
			warn("Trying to play the same sound instead of resuming it. Current SoundId : ", action.currentSoundId)
		end

		return Immutable.JoinDictionaries(state, {
			currentSoundId = action.currentSoundId,
			isPlaying = true
		})

	elseif action.type == PausePreviewSound.name  then
		if not state.isPlaying and DebugFlags.shouldDebugWarnings() then
			warn(("Trying to pause a sound that is not playing! Current SoundId : %d"):format(state.currentSoundId))
		end

		return Immutable.JoinDictionaries(state, {
			isPlaying = false
		})

	elseif action.type == StopPreviewSound.name  then
		if not state.isPlaying and DebugFlags.shouldDebugWarnings() then
			warn(("Trying to stop a sound that is not playing! Current SoundId : %d"):format(state.currentSoundId))
		end

		return Immutable.JoinDictionaries(state, {
			currentSoundId = 0,
			isPlaying = false
		})

	elseif action.type == ResumePreviewSound.name  then
		if state.isPlaying and DebugFlags.shouldDebugWarnings() then
			warn(("Trying to resume a sound which is playing! Current SoundId : %d"):format(state.currentSoundId))
		end

		return Immutable.JoinDictionaries(state, {
			isPlaying = true
		})

	elseif action.type == StopAllSounds.name then
		return Immutable.JoinDictionaries(state, {
			currentSoundId = 0,
			isPlaying = false
		})
	end

	return state
end

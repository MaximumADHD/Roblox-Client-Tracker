local Root = script:FindFirstAncestor("SceneUnderstanding")

local getAudibleVolume = require(Root.audio.getAudibleVolume)

-- This is an experimentally-determined reasonable threshold of audibility
local AUDIBLE_VOLUME_THRESHOLD = 0.01

--[=[
	Checks if the given sound can be heard by the client.

	Returns `false` if [UserGameSettings.MasterVolume] or [Sound.RollOffGain]
	are inaccessible.


	@within SceneUnderstanding
	@tag internal
]=]
local function isAudible(sound: Sound)
	local volume = getAudibleVolume(sound)
	return volume > AUDIBLE_VOLUME_THRESHOLD
end

return isAudible

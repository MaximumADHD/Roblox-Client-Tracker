local Root = script:FindFirstAncestor("SceneUnderstanding")

local UserGameSettings = UserSettings():GetService("UserGameSettings")

local hasInternalPermission = require(Root.hasInternalPermission)

--[=[
	Determines the threshold of how audible an audio is to the current client.

	Returns 0 if [UserGameSettings.MasterVolume] or [Sound.RollOffGain] are inaccessible

	@within SceneUnderstanding
	@tag internal
]=]
local function getAudibleVolume(sound: Sound): number
	if not sound.IsPlaying then
		return 0
	end

	local masterVolume = if hasInternalPermission() then UserGameSettings.MasterVolume else nil
	local rollOffGain = if hasInternalPermission() then sound.RollOffGain else nil

	-- These properties are integral to determining audibility but are not
	-- accessible in lower security levels. To ensure we don't accidentally
	-- lie about how audible something is we simply exit out
	if not (masterVolume and rollOffGain) then
		return 0
	end

	local groupVolume = if sound.SoundGroup then sound.SoundGroup.Volume else 1

	-- TODO MUS-1159: Add PlaybackLoudness as a factor for audibility. It looks
	-- to considerably increase accuracy
	return masterVolume * groupVolume * sound.Volume * rollOffGain
end

return getAudibleVolume

--!strict
-- Hook that returns if the user camera is on or not
local useTrackerMode = require(script.Parent.useTrackerMode)

local function useCameraOn(): boolean
	local trackerMode = useTrackerMode()
	return trackerMode == Enum.TrackerMode.Video or trackerMode == Enum.TrackerMode.AudioVideo
end

return useCameraOn

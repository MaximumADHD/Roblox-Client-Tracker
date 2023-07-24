--!strict
-- Hook that returns a tracker message that should be displayed
-- whenever the tracker mode is changed

local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Packages
local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local setTimeout = LuauPolyfill.setTimeout
local clearTimeout = LuauPolyfill.clearTimeout

local useTrackerMode = require(script.Parent.useTrackerMode)

local TRACKER_VANISH_DELAY_MS: number = 2000

export type TrackerMessage = {
	visible: boolean,
	text: string,
	status: string,
}

-- TODO: Add Localizations https://roblox.atlassian.net/browse/APPEXP-870
local MESSAGES = {
	MOTION_TRACKING = "Motion Tracking",
	SOUND_TRACKING = "Sound Tracking",
	ON = "ON",
	OFF = "OFF",
}

return function(): TrackerMessage
	local trackerMode = useTrackerMode()
	local trackerMessage: TrackerMessage, setTrackerMessage: (TrackerMessage) -> () =
		React.useState({ visible = false, text = MESSAGES.MOTION_TRACKING, status = MESSAGES.OFF })
	local removeMessageTimeoutID: { current: number? } = React.useRef(nil)
	local getTrackerMessage = function(): TrackerMessage
		local text = MESSAGES.MOTION_TRACKING
		local status = MESSAGES.OFF
		if trackerMode == Enum.TrackerMode.AudioVideo or trackerMode == Enum.TrackerMode.Video then
			status = MESSAGES.ON
		elseif trackerMode == Enum.TrackerMode.Audio then
			text = MESSAGES.SOUND_TRACKING
			status = MESSAGES.ON
		end
		return {
			visible = true,
			text = text,
			status = status,
		}
	end
	React.useEffect(function()
		if removeMessageTimeoutID.current then
			clearTimeout(removeMessageTimeoutID.current)
		end
		setTrackerMessage(getTrackerMessage())
		removeMessageTimeoutID.current = (
			setTimeout(function()
				setTrackerMessage({
					visible = false,
					text = trackerMessage.text,
					status = trackerMessage.status,
				})
			end, TRACKER_VANISH_DELAY_MS) :: any
		) :: number
	end, { trackerMode })
	return trackerMessage
end

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
local FaceChatUtils = require(script.Parent.Parent.Utils.FaceChatUtils)

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

local TrackerMode = Enum.TrackerMode
type TrackerMode = Enum.TrackerMode

return function(): TrackerMessage
	local lastTrackerMode: { current: TrackerMode } =
		React.useRef(FaceChatUtils.getTrackerMode()) :: { current: TrackerMode }
	local trackerMode = useTrackerMode()
	local trackerMessage: TrackerMessage, setTrackerMessage: (TrackerMessage) -> () =
		React.useState({ visible = false, text = MESSAGES.MOTION_TRACKING, status = MESSAGES.OFF })
	local removeMessageTimeoutID: { current: number? } = React.useRef(nil)
	local getTrackerMessage = function(): TrackerMessage
		-- Defaults to "Motion Off"
		local text = MESSAGES.MOTION_TRACKING
		local status = MESSAGES.OFF

		if trackerMode ~= TrackerMode.None then
			-- Something is still on.
			status = MESSAGES.ON
			if trackerMode == TrackerMode.AudioVideo or trackerMode == TrackerMode.Video then
				text = MESSAGES.MOTION_TRACKING
			else
				text = MESSAGES.SOUND_TRACKING
			end
		else
			-- Both are off
			status = MESSAGES.OFF
			if lastTrackerMode.current == TrackerMode.Audio then
				text = MESSAGES.SOUND_TRACKING
			else
				text = MESSAGES.MOTION_TRACKING
			end
		end

		-- We save the last state so we can tell which one was
		-- just turned off and show the appropriate message
		lastTrackerMode.current = trackerMode

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

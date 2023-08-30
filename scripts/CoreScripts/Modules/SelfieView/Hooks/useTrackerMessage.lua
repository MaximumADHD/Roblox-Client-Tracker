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
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local TRACKER_VANISH_DELAY_MS: number = 2000

export type TrackerMessage = {
	visible: boolean,
	text: string,
	status: string,
}

local TrackerMode = Enum.TrackerMode
type TrackerMode = Enum.TrackerMode

return function(): TrackerMessage
	local lastTrackerMode: { current: TrackerMode } =
		React.useRef(FaceChatUtils.getTrackerMode()) :: { current: TrackerMode }
	local trackerMode = useTrackerMode()

	local localized = useLocalization({
		controlMessageSound = "CoreScripts.TopBar.ControlMessageSound",
		controlMessageMotion = "CoreScripts.TopBar.ControlMessageMotion",
		controlMessageOn = "CoreScripts.TopBar.ControlMessageOn",
		controlMessageOff = "CoreScripts.TopBar.ControlMessageOff",
	})

	local trackerMessage: TrackerMessage, setTrackerMessage: (TrackerMessage) -> () =
		React.useState({ visible = false, text = localized.controlMessageMotion, status = localized.controlMessageOff })
	local removeMessageTimeoutID: { current: number? } = React.useRef(nil)
	local getTrackerMessage = function(): TrackerMessage
		-- Defaults to "Motion Off"
		local text = localized.controlMessageMotion
		local status = localized.controlMessageOff

		if trackerMode ~= TrackerMode.None then
			-- Something is still on.
			status = localized.controlMessageOn
			if trackerMode == TrackerMode.AudioVideo or trackerMode == TrackerMode.Video then
				text = localized.controlMessageMotion
			else
				text = localized.controlMessageSound
			end
		else
			-- Both are off
			status = localized.controlMessageOff
			if lastTrackerMode.current == TrackerMode.Audio then
				text = localized.controlMessageSound
			else
				text = localized.controlMessageMotion
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

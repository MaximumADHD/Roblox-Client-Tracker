local FTUX = script.Parent.Parent
local PlatformEnum = require(FTUX.Enums.PlatformEnum)
type Platform = PlatformEnum.Platform

local FTUXEventTypes = {
	[PlatformEnum.QuestVR :: Platform] = {
		FirstPersonToggleEvent = "FirstPersonToggleEvent",
		MoveToGoalEvent = "MoveToGoalEvent",
		HapticFeedbackEvent = "HapticFeedbackEvent",
		HapticFeedbackTwiceEvent = "HapticFeedbackTwiceEvent",
		SoundFeedbackEvent = "SoundFeedbackEvent",
		JumpEvent = "JumpEvent",
		PerspectiveTooltipEvent = "PerspectiveTooltipEvent",
		MovementTooltipEvent = "MovementTooltipEvent",
		LeaveGameIconHighlightEvent = "LeaveGameIconHighlightEvent",
	},
}

return FTUXEventTypes

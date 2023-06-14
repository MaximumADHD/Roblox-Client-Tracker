local FTUX = script.Parent.Parent.Parent
local FirstPersonToggleEvent = require(FTUX.Events.VR.FirstPersonToggleEvent)
local HapticFeedbackEvent = require(FTUX.Events.VR.HapticFeedbackEvent)
local HapticFeedbackTwiceEvent = require(FTUX.Events.VR.HapticFeedbackTwiceEvent)
local SoundFeedbackEvent = require(FTUX.Events.VR.SoundFeedbackEvent)
local JumpEvent = require(FTUX.Events.VR.JumpEvent)
local MoveToGoalEvent = require(FTUX.Events.VR.MoveToGoalEvent)
local PerspectiveTooltipEvent = require(FTUX.Events.VR.PerspectiveTooltipEvent)
local MovementTooltipEvent = require(FTUX.Events.VR.MovementTooltipEvent)
local LeaveGameIconHighlightEvent = require(FTUX.Events.VR.LeaveGameIconHighlightEvent)

local PlatformEnum = require(FTUX.Enums.PlatformEnum)
local FTUXEventTypes = require(FTUX.Resources.FTUXEventTypes)
local EventType = require(script.Parent.Parent.EventType)

type Event = EventType.Event
type Platform = PlatformEnum.Platform

local VREventTypes = FTUXEventTypes[PlatformEnum.QuestVR :: Platform]

local VRFTUXEventHandler = {
	Name = "VRFTUXEventHandler",
}

function VRFTUXEventHandler.StartEvent(eventName, increaseCurrentIndex: () -> ())
	if eventName == VREventTypes.FirstPersonToggleEvent then
		task.spawn(FirstPersonToggleEvent.StartEvent, increaseCurrentIndex)
	elseif eventName == VREventTypes.MoveToGoalEvent then
		task.spawn(MoveToGoalEvent.StartEvent, increaseCurrentIndex)
	elseif eventName == VREventTypes.JumpEvent then
		task.spawn(JumpEvent.StartEvent, increaseCurrentIndex)
	elseif eventName == VREventTypes.PerspectiveTooltipEvent then
		task.spawn(PerspectiveTooltipEvent.StartEvent)
	elseif eventName == VREventTypes.MovementTooltipEvent then
		task.spawn(MovementTooltipEvent.StartEvent)
	elseif eventName == VREventTypes.HapticFeedbackEvent then
		task.spawn(HapticFeedbackEvent.StartEvent)
	elseif eventName == VREventTypes.SoundFeedbackEvent then
		task.spawn(SoundFeedbackEvent.StartEvent)
	elseif eventName == VREventTypes.HapticFeedbackTwiceEvent then
		task.spawn(HapticFeedbackTwiceEvent.StartEvent)
	elseif eventName == VREventTypes.LeaveGameIconHighlightEvent then
		task.spawn(LeaveGameIconHighlightEvent.StartEvent)
	else
		warn("Unmapped VRFTUX event type: " .. tostring(eventName))
	end
end

function VRFTUXEventHandler.StopEvent(eventName)
	if eventName == VREventTypes.FirstPersonToggleEvent then
		task.spawn(FirstPersonToggleEvent.StopEvent)
	elseif eventName == VREventTypes.MoveToGoalEvent then
		task.spawn(MoveToGoalEvent.StopEvent)
	elseif eventName == VREventTypes.JumpEvent then
		task.spawn(JumpEvent.StopEvent)
	elseif eventName == VREventTypes.PerspectiveTooltipEvent then
		task.spawn(PerspectiveTooltipEvent.StopEvent)
	elseif eventName == VREventTypes.MovementTooltipEvent then
		task.spawn(MovementTooltipEvent.StopEvent)
	elseif eventName == VREventTypes.LeaveGameIconHighlightEvent then
		task.spawn(LeaveGameIconHighlightEvent.StopEvent)
	elseif eventName == VREventTypes.HapticFeedbackTwiceEvent then
		-- No Stop Event
	elseif eventName == VREventTypes.HapticFeedbackEvent then
		-- No Stop Event
	elseif eventName == VREventTypes.SoundFeedbackEvent then
		-- No Stop Event
	else
		warn("Unmapped VRFTUX event type: " .. tostring(eventName))
	end
end

return VRFTUXEventHandler :: Event

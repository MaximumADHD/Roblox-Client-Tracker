local FTUX = script.Parent.Parent
local PlatformEnum = require(FTUX.Enums.PlatformEnum)
local FTUXEventTypes = require(FTUX.Resources.FTUXEventTypes)

type Platform = PlatformEnum.Platform

local VREventTypes = FTUXEventTypes[PlatformEnum.QuestVR :: Platform]

--[[
	Events Table Example
{
	[Quest Platform] = {
		{
			VREventTypes.EventToBeStartedForSlide1
		},
		{
			VREventTypes.EventToBeStartedForSlide2
			VREventTypes.EventToBeStartedForSlide2
		},
		{
			VREventTypes.EventToBeStartedForSlide3
		}
	},
	[Console Platform] = {
		{
			VREventTypes.EventToBeStartedForSlide1
			VREventTypes.EventToBeStartedForSlide1
		},
		{
			VREventTypes.EventToBeStartedForSlide2
		},
		{
			VREventTypes.EventToBeStartedForSlide3
		}
	}
}
]]

local Events = {
	[PlatformEnum.QuestVR :: Platform] = {
		{
			VREventTypes.PerspectiveTooltipEvent,
			VREventTypes.FirstPersonToggleEvent,
			VREventTypes.HapticFeedbackEvent,
		},
		{
			VREventTypes.MovementTooltipEvent,
			VREventTypes.MoveToGoalEvent,
			VREventTypes.SoundFeedbackEvent,
			VREventTypes.HapticFeedbackTwiceEvent,
		},
		{
			VREventTypes.HapticFeedbackEvent,
			VREventTypes.SoundFeedbackEvent,
		},
		{
			VREventTypes.SoundFeedbackEvent,
		},
	},
}

return Events

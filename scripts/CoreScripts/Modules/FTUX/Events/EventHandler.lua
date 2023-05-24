local FTUX = script.Parent.Parent
local PlatformEnum = require(FTUX.Enums.PlatformEnum)
local VRFTUXEventHandler = require(FTUX.Events.VR.VRFTUXEventHandler)
local Events = require(FTUX.Events.Events)

type Platform = PlatformEnum.Platform

local EventHandlers = {
	[PlatformEnum.QuestVR :: Platform] = VRFTUXEventHandler,
}

local EventHandler = {}

function EventHandler.StartEvents(platform: Platform, currentIndex: number, increaseCurrentIndex: () -> ())
	local platformEventHandler = EventHandlers[platform :: Platform]
	-- Start new events
	local events = Events[platform :: Platform][currentIndex]
	if events then
		for k, event in pairs(events) do
			platformEventHandler.StartEvent(event, increaseCurrentIndex)
		end
	end
end

function EventHandler.StopEvents(platform: Platform, currentIndex: number)
	local platformEventHandler = EventHandlers[platform :: Platform]
	-- Stop old events if skipped
	local previousEvents = Events[platform :: Platform][currentIndex]
	if previousEvents then
		for k, event in pairs(previousEvents) do
			platformEventHandler.StopEvent(event)
		end
	end
end

return EventHandler

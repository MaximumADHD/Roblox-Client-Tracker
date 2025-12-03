--!strict
export type EventPhase = "Bubble" | "Capture" | "Target"

export type Event<T> = {
	cancelled: boolean,
	phase: EventPhase,
	currentInstance: Instance,
	targetInstance: Instance,
	eventName: string,
	eventData: T,
	synthetic: boolean,
	cancel: (self: Event<T>) -> (),
}

local Event = {}
Event.__index = Event

function Event.new<T>(
	targetInstance: Instance,
	currentInstance: Instance,
	eventName: string,
	phase: EventPhase,
	synthetic: boolean?,
	eventData: T
): Event<T>
	local self = {
		cancelled = false,
		phase = phase,
		currentInstance = currentInstance,
		targetInstance = targetInstance,
		eventName = eventName,
		synthetic = synthetic or false,
		eventData = if type(eventData) == "table" and not table.isfrozen(eventData)
			then table.freeze(eventData)
			else eventData,
	}
	setmetatable(self, Event)
	return (self :: any) :: Event<T>
end

function Event:cancel()
	self.cancelled = true
end

return Event

--!strict
-- Event bus module for firing and subscribing to named events using BindableEvents.

type EventBusClass = {
	__index: EventBusClass,
	new: () -> EventBus,
	-- Publish an event by name
	publish: (self: EventBus, string, ...any) -> (),
	-- Subscribe to an event by name
	subscribe: (self: EventBus, string) -> RBXScriptSignal,
}

export type EventBus = typeof(setmetatable({} :: {
	_events: { [string]: BindableEvent },
}, {} :: EventBusClass))

local EventBus: EventBusClass = {} :: EventBusClass
EventBus.__index = EventBus

function EventBus.new()
	local self = setmetatable({}, EventBus)
	self._events = {}
	return self
end

function EventBus:_getOrCreate(name: string): BindableEvent
	if not self._events[name] then
		local bindable = Instance.new("BindableEvent")
		bindable.Name = name
		self._events[name] = bindable
	end
	return self._events[name]
end

function EventBus:publish(name: string, ...: any)
	local bindable = self:_getOrCreate(name)
	bindable:Fire(...)
end

function EventBus:subscribe(name: string): RBXScriptSignal
	local bindable = self:_getOrCreate(name)
	return bindable.Event
end

return EventBus

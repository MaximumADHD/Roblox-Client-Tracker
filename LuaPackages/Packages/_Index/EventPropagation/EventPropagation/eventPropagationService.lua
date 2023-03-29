--!strict
local Packages = script.Parent.Parent
local getAncestors = require(Packages.Utils).getAncestors

local eventPropagationEvent = require(script.Parent.eventPropagationEvent)
local Event = eventPropagationEvent
type EventPhase = eventPropagationEvent.EventPhase
type Event<T> = eventPropagationEvent.Event<T>

local DEBUG = _G.__DEBUG_EVENT_PROPAGATION__

export type EventHandler<T> = (e: Event<T>) -> ()

export type EventHandlerMap<T> = {
	[string]: {
		handler: EventHandler<T>,
		phase: EventPhase?,
	},
}

export type BoundEventHandlers = {
	[string]: boolean,
}

type EventHandlers<T> = {
	[EventPhase]: EventHandler<T>,
}

type EventHandlersByName<T> = {
	[string]: EventHandlers<T>,
}

type EventHandlerRegistry<T> = {
	[Instance]: EventHandlersByName<T>,
}

export type EventPropagationService<T> = {
	registerEventHandler: (
		self: EventPropagationService<T>,
		instance: Instance,
		eventName: string,
		eventHandler: EventHandler<T>,
		phase: EventPhase?
	) -> (),
	registerEventHandlers: (self: EventPropagationService<T>, instance: Instance, map: EventHandlerMap<T>) -> (),
	deregisterEventHandlers: (self: EventPropagationService<T>, instance: Instance, map: EventHandlerMap<T>) -> (),
	deregisterEventHandler: (
		self: EventPropagationService<T>,
		instance: Instance,
		eventName: string,
		handler: EventHandler<T>,
		phase: EventPhase?
	) -> (),
	getRegisteredEventHandlers: (self: EventPropagationService<T>, instance: Instance) -> BoundEventHandlers?,
	propagateEvent: (
		self: EventPropagationService<T>,
		instance: Instance,
		eventName: string,
		eventData: T,
		silent: boolean
	) -> (),
}

type EventPropagationServicePrivate = {
	eventHandlerRegistry: EventHandlerRegistry<any>,
	registerEventHandler: (
		self: EventPropagationServicePrivate,
		instance: Instance,
		eventName: string,
		eventHandler: EventHandler<any>,
		phase: EventPhase?
	) -> (),
	registerEventHandlers: (
		self: EventPropagationServicePrivate,
		instance: Instance,
		map: EventHandlerMap<any>
	) -> (),
	deregisterEventHandlers: (
		self: EventPropagationServicePrivate,
		instance: Instance,
		map: EventHandlerMap<any>
	) -> (),
	deregisterEventHandler: (
		self: EventPropagationServicePrivate,
		instance: Instance,
		eventName: string,
		handler: EventHandler<any>,
		phase: EventPhase?
	) -> (),
	getRegisteredEventHandlers: (self: EventPropagationServicePrivate, instance: Instance) -> BoundEventHandlers?,
	propagateEvent: (
		self: EventPropagationServicePrivate,
		instance: Instance,
		eventName: string,
		eventData: any,
		silent: boolean
	) -> (),
}

type EventPropagationServiceStatics = {
	new: <T>() -> EventPropagationService<T>,
}

local DEFAULT_PHASE: EventPhase = "Bubble"

local function getEventsFromRegistry<T>(registry: EventHandlerRegistry<T>, instance: Instance): EventHandlersByName<T>?
	return registry[instance]
end

local function getEventPhasesFromRegistry<T>(
	registry: EventHandlerRegistry<T>,
	instance: Instance,
	eventName: string
): EventHandlers<T>?
	local events = getEventsFromRegistry(registry, instance)
	return if events then events[eventName] else nil
end

local function getEventHandler<T>(
	registry: EventHandlerRegistry<T>,
	instance: Instance,
	eventName: string,
	phase: EventPhase
): EventHandler<T>?
	local eventPhases = getEventPhasesFromRegistry(registry, instance, eventName)
	return if eventPhases ~= nil then eventPhases[phase] else nil
end

local EventPropagationService = {} :: EventPropagationServicePrivate & EventPropagationServiceStatics;
(EventPropagationService :: any).__index = EventPropagationService

function EventPropagationService:registerEventHandler(
	instance: Instance,
	eventName: string,
	eventHandler: EventHandler<any>,
	phase: EventPhase?
)
	if DEBUG then
		print("+++ register handler", eventName, tostring(instance), phase or DEFAULT_PHASE)
	end

	local resolvedPhase: EventPhase = phase or DEFAULT_PHASE
	self.eventHandlerRegistry[instance] = self.eventHandlerRegistry[instance] or {}
	self.eventHandlerRegistry[instance][eventName] = self.eventHandlerRegistry[instance][eventName] or {}
	self.eventHandlerRegistry[instance][eventName][resolvedPhase] = eventHandler
end

function EventPropagationService:registerEventHandlers(instance: Instance, map: EventHandlerMap<any>)
	if not self.eventHandlerRegistry[instance] then
		self.eventHandlerRegistry[instance] = {}
	end
	for eventName, v in map do
		self:registerEventHandler(instance, eventName, v.handler, v.phase)
	end
end

function EventPropagationService:deregisterEventHandlers(instance: Instance, map: EventHandlerMap<any>)
	if not self.eventHandlerRegistry[instance] then
		return
	end
	for eventName, v in map do
		self:deregisterEventHandler(instance, eventName, v.handler, v.phase)
	end
end

function EventPropagationService:deregisterEventHandler(
	instance: Instance,
	eventName: string,
	handler: EventHandler<any>,
	phase: EventPhase?
)
	if DEBUG then
		print("--- deregister handler", eventName, tostring(instance), phase or DEFAULT_PHASE)
	end
	local resolvedPhase: EventPhase = phase or DEFAULT_PHASE
	local eventPhases = getEventPhasesFromRegistry(self.eventHandlerRegistry, instance, eventName)
	if eventPhases and eventPhases[resolvedPhase] == handler then
		eventPhases[resolvedPhase] = nil
	end
end

function EventPropagationService:getRegisteredEventHandlers(instance: Instance): BoundEventHandlers?
	local bound = getEventsFromRegistry(self.eventHandlerRegistry, instance)
	if bound then
		local registeredHandlers = {}
		for name, events in bound do
			-- Only include members with any mapped values
			registeredHandlers[name] = next(events) ~= nil
		end

		return registeredHandlers
	end
	return nil
end

function EventPropagationService:propagateEvent(instance: Instance, eventName: string, eventData: any, silent: boolean)
	local function runEventHandler(currentAncestor: Instance, phase: EventPhase)
		local eventHandler = getEventHandler(self.eventHandlerRegistry, currentAncestor, eventName, phase)
		if eventHandler then
			local event = Event.new(instance, currentAncestor, eventName, phase, eventData)
			eventHandler(event)
			return event.cancelled
		end
		return false
	end
	local cancelled = false
	local ancestors: { Instance } = if silent then { instance } else getAncestors(instance)
	if DEBUG then
		print(">>> capture event", eventName, "for", tostring(instance))
	end
	for i = #ancestors, 1, -1 do
		local ancestor = ancestors[i]
		cancelled = runEventHandler(ancestor, "Capture")
		if cancelled then
			return
		end
	end
	cancelled = runEventHandler(instance, "Target")
	if cancelled then
		return
	end
	if DEBUG then
		print("<<< bubble event", eventName, "from", tostring(instance))
	end
	for i = 1, #ancestors do
		local ancestor = ancestors[i]
		cancelled = runEventHandler(ancestor, "Bubble")
		if cancelled then
			return
		end
	end
end

function EventPropagationService.new<T>(): EventPropagationService<T>
	local eventHandlerRegistry = setmetatable({}, {
		__mode = "k",
	})

	local self = {
		eventHandlerRegistry = eventHandlerRegistry,
	}
	setmetatable(self, EventPropagationService)
	return self :: any
end

return EventPropagationService

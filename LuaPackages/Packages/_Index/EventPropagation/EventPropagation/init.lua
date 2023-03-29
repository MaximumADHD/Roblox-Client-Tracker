--!strict
local Event = require(script.eventPropagationEvent)
local EventPropagationService = require(script.eventPropagationService)

export type EventPhase = Event.EventPhase
export type Event<T> = Event.Event<T>

export type EventHandler<T> = EventPropagationService.EventHandler<T>
export type EventHandlerMap<T> = EventPropagationService.EventHandlerMap<T>
export type EventPropagationService<T> = EventPropagationService.EventPropagationService<T>

return EventPropagationService

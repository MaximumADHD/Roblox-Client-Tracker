# EventPropagationService

The EventPropagationService is currently an implementation detail of the FocusNavigationService. It is primarily responsible for functionality related to propagating events registered and triggered by the consumer.

## Types

### EventPhase
```lua
type EventPhase = "Bubble" | "Capture" | "Target"
```
The EventPhase represents the phase of the event propagation cycle a given EventHandler should be registered to be called in.

***Capture*** - The initial phase of event propagation. EventHandlers registered in this phase are called in order from the furthest ancestor of the target to the target itself.

***Target*** - The second phase of event propagation. EventHandlers registered in this phase are called after the capture phase, and are only called when registered to the instance that the event is propagated from.

***Bubble*** - This is the default phase that EventHandlers are registered to. EventHandlers registered in this phase are called in order from the target instance to the targets furthest ancestor.


### Event
```lua
type Event<T> = {
    cancelled: boolean,
    phase: EventPhase,
    currentInstance: Instance,
    targetInstance: Instance,
    eventName: string,
    eventData: T,
    cancel: () -> ()
}
```
`Event`s are passed to `EventHandler`s with the appropriate information when the `EventHandler` is called during event propagation. Note that each `EventHandler` is called with it's own `Event`, mutations to the Event will not be picked up by subsequent handlers.

Events may have extra data attached to them when they're propagated, which can be read via the `eventData` field.

### EventHandler
```lua
type EventHandler<T> = (e: Event<T>) -> ()
```
`EventHandler`s are simple functions that take an event as an argument, and return nothing.

### EventHandlerMap
```lua
type EventHandlerMap<T> = {
	[string]: {
		handler: EventHandler<T>,
		phase: EventPhase?,
	},
}
```
An `EventHandlerMap` gets used to register an `EventHandler` to an event in a given phase (or `"Bubble"` if omitted). The keys of the map are the names of the events that will be used when `EventPropagationService:propagateEvent` is called.

## API

### new

```lua
EventPropagationService.new()
```
Create a new `EventPropagationService`. Intended only to be called once.

### registerEventHandler

```lua
EventPropagationService:registerEventHandler(
    instance: Instance,
    eventName: string,
    eventHandler: EventHandler,
    phase: EventPhase?
)
```
Register an individual `EventHandler`. This requires a target `Instance` that the handler will be associated with, the event handler itself, and the name of the event. Event names are equivalent to those provided in the `propagateEvent` method and will be meaningful within the context of the application. An `EventPhase` optionally can be passed in to indicate which event propagation phase the handler should be triggered in, this defaults to `"Bubble"`.

### registerEventHandlers

```lua
EventPropagationService:registerEventHandlers(
    instance: Instance,
    map: EventHandlerMap
)
```
Register multiple `EventHandler`s from an instance using an `EventHandlerMap`.

### deRegisterEventHandler
```lua
EventPropagationService:deRegisterEventHandler(
    instance: Instance,
    eventName: string,
    eventHandler: EventHandler,
    phase: EventPhase?
)
```
De-register a single `EventHandler` from an `Instance` based on a phase. If phase is not passed in it defaults to `"Bubble"`.

### deRegisterEventHandlers
```lua
EventPropagationService:deRegisterEventHandlers(
    instance: Instance,
    map: EventHandlerMap
)
```
De-register multiple `EventHandler`s from an instance using an `EventHandlerMap`.

### propagateEvent
```lua
EventPropagationService:propagateEvent(
    instance: Instance,
    eventName: string,
    silent: boolean
)
```
Propagate an event on a given `Instance` by name.

Behind the scenes, it creates a list of ancestors with relevant registered eventHandlers. The list is then processed as follows:

1. Looping from furthest ancestor to the target, call all eventHandlers that are registered for the Capture phase
2. Call the event handler for the Target phase on the target `Instance` provided
3. Looping from the target to the furthest ancestor, call all of the eventHandlers registered for the Bubble phase.

In essence, the phase order is Capture → Target → Bubble. It should be noted that the Target phase is special: the only handler that runs during the Target phase is the handler on the currently focused element. These phases and their meaning are based on those from the Web API for event propagation.

**Note**: Events can optionally be propagated in `silent` mode, which will only call `EventHandler`s on the target instance. This mode is useful for migrating from a non-event-propagation system to an event propagation system.

## Usage
```lua
local eventPropagationService = EventPropagationService.new()
local exampleInstance = Instance.new("frame")
function eventHandler(e: Event)
    print(e.phase)
end
eventPropagationService:registerEventHandler(exampleInstance, "exampleEvent", eventHandler)
eventPropagationService:propagateEvent(exampleInstance, "exampleEvent", nil, false)
-- prints "Bubble"
```
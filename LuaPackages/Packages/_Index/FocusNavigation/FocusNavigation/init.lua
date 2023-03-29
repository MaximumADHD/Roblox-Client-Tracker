local EventPropagation = require(script.Parent.EventPropagation)

local FocusNavigationService = require(script.FocusNavigationService)
local EngineInterface = require(script.EngineInterface)
local types = require(script.types)

type EventData = types.EventData

-- Forwarded types from event propagation service
export type EventPhase = EventPropagation.EventPhase

-- Forwarded types from event propagation service in which the
-- FocusNavigationService uses specific generics
export type Event = EventPropagation.Event<EventData>
export type EventHandler = EventPropagation.EventHandler<EventData>
export type EventHandlerMap = EventPropagation.EventHandlerMap<EventData>

-- FocusNavigationService types
export type EngineInterface = types.EngineInterface
export type InputEvent = types.InputEvent
export type EventMap = types.EventMap
export type FocusNavigationService = FocusNavigationService.FocusNavigationService

return {
	FocusNavigationService = FocusNavigationService,
	EngineInterface = {
		CoreGui = EngineInterface.CoreGui,
		PlayerGui = EngineInterface.PlayerGui,
	},
}

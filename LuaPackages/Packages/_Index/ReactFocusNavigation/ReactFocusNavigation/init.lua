--!strict
local Packages = script.Parent
local FocusNavigation = require(Packages.FocusNavigation)

local FocusNavigationContext = require(script.FocusNavigationContext)
local useActiveEventMap = require(script.useActiveEventMap)
local useFocusedGuiObject = require(script.useFocusedGuiObject)
local useLastInputMethod = require(script.useLastInputMethod)
local useLastInputMode = require(script.useLastInputMode)
local useFocusGuiObject = require(script.useFocusGuiObject)
local useEventMap = require(script.useEventMap)
local useEventHandler = require(script.useEventHandler)
local useEventHandlerMap = require(script.useEventHandlerMap)
local useContainerFocusBehavior = require(script.useContainerFocusBehavior)
local FocusBehaviorHooks = require(script.FocusBehaviorHooks)

-- Forwarded types from FocusNavigation and EventPropagation
export type EventPhase = FocusNavigation.EventPhase
export type Event = FocusNavigation.Event
export type EventHandler = FocusNavigation.EventHandler
export type EventHandlerMap = FocusNavigation.EventHandlerMap
export type EngineInterface = FocusNavigation.EngineInterface
export type InputEvent = FocusNavigation.InputEvent
export type EventMap = FocusNavigation.EventMap
export type FocusNavigationService = FocusNavigation.FocusNavigationService

-- Types used for hooks
export type InputMethod = useLastInputMethod.InputMethod
export type InputMode = useLastInputMode.InputMode

return {
	-- Re-export FocusNavigationService logic
	FocusNavigationService = FocusNavigation.FocusNavigationService,
	EngineInterface = FocusNavigation.EngineInterface,

	-- Context
	FocusNavigationContext = FocusNavigationContext,

	-- Observable properties
	useActiveEventMap = useActiveEventMap,
	useFocusedGuiObject = useFocusedGuiObject,
	useLastInputMethod = useLastInputMethod,
	useLastInputMode = useLastInputMode,

	-- Focus control
	useFocusGuiObject = useFocusGuiObject,

	-- Event mapping and binding
	useEventMap = useEventMap,
	useEventHandler = useEventHandler,
	useEventHandlerMap = useEventHandlerMap,

	-- Container focus behavior
	useContainerFocusBehavior = useContainerFocusBehavior,

	useDefaultFocusBehavior = FocusBehaviorHooks.useDefaultFocusBehavior,
	useMostRecentFocusBehavior = FocusBehaviorHooks.useMostRecentFocusBehavior,
	useMostRecentOrDefaultFocusBehavior = FocusBehaviorHooks.useMostRecentOrDefaultFocusBehavior,
}

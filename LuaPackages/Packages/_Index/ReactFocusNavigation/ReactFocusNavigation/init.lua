--!strict
local Packages = script.Parent
local FocusNavigation = require(Packages.FocusNavigation)

local FocusNavigationContext = require(script.FocusNavigationContext)
local useActiveEventMap = require(script.useActiveEventMap)
local useFocusGuiObject = require(script.useFocusGuiObject)
local useFocusedGuiObject = require(script.useFocusedGuiObject)
local useEventMap = require(script.useEventMap)
local useEventHandler = require(script.useEventHandler)
local useEventHandlerMap = require(script.useEventHandlerMap)

return {
	-- Re-export FocusNavigationService logic
	FocusNavigationService = FocusNavigation.FocusNavigationService,
	EngineInterface = FocusNavigation.EngineInterface,

	-- Context
	FocusNavigationContext = FocusNavigationContext,

	-- Observable properties
	useActiveEventMap = useActiveEventMap,
	useFocusedGuiObject = useFocusedGuiObject,

	-- Focus control
	useFocusGuiObject = useFocusGuiObject,

	-- Event mapping and binding
	useEventMap = useEventMap,
	useEventHandler = useEventHandler,
	useEventHandlerMap = useEventHandlerMap,
}

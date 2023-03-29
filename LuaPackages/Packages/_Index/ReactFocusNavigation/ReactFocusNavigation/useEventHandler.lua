--!strict
local Packages = script.Parent.Parent
local React = require(Packages.React)
local FocusNavigation = require(Packages.FocusNavigation)

local FocusNavigationContext = require(script.Parent.FocusNavigationContext)
local useComposedRef = require(script.Parent.useComposedRef)
local useEventLifecycleRef = require(script.Parent.useEventLifecycleRef)

type Ref = React.Ref<Instance>
type Handler = FocusNavigation.EventHandler
type Phase = FocusNavigation.EventPhase

local function useEventHandler(eventName: string, handler: Handler, phase: Phase?, innerRef: Ref?): Ref
	local focusNavigationService = React.useContext(FocusNavigationContext)

	local bindCallback = React.useCallback(function(instance: Instance)
		if focusNavigationService then
			assert(instance:IsA("GuiObject"), "Event handlers can only be applied to GuiObjects")
			focusNavigationService:registerEventHandler(instance, eventName, handler, phase)
		end
	end, { focusNavigationService, eventName, handler, phase } :: { any })

	local unbindCallback = React.useCallback(function(instance: Instance)
		if focusNavigationService then
			assert(instance:IsA("GuiObject"), "Event handlers can only be applied to GuiObjects")
			focusNavigationService:deregisterEventHandler(instance, eventName, handler, phase)
		end
	end, { focusNavigationService, eventName, handler, phase } :: { any })

	local lifecycleRef = useEventLifecycleRef(bindCallback, unbindCallback)
	return useComposedRef(lifecycleRef, innerRef)
end

return useEventHandler

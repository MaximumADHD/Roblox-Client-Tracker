--!strict
local Packages = script.Parent.Parent
local React = require(Packages.React)
local FocusNavigation = require(Packages.FocusNavigation)

local FocusNavigationContext = require(script.Parent.FocusNavigationContext)
local useComposedRef = require(script.Parent.useComposedRef)
local useEventLifecycleRef = require(script.Parent.useEventLifecycleRef)

type Ref = React.Ref<Instance>

local function useEventHandlerMap(handlerMap: FocusNavigation.EventHandlerMap, innerRef: Ref?): Ref
	local focusNavigationService = React.useContext(FocusNavigationContext)

	local bindCallback = React.useCallback(function(instance: Instance)
		if focusNavigationService then
			assert(instance:IsA("GuiObject"), "Event handler maps can only be applied to GuiObjects")
			focusNavigationService:registerEventHandlers(instance, handlerMap)
		end
	end, { focusNavigationService, handlerMap } :: { any })

	local unbindCallback = React.useCallback(function(instance: Instance)
		if focusNavigationService then
			assert(instance:IsA("GuiObject"), "Event handler maps can only be applied to GuiObjects")
			focusNavigationService:deregisterEventHandlers(instance, handlerMap)
		end
	end, { focusNavigationService, handlerMap } :: { any })

	local lifecycleRef = useEventLifecycleRef(bindCallback, unbindCallback)
	return useComposedRef(lifecycleRef, innerRef)
end

return useEventHandlerMap

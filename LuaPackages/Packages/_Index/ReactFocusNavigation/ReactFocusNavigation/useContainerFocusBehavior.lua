--!strict
local Packages = script.Parent.Parent
local React = require(Packages.React)
local FocusNavigation = require(Packages.FocusNavigation)

local FocusNavigationContext = require(script.Parent.FocusNavigationContext)
local useComposedRef = require(script.Parent.useComposedRef)
local useEventLifecycleRef = require(script.Parent.useEventLifecycleRef)

type Ref = React.Ref<Instance>
type ContainerFocusBehavior = FocusNavigation.ContainerFocusBehavior

local function useContainerFocusBehavior(behavior: ContainerFocusBehavior, innerRef: Ref?): Ref
	local focusNavigationService = React.useContext(FocusNavigationContext)

	local bindCallback = React.useCallback(function(instance: Instance)
		if focusNavigationService then
			assert(instance:IsA("GuiObject"), "FocusBehaviors can only be applied to GuiObjects")
			focusNavigationService:registerFocusBehavior(instance, behavior)
		end
	end, { focusNavigationService, behavior } :: { any })

	local unbindCallback = React.useCallback(function(instance: Instance)
		if focusNavigationService then
			assert(instance:IsA("GuiObject"), "FocusBehaviors can only be applied to GuiObjects")
			focusNavigationService:deregisterFocusBehavior(instance, behavior)
		end
	end, { focusNavigationService, behavior } :: { any })

	local lifecycleRef = useEventLifecycleRef(bindCallback, unbindCallback)
	return useComposedRef(lifecycleRef, innerRef)
end

return useContainerFocusBehavior

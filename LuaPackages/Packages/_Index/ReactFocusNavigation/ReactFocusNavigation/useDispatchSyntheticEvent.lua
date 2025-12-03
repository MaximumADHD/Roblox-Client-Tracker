--!strict
local Packages = script.Parent.Parent
local React = require(Packages.React)
local FocusNavigation = require(Packages.FocusNavigation)

local FocusNavigationContext = require(script.Parent.FocusNavigationContext)

type SyntheticEventData = FocusNavigation.SyntheticEventData

export type SyntheticEventDispatcher = (
	eventName: string,
	target: GuiObject,
	customEventData: SyntheticEventData?
) -> boolean

local function useDispatchSyntheticEvent(): SyntheticEventDispatcher
	local focusNavigationService = React.useContext(FocusNavigationContext)

	local dispatcher = React.useCallback(
		function(eventName: string, target: GuiObject, customEventData: SyntheticEventData?): boolean
			if not focusNavigationService then
				if _G.__DEV__ then
					warn("useDispatchSyntheticEvent: No FocusNavigationService available in context")
				end
				return false
			end

			assert(target:IsA("GuiObject"), "Synthetic events must be dispatched on GuiObjects")

			return focusNavigationService:dispatchSyntheticEvent(eventName, target, customEventData)
		end,
		{ focusNavigationService }
	)

	return dispatcher
end

return useDispatchSyntheticEvent

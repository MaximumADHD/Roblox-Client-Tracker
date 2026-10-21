--!strict
local Packages = script.Parent.Parent
local React = require(Packages.React)
local FocusNavigation = require(Packages.FocusNavigation)

local FocusNavigationContext = require(script.Parent.FocusNavigationContext)

-- FIXME luau: greedy type inference means that we need to define the return
-- type for our effect or else it assumes it'll be non-nil
type EffectReturn = nil | () -> ()

local function useEventDispatched(callback: (FocusNavigation.DispatchedEvent) -> ())
	local focusNavigationService = React.useContext(FocusNavigationContext)
	local callbackRef = React.useRef(callback)
	callbackRef.current = callback

	React.useEffect(function(): EffectReturn
		if focusNavigationService then
			local subscription = focusNavigationService.eventDispatched:subscribe(function(dispatchedEvent)
				if dispatchedEvent then
					callbackRef.current(dispatchedEvent)
				end
			end)

			return function()
				subscription:unsubscribe()
			end
		end

		return nil
	end, { focusNavigationService })
end

return useEventDispatched

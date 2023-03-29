--!strict
local Packages = script.Parent.Parent
local React = require(Packages.React)
local FocusNavigation = require(Packages.FocusNavigation)

local FocusNavigationContext = require(script.Parent.FocusNavigationContext)

type Ref = React.Ref<Instance>
-- FIXME luau: greedy type inference means that we need to define the return
-- type for our effect or else it assumes it'll be non-nil
type EffectReturn = nil | () -> ()

local function useActiveEventMap(): FocusNavigation.EventMap
	local focusNavigationService = React.useContext(FocusNavigationContext)

	local initialValue = if focusNavigationService then focusNavigationService.activeEventMap:getValue() else {}
	local activeEventMap, setActiveEventMap = React.useState(initialValue)
	React.useEffect(function(): EffectReturn
		-- If the effect was rerun, we need to update with the read value
		if activeEventMap ~= initialValue then
			setActiveEventMap(initialValue)
		end

		if focusNavigationService then
			local subscription = focusNavigationService.activeEventMap:subscribe(setActiveEventMap)

			return function()
				subscription:unsubscribe()
			end
		end

		return nil
	end, { focusNavigationService })

	return activeEventMap
end

return useActiveEventMap

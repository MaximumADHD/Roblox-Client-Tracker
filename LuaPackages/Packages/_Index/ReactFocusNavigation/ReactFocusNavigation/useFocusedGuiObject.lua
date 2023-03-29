--!strict
local Packages = script.Parent.Parent
local React = require(Packages.React)

local FocusNavigationContext = require(script.Parent.FocusNavigationContext)

-- FIXME luau: greedy type inference means that we need to define the return
-- type for our effect or else it assumes it'll be non-nil
type EffectReturn = nil | () -> ()

local function useCurrentFocus()
	local focusNavigationService = React.useContext(FocusNavigationContext)

	local initialValue = if focusNavigationService then focusNavigationService.focusedGuiObject:getValue() else nil
	local focusedGuiObject, setFocusedGuiObject = React.useState(initialValue)
	React.useEffect(function(): EffectReturn
		-- If the effect was rerun, we need to update with the read value
		if focusedGuiObject ~= initialValue then
			setFocusedGuiObject(initialValue)
		end

		if focusNavigationService then
			local subscription = focusNavigationService.focusedGuiObject:subscribe(setFocusedGuiObject)

			return function()
				subscription:unsubscribe()
			end
		end

		return nil
	end, { focusNavigationService })

	return focusedGuiObject
end

return useCurrentFocus

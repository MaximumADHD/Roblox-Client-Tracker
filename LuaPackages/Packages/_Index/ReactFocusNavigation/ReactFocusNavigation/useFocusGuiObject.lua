--!strict
local Packages = script.Parent.Parent
local React = require(Packages.React)
local Utils = require(Packages.FocusNavigationUtils)

local warn = Utils.mockableWarn

local FocusNavigationContext = require(script.Parent.FocusNavigationContext)

local function useFocusGuiObject()
	local focusNavigationService = React.useContext(FocusNavigationContext)

	return React.useCallback(function(target: GuiObject?, silent: boolean?)
		if focusNavigationService then
			focusNavigationService:focusGuiObject(target, not not silent)
		else
			if _G.__DEV__ then
				warn(
					"Could not capture focus with no FocusNavigationService.\n\n"
						.. "Introduce a ReactFocusNavigation.FocusNavigationProvider "
						.. "above this component in the tree and provide it with a "
						.. "value returned from FocusNavigationService.new(...)"
				)
			end
		end
	end, { focusNavigationService })
end

return useFocusGuiObject

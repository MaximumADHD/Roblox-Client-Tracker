local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local FocusNavigationContext = ReactFocusNavigation.FocusNavigationContext

local function useFocusNavigationActive()
	local focusNavigation = React.useContext(FocusNavigationContext)
	local hasFocus, setHasFocus = React.useState(false)
	React.useEffect(function()
		local subscription = nil
		if focusNavigation then
			subscription = focusNavigation.focusedGuiObject:subscribe(function(guiObject: GuiObject?)
				setHasFocus(guiObject ~= nil)
			end)
		end
		return function()
			if subscription then
				subscription:unsubscribe()
			end
		end
	end, { focusNavigation })
	return hasFocus
end

return useFocusNavigationActive

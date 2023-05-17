local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local useLastInputMethod = ReactFocusNavigation.useLastInputMethod
local useRegistryEntry = require(TenFootUiShell.Hooks.FocusNavigableSurfaceRegistry).useRegistryEntry
local FocusNavigableSurfaceIdentifierEnum = require(TenFootUiShell.Types.FocusNavigableSurfaceIdentifierEnum)
local useFocusNavigationActive = require(script.Parent.useFocusNavigationActive)
local useAutoFocus = require(script.Parent.useAutoFocus)

local FOCUS_ATTEMPT_DEBOUNCE_TIME = 0.1

local function useGlobalFocusHandler()
	local lastInputMethod = useLastInputMethod()
	local lastInputIsGamepad = lastInputMethod == "Gamepad"
	local focusNavigationActive = useFocusNavigationActive()
	local globalNavBar = useRegistryEntry(FocusNavigableSurfaceIdentifierEnum.NavBar)
	local routerView = useRegistryEntry(FocusNavigableSurfaceIdentifierEnum.RouterView)
	--[[
		When we try to focus a router view we have no guarantee that something
		within it will actually be focusable - It may be making a request for
		data, something may have gone wrong, some things may be animating in,
		we won't know.
		
		Additionally, the place that the user has triggered the
		navigation action from (such as on a tile) may no longer be present on
		the screen, so the selection ring will no longer be available.

		The GlobalNav may no longer exist depending on the specific page.

		The user needs to have focus if there is something focusable on the screen.

		If it doesn't focus within a short amount of time then we need to reselect
		on the GlobalNav.

		If the GlobalNav isn't currently visible we need to try to focus the router
		view.
	]]
	local focusTargets = React.useMemo(function()
		local targets: { GuiObject } = {}
		if routerView then
			table.insert(targets, routerView)
		end
		if globalNavBar then
			table.insert(targets, globalNavBar)
		end
		return targets
	end, { routerView, globalNavBar } :: { any })
	local setShouldFocus = useAutoFocus(focusTargets, FOCUS_ATTEMPT_DEBOUNCE_TIME)

	--[[
		Any time we get a new router view we should attempt to focus on it.
		This effect watches for a new routerView and sets the shouldFocus state
		to trigger the above effect.
	]]
	React.useEffect(function()
		if routerView then
			setShouldFocus(true)
		end
	end, { routerView })

	--[[
		If we lose focus, and the gamepad is the last input device
		We should attempt to focus the router view as though 
		the screen was changed.
	]]
	React.useEffect(function()
		if lastInputIsGamepad and not focusNavigationActive then
			setShouldFocus(true)
		end
	end, { lastInputIsGamepad, focusNavigationActive })
end

return useGlobalFocusHandler

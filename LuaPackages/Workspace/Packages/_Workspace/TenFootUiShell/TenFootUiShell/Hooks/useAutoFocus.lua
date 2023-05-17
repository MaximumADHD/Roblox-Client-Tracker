local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local FocusNavigationContext = ReactFocusNavigation.FocusNavigationContext

type FocusNavigationService = ReactFocusNavigation.FocusNavigationService

--[[
    This function will attempt to focus (select) a GuiObject or the descendant
    of a GuiObject by cycling through a list of targets and calling focus on them.
    It will continue to cycle through the list until focus is achieved or the 
    process is cancelled. 
]]
local function tryFocus(
	debounceTime: number,
	focusTargets: { GuiObject },
	focusNavigation: FocusNavigationService,
	onFocused: () -> ()
)
	local focusAttemptCancelled = false
	local focusSuccessWatchers: { RBXScriptConnection } = {}

	local function disconnect()
		if not focusAttemptCancelled then
			focusAttemptCancelled = true
			for _, connection in focusSuccessWatchers do
				connection:Disconnect()
			end
		end
	end

	local function onFocusChange(_, __, new)
		if new then
			disconnect()
			onFocused()
		end
	end

	local function focus(idx: number)
		task.delay(debounceTime, function()
			if not focusAttemptCancelled then
				focusNavigation:focusGuiObject(focusTargets[idx], false)
				focus(idx % #focusTargets + 1)
			end
		end)
	end

	for _, focusTarget in focusTargets do
		table.insert(focusSuccessWatchers, focusTarget.SelectionChanged:Connect(onFocusChange))
	end

	focus(1)

	local function cancel()
		disconnect()
	end
	return {
		cancel = cancel,
	}
end

--[[
    This hook will attempt to focus on one of the GuiObjects in the focusTargets list 
    starting from the first. It will continue to attempt to gain focus until either
    one of the targets or it's children become focused, or the effect is torn down.
]]
local function useAutoFocus(focusTargets: { GuiObject }, debounceTime: number)
	local focusNavigation = React.useContext(FocusNavigationContext)
	local shouldFocus, setShouldFocus = React.useState(false)

	React.useEffect(function()
		local tryingToFocus
		if #focusTargets > 0 and shouldFocus and focusNavigation then
			tryingToFocus = tryFocus(debounceTime, focusTargets, focusNavigation, function()
				setShouldFocus(false)
			end)
		end
		return function()
			if tryingToFocus then
				tryingToFocus.cancel()
			end
		end
	end, { focusNavigation, shouldFocus, focusTargets, debounceTime } :: { any })
	return setShouldFocus
end

return useAutoFocus

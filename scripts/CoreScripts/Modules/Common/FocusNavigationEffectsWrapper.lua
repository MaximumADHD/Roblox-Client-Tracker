local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ReactFocusNavigation = require(CorePackages.Packages.ReactFocusNavigation)
local useLastInputMethod = ReactFocusNavigation.useLastInputMethod
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusNavigableSurfaceRegistry = FocusNavigationUtils.FocusNavigableSurfaceRegistry

local useRegisterFocusNavigableSurface = FocusNavigableSurfaceRegistry.useRegisterFocusNavigableSurface
local useDeRegisterFocusNavigableSurface = FocusNavigableSurfaceRegistry.useDeRegisterFocusNavigableSurface
local useAutoFocus = FocusNavigationUtils.useAutoFocus
local useDescendantHasFocus = FocusNavigationUtils.useDescendantHasFocus
local GetFFlagTenFootUiFixAutoFocusRace = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagTenFootUiFixAutoFocusRace

type FocusNavigableSurfaceIdentifier = FocusNavigationUtils.FocusNavigableSurfaceIdentifier

local AUTO_FOCUS_DEBOUNCE_TIME = 0.1

type Props = {
	selectionGroupName: string?,
	focusNavigableSurfaceIdentifier: FocusNavigableSurfaceIdentifier,
	children: any,
}

local function FocusNavigationEffects(props: Props)
	local focusRef, setFocusRef = React.useState(nil :: GuiObject?)
	local registerFocusNavigationRoot = useRegisterFocusNavigableSurface()
	local deregisterFocusNavigationRoot = useDeRegisterFocusNavigableSurface()
	--LUAU FIXME: this doesn't recognize `useAutoFocus` as a function
	local autoFocus = (useAutoFocus :: any)({ focusRef }, AUTO_FOCUS_DEBOUNCE_TIME)
	local hasFocus = useDescendantHasFocus(focusRef)
	local lastInputMethod = useLastInputMethod()
	local lastInputUseFocus = lastInputMethod == "Gamepad"
	or lastInputMethod == "Keyboard"

	React.useEffect(function()
		if focusRef then
			registerFocusNavigationRoot(props.focusNavigableSurfaceIdentifier, focusRef)
			if props.selectionGroupName then
				GuiService:AddSelectionParent(props.selectionGroupName, focusRef)
			end
		else
			deregisterFocusNavigationRoot(props.focusNavigableSurfaceIdentifier, focusRef)
			if props.selectionGroupName then
				GuiService:RemoveSelectionGroup(props.selectionGroupName)
			end
		end
		return function()
			deregisterFocusNavigationRoot(props.focusNavigableSurfaceIdentifier, focusRef)
			if props.selectionGroupName then
				GuiService:RemoveSelectionGroup(props.selectionGroupName)
			end
		end
	end, { focusRef, props.focusNavigableSurfaceIdentifier, props.selectionGroupName } :: { any })
	
	if GetFFlagTenFootUiFixAutoFocusRace() then
		local shouldAutoFocus = lastInputUseFocus and focusRef and not hasFocus
		React.useEffect(function()
			local autofocusing
			if shouldAutoFocus then
				autofocusing = autoFocus()
			end
			return function()
				if autofocusing then
					autofocusing.cancel()
				end
			end
		end, { shouldAutoFocus, autoFocus } :: { any })
	else 
		React.useEffect(function()
			if lastInputUseFocus and focusRef and not hasFocus then
				autoFocus()
			end
		end, { focusRef, hasFocus, lastInputUseFocus } :: { any })
	end

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		ref = setFocusRef,
	}, props.children)
end

return FocusNavigationEffects

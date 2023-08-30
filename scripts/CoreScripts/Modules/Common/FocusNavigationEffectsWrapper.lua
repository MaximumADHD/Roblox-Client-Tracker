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
	local autoFocus = useAutoFocus({ focusRef }, AUTO_FOCUS_DEBOUNCE_TIME)
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

	React.useEffect(function()
		if lastInputUseFocus and focusRef and not hasFocus then
			autoFocus()
		end
	end, { focusRef, hasFocus, lastInputUseFocus } :: { any })

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		ref = setFocusRef,
	}, props.children)
end

return FocusNavigationEffects

--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreScriptsRootProvider = require(RobloxGui.Modules.Common.CoreScriptsRootProvider)
local React = require(CorePackages.Packages.React)
local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusNavigableSurfaceRegistry = FocusNavigationUtils.FocusNavigableSurfaceRegistry
local useRegisterFocusNavigableSurface = FocusNavigableSurfaceRegistry.useRegisterFocusNavigableSurface
local useDeRegisterFocusNavigableSurface = FocusNavigableSurfaceRegistry.useDeRegisterFocusNavigableSurface
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local useAutoFocus = FocusNavigationUtils.useAutoFocus
local useDescendantHasFocus = FocusNavigationUtils.useDescendantHasFocus
local DeviceTypeEnum = RobloxAppEnums.DeviceType

local AUTO_FOCUS_DEBOUNCE_TIME = 0.1

local function FocusNavigationEffects(props)
	local focusRef, setFocusRef = React.useState(nil :: GuiObject?)
	local registerFocusNavigationRoot = useRegisterFocusNavigableSurface()
	local deregisterFocusNavigationRoot = useDeRegisterFocusNavigableSurface()
	local autoFocus = useAutoFocus({ focusRef }, AUTO_FOCUS_DEBOUNCE_TIME)
	local hasFocus = useDescendantHasFocus(focusRef)

	React.useEffect(function()
		if focusRef then
			registerFocusNavigationRoot(FocusNavigableSurfaceIdentifierEnum.CentralOverlay, focusRef)
		else
			deregisterFocusNavigationRoot(FocusNavigableSurfaceIdentifierEnum.CentralOverlay, focusRef)
		end
		return function()
			deregisterFocusNavigationRoot(FocusNavigableSurfaceIdentifierEnum.CentralOverlay, focusRef)
		end
	end, { focusRef } :: { any })

	React.useEffect(function()
		if focusRef and not hasFocus then
			autoFocus()
		end
	end, { focusRef, hasFocus } :: { any })

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		ref = setFocusRef,
	}, props.children)
end

function OverscanWrapper(Overscan)
	return function(props)
		local styleOverride = {
			deviceType = DeviceTypeEnum.Console,
		}

		return React.createElement(CoreScriptsRootProvider, {
            styleOverride = styleOverride,
        }, {
            FocusNavigationEffects = React.createElement(FocusNavigationEffects, nil, {
                Overscan = React.createElement(Overscan, props),
            }),
		})
	end
end

return OverscanWrapper

--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreScriptsRootProvider = require(RobloxGui.Modules.Common.CoreScriptsRootProvider)
local FocusNavigationEffects = require(RobloxGui.Modules.Common.FocusNavigationEffectsWrapper)

local React = require(CorePackages.Packages.React)
local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)

local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum

local DeviceTypeEnum = RobloxAppEnums.DeviceType

local SELECTION_GROUP_NAME = "OverscanScreen"

function OverscanWrapper(Overscan)
	return function(props)
		local styleOverride = {
			deviceType = DeviceTypeEnum.Console,
		}

		return React.createElement(CoreScriptsRootProvider, {
			styleOverride = styleOverride,
		}, {
			FocusNavigationEffects = React.createElement(FocusNavigationEffects, {
				selectionGroupName = SELECTION_GROUP_NAME,
				focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.CentralOverlay,
			}, {
				Overscan = React.createElement(Overscan, props),
			}),
		})
	end
end

return OverscanWrapper

--!strict
local CorePackages = game:GetService("CorePackages")
local CoreScriptsRootProvider = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider

local FocusRoot = require(CorePackages.Workspace.Packages.FocusNavigationUtils).FocusRoot

local React = require(CorePackages.Packages.React)
local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)

local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum

local DeviceTypeEnum = RobloxAppEnums.DeviceType

function OverscanWrapper(Overscan)
	return function(props)
		local styleOverride = {
			deviceType = DeviceTypeEnum.Console,
		}

		return React.createElement(CoreScriptsRootProvider, {
			styleOverride = styleOverride,
		}, {
			FocusNavigationCoreScriptsWrapper = React.createElement(
				FocusRoot,
				{
					surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.CentralOverlay,
					isIsolated = true,
					isAutoFocusRoot = true,
				},
				{
					Overscan = React.createElement(Overscan, props),
				}
			),
		})
	end
end

return OverscanWrapper

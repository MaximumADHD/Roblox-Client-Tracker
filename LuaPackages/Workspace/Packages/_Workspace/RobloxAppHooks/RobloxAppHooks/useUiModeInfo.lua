--[[
	A hook that is used to aggregate and expose form factor-specific information
]]
local Root = script:FindFirstAncestor("RobloxAppHooks")
local Packages = Root.Parent
local React = require(Packages.React)
local dependencyArray = require(Packages.RoactUtils).Hooks.dependencyArray
local RobloxAppEnums = require(Packages.RobloxAppEnums)
local DeviceTypeEnum = RobloxAppEnums.DeviceType
local UiMode = RobloxAppEnums.UiMode
local useDeviceType = require(script.Parent.useDeviceType)

type DeviceType = RobloxAppEnums.DeviceType
type UiMode = RobloxAppEnums.UiMode
export type UiModeInfo = {
	deviceType: DeviceType,
	uiMode: UiMode,
}

type UiModeByDeviceType = {
	[DeviceType]: UiMode,
}

-- This is a naive one-dimensional mapping of device types to platform types
-- In reality this is likely more complex
local uiModeByDeviceType: UiModeByDeviceType = {
	[DeviceTypeEnum.Desktop] = UiMode.Unknown,
	[DeviceTypeEnum.Tablet] = UiMode.Unknown,
	[DeviceTypeEnum.Phone] = UiMode.Unknown,
	[DeviceTypeEnum.Console] = UiMode.TenFoot,
	[DeviceTypeEnum.VR] = UiMode.Unknown,
}

-- Similar to useDeviceType, the source of truth for this hook will likely be GUAC-driven in the future.
-- The hook functions as a stable interface from which we can expect UI mode-specific information
local function useUiModeInfo(): UiModeInfo
	local deviceType: DeviceType = useDeviceType()
	local uiMode = uiModeByDeviceType[deviceType] or UiMode.Unknown

	local uiModeInfo = React.useMemo(function()
		return {
			deviceType = deviceType :: DeviceType,
			uiMode = uiMode :: UiMode,
		}
	end, dependencyArray(deviceType, uiMode))

	return uiModeInfo
end

return useUiModeInfo

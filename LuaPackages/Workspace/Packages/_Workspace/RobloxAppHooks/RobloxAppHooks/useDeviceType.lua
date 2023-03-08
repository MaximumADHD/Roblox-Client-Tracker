--[[
	A hook that is used to determine what the device type is.
]]
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local RobloxAppHooks = script:FindFirstAncestor("RobloxAppHooks")
local Packages = RobloxAppHooks.Parent

local useSelector = require(Packages.RoactUtils).Hooks.RoactRodux.useSelector
local IsVRAppBuild = require(Packages.AppCommonLib).IsVRAppBuild

local RobloxAppEnums = require(Packages.RobloxAppEnums)
local DeviceOrientationModeEnum = RobloxAppEnums.DeviceOrientationMode
local DeviceTypeEnum = RobloxAppEnums.DeviceType

type DeviceType = RobloxAppEnums.DeviceType
type DeviceOrientationMode = RobloxAppEnums.DeviceOrientationMode

local function useDeviceType(): DeviceType
	local deviceOrientation: DeviceOrientationMode = useSelector(function(state)
		return state.DeviceOrientation
	end)

	if IsVRAppBuild() then
		return DeviceTypeEnum.VR
	end

	if GuiService:IsTenFootInterface() then
		return DeviceTypeEnum.Console
	end

	local platform: Enum.Platform = Enum.Platform.None
	pcall(function()
		platform = UserInputService:GetPlatform()
	end)

	if (platform == Enum.Platform.Windows) or (platform == Enum.Platform.OSX) or (platform == Enum.Platform.UWP) then
		return DeviceTypeEnum.Desktop
	elseif (platform == Enum.Platform.IOS) or (platform == Enum.Platform.Android) then
		-- The iOS and Android devices are locked to landscape if it is a tablet and locked to portrait if it is a phone
		-- This is currently the only way to determine if the device is a tablet or a phone
		if deviceOrientation == DeviceOrientationModeEnum.Landscape then
			return DeviceTypeEnum.Tablet
		elseif deviceOrientation == DeviceOrientationModeEnum.Portrait then
			return DeviceTypeEnum.Phone
		end
	end

	return DeviceTypeEnum.Unknown
end

return useDeviceType

local DeviceOrientationMode = require(script.DeviceOrientationMode)
local DeviceTypeEnum = require(script.DeviceTypeEnum)
local UiMode = require(script.UiMode)
export type DeviceOrientationMode = DeviceOrientationMode.DeviceOrientationMode
export type DeviceType = DeviceTypeEnum.DeviceType
export type UiMode = UiMode.UiMode

return {
	DeviceOrientationMode = DeviceOrientationMode,
	DeviceType = DeviceTypeEnum,
	UiMode = UiMode,
}

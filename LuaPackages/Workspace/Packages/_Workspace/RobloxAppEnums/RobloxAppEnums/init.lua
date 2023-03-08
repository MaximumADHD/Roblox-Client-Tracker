local DeviceOrientationMode = require(script.DeviceOrientationMode)
export type DeviceOrientationMode = DeviceOrientationMode.DeviceOrientationMode

local DeviceTypeEnum = require(script.DeviceTypeEnum)
export type DeviceType = DeviceTypeEnum.DeviceType

return {
	DeviceOrientationMode = DeviceOrientationMode,
	DeviceType = DeviceTypeEnum,
}

local useDeviceType = require(script.useDeviceType)
local useUiModeInfo = require(script.useUiModeInfo)
local useLocalUserId = require(script.useLocalUserId)
local useIsLocalUserSoothSayer = require(script.useIsLocalUserSoothSayer)
local useScreenSize = require(script.useScreenSize)

export type UiModeInfo = useUiModeInfo.UiModeInfo

return {
	useDeviceType = useDeviceType,
	useUiModeInfo = useUiModeInfo,
	useIsLocalUserSoothSayer = useIsLocalUserSoothSayer,
	useLocalUserId = useLocalUserId,
	useScreenSize = useScreenSize,
}

local useDeviceType = require(script.useDeviceType)
local useLocalUserId = require(script.useLocalUserId)
local useIsLocalUserSoothSayer = require(script.useIsLocalUserSoothSayer)
local useScreenSize = require(script.useScreenSize)

return {
	useDeviceType = useDeviceType,
	useIsLocalUserSoothSayer = useIsLocalUserSoothSayer,
	useLocalUserId = useLocalUserId,
	useScreenSize = useScreenSize,
}

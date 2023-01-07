local Root = script.Parent
local Packages = Root.Parent
local Types = require(Packages.MessageBus)

export type SystemInfo = {
	manufacturer: string?,
	deviceName: string?,
	maxMemory: string?,
	maxResolution: string?,
	baseOs: string?,
	systemVersion: string?,
	appVersion: string?,
	cpuMake: string?,
	is64bit: string?,
	cpuLogicalCount: string?,
	cpuCoreCount: string?,
	cpuPhysCount: string?,
	cpuSpeed: string?,
	GPU: string?,
	availRAM: string?,
	networkType: string?,
}

export type SystemInfoProtocol = {
	InfoNames: {
		MANUFACTURER: "manufacturer",
		DEVICE_NAME: "deviceName",
		MAX_MEMORY: "maxMemory",
		MAX_RESOLUTION: "maxResolution",
		BASE_OS: "baseOs",
		SYSTEM_VERSION: "systemVersion",
		APP_VERSION: "appVersion",
		CPU_MAKE: "cpuMake",
		IS_64BIT: "is64bit",
		CPU_LOGICAL_COUNT: "cpuLogicalCount",
		CPU_CORE_COUNT: "cpuCoreCount",
		CPU_PHYS_COUNT: "cpuPhysCount",
		CPU_SPEED: "cpuSpeed",
		GPU: "GPU",
		AVAIL_RAM: "availRAM",
		NETWORK_TYPE: "networkType",
	},
	ALL_INFO_NAMES: Types.Array<string>,

	GET_SYSTEM_INFO_DESCRIPTOR: Types.FunctionDescriptor,

	getSystemInfo: (SystemInfoProtocol, params: Types.Array<string>) -> SystemInfo,

	messageBus: Types.MessageBus,
}

return nil

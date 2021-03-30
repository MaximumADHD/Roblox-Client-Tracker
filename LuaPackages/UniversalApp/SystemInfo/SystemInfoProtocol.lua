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

local CorePackages = game:GetService("CorePackages")
local MessageBus = require(CorePackages.UniversalApp.MessageBus)
local t = require(CorePackages.Packages.t)

local NAME = "SystemInfo"

local SystemInfoProtocol = {
	GET_SYSTEM_INFO_DESCRIPTOR = {
		fid = MessageBus.getMessageId(NAME, "getSystemInfo"),
		validateParams = t.table,
	},
}

SystemInfoProtocol.__index = SystemInfoProtocol

function SystemInfoProtocol.new(messageBus): SystemInfoProtocol
	local self = setmetatable({
		messageBus = messageBus or MessageBus
	}, SystemInfoProtocol)
	return self
end

--[[
	Takes a list of strings such as:

	{"manufacturer", "deviceName", "maxMemory"}

	Appeals to the engine to populate a table like this:

	{
		manufacturer = "Apple",
		deviceName = "Quadra 630",
		maxMemory = "4MB"
	}
]]--
function SystemInfoProtocol:getSystemInfo(params: string): SystemInfo
	return self.messageBus.call(self.GET_SYSTEM_INFO_DESCRIPTOR, params)
end

SystemInfoProtocol.default = SystemInfoProtocol.new()

SystemInfoProtocol.InfoNames = {
	MANUFACTURER = "manufacturer",
	DEVICE_NAME = "deviceName",
	MAX_MEMORY = "maxMemory",
	MAX_RESOLUTION = "maxResolution",
	BASE_OS = "baseOs",
	SYSTEM_VERSION = "systemVersion",
	APP_VERSION = "appVersion",
	CPU_MAKE = "cpuMake",
	IS_64BIT = "is64bit",
	CPU_LOGICAL_COUNT = "cpuLogicalCount",
	CPU_CORE_COUNT = "cpuCoreCount",
	CPU_PHYS_COUNT = "cpuPhysCount",
	CPU_SPEED = "cpuSpeed",
	GPU = "GPU",
	AVAIL_RAM = "availRAM",
	NETWORK_TYPE = "networkType",
}

SystemInfoProtocol.ALL_INFO_NAMES = {
	SystemInfoProtocol.InfoNames.MANUFACTURER,
	SystemInfoProtocol.InfoNames.DEVICE_NAME,
	SystemInfoProtocol.InfoNames.MAX_MEMORY,
	SystemInfoProtocol.InfoNames.MAX_RESOLUTION,
	SystemInfoProtocol.InfoNames.BASE_OS,
	SystemInfoProtocol.InfoNames.SYSTEM_VERSION,
	SystemInfoProtocol.InfoNames.APP_VERSION,
	SystemInfoProtocol.InfoNames.CPU_MAKE,
	SystemInfoProtocol.InfoNames.IS_64BIT,
	SystemInfoProtocol.InfoNames.CPU_LOGICAL_COUNT,
	SystemInfoProtocol.InfoNames.CPU_CORE_COUNT,
	SystemInfoProtocol.InfoNames.CPU_PHYS_COUNT,
	SystemInfoProtocol.InfoNames.CPU_SPEED,
	SystemInfoProtocol.InfoNames.GPU,
	SystemInfoProtocol.InfoNames.AVAIL_RAM,
	SystemInfoProtocol.InfoNames.NETWORK_TYPE,
}

return SystemInfoProtocol

local CorePackages = game:GetService("CorePackages")
local MessageBusPackage = require(CorePackages.Workspace.Packages.MessageBus)
local MessageBus = MessageBusPackage.MessageBus
local t = require(CorePackages.Packages.t)

local Types = require(script.Parent.SystemInfoProtocolTypes)

type MessageBus = MessageBusPackage.MessageBus
type Array<T> = MessageBusPackage.Array<T>

export type SystemInfo = Types.SystemInfo
export type SystemInfoProtocol = Types.SystemInfoProtocol

export type SystemInfoProtocolModule = SystemInfoProtocol & {
	new: (MessageBus?) -> SystemInfoProtocol,
	default: SystemInfoProtocol,
}

local NAME = "SystemInfo"

local SystemInfoProtocol: SystemInfoProtocolModule = {
	GET_SYSTEM_INFO_DESCRIPTOR = {
		fid = MessageBus.getMessageId(NAME, "getSystemInfo"),
		validateParams = t.table,
	},
} :: SystemInfoProtocolModule

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

(SystemInfoProtocol :: any).__index = SystemInfoProtocol

function SystemInfoProtocol.new(messageBus): SystemInfoProtocol
	local self = setmetatable({
		messageBus = messageBus or MessageBus
	}, SystemInfoProtocol)
	return (self :: any) :: SystemInfoProtocol
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
function SystemInfoProtocol:getSystemInfo(params: Array<string>): SystemInfo
	return self.messageBus.call(self.GET_SYSTEM_INFO_DESCRIPTOR, params)
end

SystemInfoProtocol.default = SystemInfoProtocol.new()

return SystemInfoProtocol

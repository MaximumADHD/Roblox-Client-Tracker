local Root = script.Parent
local Packages = Root.Parent
local MessageBusPackage = require(Packages.MessageBus)
local MessageBus = MessageBusPackage.MessageBus
local Promise = require(Packages.Promise)
local t = require(Packages.t)

local getFFlagLuaPermissionContactAccess = require(script.Parent.Flags.getFFlagLuaPermissionContactAccess)

local Types = require(script.Parent.PermissionsProtocolTypes)

type Table = MessageBusPackage.Table
type Array<T> = MessageBusPackage.Array<T>
type Promise<T> = MessageBusPackage.Promise<T>

export type PermissionsProtocol = Types.PermissionsProtocol

export type PermissionsProtocolModule = PermissionsProtocol & {
	new: () -> PermissionsProtocol,
	default: PermissionsProtocol,
}

local PROTOCOL_NAME = "PermissionsProtocol"

local PERMISSIONS_REQUEST_METHOD_NAME = "PermissionsRequest"
local HAS_PERMISSIONS_METHOD_NAME = "HasPermissions"
local SUPPORTS_PERMISSIONS_METHOD_NAME = "SupportsPermissions"

game:DefineFastFlag("DebugRomarkAudioPermissionsBypass", false)

local permissions = {
	CAMERA_ACCESS = "CAMERA_ACCESS" :: "CAMERA_ACCESS",
	MICROPHONE_ACCESS = "MICROPHONE_ACCESS" :: "MICROPHONE_ACCESS",
	LOCAL_NETWORK = "LOCAL_NETWORK" :: "LOCAL_NETWORK",
	CONTACTS_ACCESS = "CONTACTS_ACCESS" :: "CONTACTS_ACCESS",
	WRITE_MEDIA_STORAGE = "WRITE_MEDIA_STORAGE" :: "WRITE_MEDIA_STORAGE",
}

local status = {
	AUTHORIZED = "AUTHORIZED" :: "AUTHORIZED",
	DENIED = "DENIED" :: "DENIED",
	RESTRICTED = "RESTRICTED" :: "RESTRICTED",
	UNSUPPORTED = "UNSUPPORTED" :: "UNSUPPORTED",
}

local validatePermissionsList = t.array(t.valueOf(permissions))
local validateStatusList = t.valueOf(status)

local PermissionsProtocol: PermissionsProtocolModule = {
	Permissions = permissions,
	Status = status,

	PERMISSION_REQUEST_PROTOCOL_METHOD_REQUEST_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = PERMISSIONS_REQUEST_METHOD_NAME,
		validateParams = t.strictInterface({
			permissions = validatePermissionsList,
		}),
	},
	PERMISSION_REQUEST_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = PERMISSIONS_REQUEST_METHOD_NAME,
		validateParams = t.strictInterface({
			status = validateStatusList,
			missingPermissions = validatePermissionsList,
		}),
	},
	HAS_PERMISSIONS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = HAS_PERMISSIONS_METHOD_NAME,
		validateParams = t.strictInterface({
			permissions = validatePermissionsList,
		}),
	},
	HAS_PERMISSIONS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = HAS_PERMISSIONS_METHOD_NAME,
		validateParams = t.strictInterface({
			status = validateStatusList,
			missingPermissions = validatePermissionsList,
		}),
	},
	SUPPORTS_PERMISSIONS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = SUPPORTS_PERMISSIONS_METHOD_NAME,
		validateParams = t.strictInterface({
			includeStatus = t.literal(false),
		}),
	},
	SUPPORTS_PERMISSIONS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = SUPPORTS_PERMISSIONS_METHOD_NAME,
		validateParams = t.strictInterface({
			permissions = validatePermissionsList,
		}),
	},
} :: PermissionsProtocolModule;

(PermissionsProtocol :: any).__index = PermissionsProtocol

local function getPermissionRequestTelemetryData(permissions: Array<string>): Table
	local permissionsTelemetryTable = {}
	for key, value in pairs(permissions) do
		if value == PermissionsProtocol.Permissions.CAMERA_ACCESS then
			permissionsTelemetryTable["camera_access_requested"] = ""
		end
		if value == PermissionsProtocol.Permissions.MICROPHONE_ACCESS then
			permissionsTelemetryTable["microphone_access_requested"] = ""
		end
		if value == PermissionsProtocol.Permissions.LOCAL_NETWORK then
			permissionsTelemetryTable["local_network_requested"] = ""
		end
		if value == PermissionsProtocol.Permissions.CONTACTS_ACCESS and getFFlagLuaPermissionContactAccess() then
			permissionsTelemetryTable["contacts_access_requested"] = ""
		end
	end
	return permissionsTelemetryTable
end

function PermissionsProtocol.new(): PermissionsProtocol
	local self = setmetatable({
		subscriber = MessageBus.Subscriber.new(),
	}, PermissionsProtocol)
	return (self :: any) :: PermissionsProtocol
end

--[[
Checks to see if the app has permission to access certain set of device features
such as camera and microphone.

@param permissions: a list of strings corresponding to permissions to check
@return promise<table>: status (enum) indicates if batch of permissions is
authorized or denied and missingPermissions (table) indicates any permissions
not granted
]]

function PermissionsProtocol:hasPermissions(permissions: Array<string>): Promise<Table>
	local promise = Promise.new(function(resolve, _)
		local desc = self.HAS_PERMISSIONS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR
		self.subscriber:subscribeProtocolMethodResponse(desc, function(params: Table)
			self.subscriber:unsubscribeToProtocolMethodResponse(desc)
			resolve(params)
		end)
	end)
	MessageBus.publishProtocolMethodRequest(self.HAS_PERMISSIONS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR, {
		permissions = permissions,
	}, getPermissionRequestTelemetryData(permissions))
	return promise
end

--[[
Prompts the user for access to device features such as camera and microphone

@param permissions: a list of strings corresponding to permissions to request
@return promise<table>: status (enum) indicates if batch of permissions is
authorized or denied and missingPermissions (table) indicates any permissions
not granted
]]

function PermissionsProtocol:requestPermissions(permissions: Array<string>): Promise<Table>
	-- Override permissions request in Romark, don't need to ask for them
	if game:GetFastFlag("DebugRomarkAudioPermissionsBypass") then
		local params = {}
		params["missingPermissions"] = {}
		params["status"] = PermissionsProtocol.Status.AUTHORIZED
		return Promise.resolve(params)
	end

	local promise = Promise.new(function(resolve, _)
		local desc = self.PERMISSION_REQUEST_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR
		self.subscriber:subscribeProtocolMethodResponse(desc, function(params: Table)
			self.subscriber:unsubscribeToProtocolMethodResponse(desc)
			resolve(params)
		end)
	end)
	MessageBus.publishProtocolMethodRequest(self.PERMISSION_REQUEST_PROTOCOL_METHOD_REQUEST_DESCRIPTOR, {
		permissions = permissions,
	}, getPermissionRequestTelemetryData(permissions))
	return promise
end

--[[
Gets a list of permissions that are supported by this device

@return promise<table>: list of strings that correspond to permissions this
device supports
]]

function PermissionsProtocol:getSupportedPermissionsList(): Promise<Table>
	local promise = Promise.new(function(resolve, _)
		local desc = self.SUPPORTS_PERMISSIONS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR
		self.subscriber:subscribeProtocolMethodResponse(desc, function(params: Table)
			self.subscriber:unsubscribeToProtocolMethodResponse(desc)
			resolve(params)
		end)
	end)
	MessageBus.publishProtocolMethodRequest(self.SUPPORTS_PERMISSIONS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR, {
		includeStatus = false,
	}, {})
	return promise
end

--[[
Check if specific permissions are supported by this device

@param permissions: list of permissions to verify
@return promise<boolean>: returns true if all permissions specified are
supported by the device and false if any of the specified permissions are not supported
]]

function PermissionsProtocol:supportsPermissions(permissions: Array<string>): Promise<boolean>
	assert(validatePermissionsList(permissions))
	return (
		self:getSupportedPermissionsList():andThen(function(params)
			local supports = params and params.permissions
			if supports then
				for _, needed in pairs(permissions) do
					local permissionSupported = false
					for _, supported in pairs(supports) do
						if needed == supported then
							permissionSupported = true
							break
						end
					end
					if not permissionSupported then
						return Promise.resolve(false)
					end
				end
				return Promise.resolve(true)
			else
				return Promise.reject()
			end
		end) :: any
	) :: Promise<boolean> -- FIXME LUAU: Remove any cast with https://github.com/Roblox/luau/pull/86
end

--[[
Check if specific permissions are supported by this device
If the permissions are supported
	If we have permissions authorized
		Return true

	If we don't have permissions authorized
		Request the permissions and return the result

Otherwise, return false

@param permissions: list of permissions to verify
@return promise<boolean>: returns true if all permissions specified are avavailable and authorized,
 and false otherwise
]]

function PermissionsProtocol:checkOrRequestPermissions(permissions: Array<string>): Promise<boolean>
	assert(validatePermissionsList(permissions))

	return self:supportsPermissions(permissions):andThen(function(success)
		if not success then
			return Promise.resolve(PermissionsProtocol.Status.UNSUPPORTED)
		end

		-- Permissions supported, request if necessary
		return (
			self:hasPermissions(permissions):andThen(function(result)
				-- Permissions already granted before
				if result.status == PermissionsProtocol.Status.AUTHORIZED then
					return Promise.resolve(result.status)
				else
					-- Requesting permissions now
					return self:requestPermissions(permissions):andThen(function(result)
						return Promise.resolve(result.status)
					end)
				end
			end) :: any
		) :: Promise<boolean> -- FIXME LUAU: Remove any cast with https://github.com/Roblox/luau/pull/86
	end, function(err)
		-- Permissions not supported
		return Promise.resolve(PermissionsProtocol.Status.UNSUPPORTED)
	end)
end

PermissionsProtocol.default = PermissionsProtocol.new()

return PermissionsProtocol

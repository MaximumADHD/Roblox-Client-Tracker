local CorePackages = game:GetService("CorePackages")
local MessageBus = require(CorePackages.UniversalApp.MessageBus)
local Promise = require(CorePackages.Promise)
local t = require(CorePackages.Packages.t)

local NAME = "Permissions"

local permissions = {
	CAMERA_ACCESS = "CAMERA_ACCESS",
	MICROPHONE_ACCESS = "MICROPHONE_ACCESS"
}

local status = {
	AUTHORIZED = "AUTHORIZED",
	DENIED = "DENIED",
	RESTRICTED = "RESTRICTED",
	UNSUPPORTED = "UNSUPPORTED",
}

local validatePermissionsList = t.array(t.valueOf(permissions))
local validateStatusList = t.valueOf(status)

local PermissionsProtocol = {
	Permissions = permissions,
	Status = status,

	PERMISSION_REQUEST_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "permissionRequest"),
		validateParams = t.strictInterface({
			permissions = validatePermissionsList,
		}),
	},
	PERMISSION_RESPONSE_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "permissionResponse"),
		validateParams = t.strictInterface({
			status = validateStatusList,
			missingPermissions = validatePermissionsList,
		}),
	},
	HAS_PERMISSION_REQUEST_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "hasPermissionRequest"),
		validateParams = t.strictInterface({
			permissions = validatePermissionsList,
		}),
	},
	HAS_PERMISSION_RESPONSE_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "hasPermissionResponse"),
		validateParams = t.strictInterface({
			status = validateStatusList,
			missingPermissions = validatePermissionsList,
		}),
	},
	SUPPORTS_PERMISSIONS_REQUEST_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "supportsPermissionsRequest"),
		validateParams = t.strictInterface({
			includeStatus = t.literal(false),
		}),
	},
	SUPPORTS_PERMISSIONS_RESPONSE_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "supportsPermissionsResponse"),
		validateParams = t.strictInterface({
			permissions = validatePermissionsList,
		}),
	},
}

PermissionsProtocol.__index = PermissionsProtocol

function PermissionsProtocol.new(): PermissionsProtocol
	local self = setmetatable({
		subscriber = MessageBus.Subscriber.new(),
	}, PermissionsProtocol)
	return self
end

--[[
Checks to see if the app has permission to access certain set of device features
such as camera and microphone.

@param permissions: a list of strings corresponding to permissions to check
@return promise<table>: status (enum) indicates if batch of permissions is
authorized or denied and missingPermissions (table) indicates any permissions
not granted
]]

function PermissionsProtocol:hasPermissions(permissions: Table): Promise
	local promise = Promise.new(function(resolve, _)
		local desc = self.HAS_PERMISSION_RESPONSE_DESCRIPTOR
		self.subscriber:subscribe(desc, function(params: Table)
			self.subscriber:unsubscribe(desc)
			resolve(params)
		end)
	end)

	MessageBus.publish(self.HAS_PERMISSION_REQUEST_DESCRIPTOR, {
		permissions = permissions,
	})
	return promise
end

--[[
Prompts the user for access to device features such as camera and microphone

@param permissions: a list of strings corresponding to permissions to request
@return promise<table>: status (enum) indicates if batch of permissions is
authorized or denied and missingPermissions (table) indicates any permissions
not granted
]]

function PermissionsProtocol:requestPermissions(permissions: Table): Promise
	local promise = Promise.new(function(resolve, _)
		local desc = self.PERMISSION_RESPONSE_DESCRIPTOR
		self.subscriber:subscribe(desc, function(params: Table)
			self.subscriber:unsubscribe(desc)
			resolve(params)
		end)
	end)

	MessageBus.publish(self.PERMISSION_REQUEST_DESCRIPTOR, {
		permissions = permissions,
	})
	return promise
end

--[[
Gets a list of permissions that are supported by this device

@return promise<table>: list of strings that correspond to permissions this
device supports
]]

function PermissionsProtocol:getSupportedPermissionsList(): Promise
	local promise = Promise.new(function(resolve, _)
		local desc = self.SUPPORTS_PERMISSIONS_RESPONSE_DESCRIPTOR
		self.subscriber:subscribe(desc, function(permissions: Table)
			self.subscriber:unsubscribe(desc)
			resolve(permissions)
		end)
	end)

	MessageBus.publish(self.SUPPORTS_PERMISSIONS_REQUEST_DESCRIPTOR, {
		includeStatus = false,
	})
	return promise
end

--[[
Check if specific permissions are supported by this device

@param permissions: list of permissions to verify
@return promise<boolean>: returns true if all permissions specified are
supported by the device and false if any of the specified permissions are not supported
]]

function PermissionsProtocol:supportsPermissions(permissions: Table): Promise
	assert(validatePermissionsList(permissions))
	return self:getSupportedPermissionsList():andThen(function(params)
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
	end)
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

function PermissionsProtocol:checkOrRequestPermissions(permissions: Table): Promise
	assert(validatePermissionsList(permissions))

	return self:supportsPermissions(permissions):andThen(
		function(success)
			if not success then
				return Promise.resolve(PermissionsProtocol.Status.UNSUPPORTED) 
			end
			
			-- Permissions supported, request if necessary
			self:hasPermissions(permissions):andThen(
			function(result)
				-- Permissions already granted before
				if result.status == PermissionsProtocol.Status.AUTHORIZED then
					return Promise.resolve(result.status)
				else
					-- Requesting permissions now
					self:requestPermissions(permissions):andThen(
						function(result)
							return Promise.resolve(result.status)
						end
					)
				end
			end)
		end,
		function(err)
			-- Permissions not supported
			return Promise.resolve(PermissionsProtocol.Status.UNSUPPORTED)
		end
	)
end

PermissionsProtocol.default = PermissionsProtocol.new()

return PermissionsProtocol

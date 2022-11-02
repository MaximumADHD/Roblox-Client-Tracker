local CorePackages = game:GetService("CorePackages")
local Types = require(CorePackages.Workspace.Packages.MessageBus)

type Table = Types.Table
type Array<T> = Types.Array<T>
type Promise<T> = Types.Promise<T>

export type PermissionsProtocol = {
	Permissions: {
		CAMERA_ACCESS: "CAMERA_ACCESS",
		MICROPHONE_ACCESS: "MICROPHONE_ACCESS",
		LOCAL_NETWORK: "LOCAL_NETWORK",
		CONTACTS_ACCESS: "CONTACTS_ACCESS",
		WRITE_MEDIA_STORAGE: "WRITE_MEDIA_STORAGE",
	},
	Status: {
		AUTHORIZED: "AUTHORIZED",
		DENIED: "DENIED",
		RESTRICTED: "RESTRICTED",
		UNSUPPORTED: "UNSUPPORTED",
	},

	PERMISSION_REQUEST_PROTOCOL_METHOD_REQUEST_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	PERMISSION_REQUEST_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	HAS_PERMISSIONS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	HAS_PERMISSIONS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SUPPORTS_PERMISSIONS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SUPPORTS_PERMISSIONS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR: Types.ProtocolMethodDescriptor,

	hasPermissions: (PermissionsProtocol, permissions: Array<string>) -> Promise<Table>,
	requestPermissions: (PermissionsProtocol, permissions: Array<string>) -> Promise<Table>,
	getSupportedPermissionsList: (PermissionsProtocol) -> Promise<Table>,
	supportsPermissions: (PermissionsProtocol, permissions: Array<string>) -> Promise<boolean>,
	checkOrRequestPermissions: (PermissionsProtocol, permissions: Array<string>) -> Promise<boolean>,

	subscriber: Types.Subscriber,
}

return nil

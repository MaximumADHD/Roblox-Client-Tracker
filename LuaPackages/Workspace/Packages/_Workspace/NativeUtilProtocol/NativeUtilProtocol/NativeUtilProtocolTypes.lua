local Root = script.Parent
local Packages = Root.Parent
local Types = require(Packages.MessageBus)

export type SendSMSResponse = {
	sent: boolean?,
}

export type NativeUtilProtocol = {
	SEND_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SUPPORTS_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SUPPORTS_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SWITCH_TO_SETTINGS_APP_METHOD_REQUEST_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SWITCH_TO_SETTINGS_APP_METHOD_RESPONSE_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SUPPORTS_SWITCH_TO_SETTINGS_APP_METHOD_REQUEST_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SUPPORTS_SWITCH_TO_SETTINGS_APP_METHOD_RESPONSE_DESCRIPTOR: Types.ProtocolMethodDescriptor,

	GET_SMS_OTP_METHOD_REQUEST_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	GET_SMS_OTP_METHOD_RESPONSE_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SUPPORTS_GET_SMS_OTP_METHOD_REQUEST_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SUPPORTS_GET_SMS_OTP_METHOD_RESPONSE_DESCRIPTOR: Types.ProtocolMethodDescriptor,

	GET_PHONE_NUMBER_METHOD_REQUEST_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	GET_PHONE_NUMBER_METHOD_RESPONSE_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SUPPORTS_GET_PHONE_NUMBER_METHOD_REQUEST_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SUPPORTS_GET_PHONE_NUMBER_METHOD_RESPONSE_DESCRIPTOR: Types.ProtocolMethodDescriptor,

	sendSMS: (NativeUtilProtocol, params: Types.Table) -> Types.Promise<SendSMSResponse?>,
	supportsSMS: (NativeUtilProtocol) -> Types.Promise<boolean?>,

	switchToSettingsApp: (NativeUtilProtocol) -> Types.Promise<nil>,
	supportsSwitchToSettingsApp: (NativeUtilProtocol) -> Types.Promise<boolean?>,

	getPhoneNumber: (NativeUtilProtocol) -> Types.Promise<string?>,
	supportsGetPhoneNumber: (NativeUtilProtocol) -> Types.Promise<boolean?>,

	getSMSOTP: (NativeUtilProtocol) -> Types.Promise<string?>,
	supportsGetSMSOTP: (NativeUtilProtocol) -> Types.Promise<boolean?>,

	subscriber: Types.Subscriber,
}

return nil

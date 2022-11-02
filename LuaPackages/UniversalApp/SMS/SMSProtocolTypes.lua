local CorePackages = game:GetService("CorePackages")
local Types = require(CorePackages.Workspace.Packages.MessageBus)

export type SendSMSResponse = {
	sent: boolean?,
}

export type SMSProtocol = {
	SEND_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SUPPORTS_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SUPPORTS_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR: Types.ProtocolMethodDescriptor,

	sendSMS: (SMSProtocol, params: Types.Table) -> Types.Promise<SendSMSResponse?>,
	supportsSMS: (SMSProtocol) -> Types.Promise<boolean?>,

	subscriber: Types.Subscriber,
}

return nil

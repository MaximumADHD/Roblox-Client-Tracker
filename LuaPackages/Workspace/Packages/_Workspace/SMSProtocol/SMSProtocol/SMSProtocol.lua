local Root = script.Parent
local Packages = Root.Parent

local MessageBusPackage = require(Packages.MessageBus)
local MessageBus = MessageBusPackage.MessageBus
local Promise = require(Packages.Promise)
local t = require(Packages.t)

local getFFlagLuaSMSProtocol = require(script.Parent.Flags.getFFlagLuaSMSProtocol)

local Types = require(script.Parent.SMSProtocolTypes)

type Promise<T> = MessageBusPackage.Promise<T>

export type SMSProtocol = Types.SMSProtocol
export type SendSMSResponse = Types.SendSMSResponse

export type SMSProtocolModule = SMSProtocol & {
	new: () -> SMSProtocol,
	default: SMSProtocol,
}

local PROTOCOL_NAME = "SMSProtocol"

local SEND_SMS_METHOD_NAME = "sendSMS"
local SUPPORTS_SMS_METHOD_NAME = "supportsSMS"

local returnParamsValidator = t.strictInterface({
	sent = t.optional(t.boolean),
})

local sendParamsValidator = t.strictInterface({
	address = t.string,
	message = t.string,
})

local SMSProtocol: SMSProtocolModule = {
	SEND_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = SEND_SMS_METHOD_NAME,
		validateParams = sendParamsValidator,
	},
	SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = SEND_SMS_METHOD_NAME,
		validateParams = returnParamsValidator,
	},
	SUPPORTS_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = SUPPORTS_SMS_METHOD_NAME,
		validateParams = t.table,
	},
	SUPPORTS_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = SUPPORTS_SMS_METHOD_NAME,
		validateParams = t.table,
	},
} :: SMSProtocolModule;
(SMSProtocol :: any).__index = SMSProtocol

function SMSProtocol.new(): SMSProtocol
	local self = setmetatable({
		subscriber = MessageBus.Subscriber.new(),
	}, SMSProtocol)
	return (self :: any) :: SMSProtocol
end

--[[
Open the system SMS

@return promise<boolean>: The sent status of the sms true is sent
]]

function SMSProtocol:sendSMS(params: MessageBusPackage.Table): Promise<SendSMSResponse?>
	if not getFFlagLuaSMSProtocol() then
		return Promise.resolve()
	end

	local promise = Promise.new(function(resolve, _)
		local desc = self.SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR
		self.subscriber:subscribeProtocolMethodResponse(desc, function(response: Types.SendSMSResponse)
			self.subscriber:unsubscribeToProtocolMethodResponse(desc)
			resolve(response)
		end)
	end)

	MessageBus.publishProtocolMethodRequest(self.SEND_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR, params, {})

	return promise
end

--[[
Check if sms are supported by this device

@return promise<boolean>: returns true if consmstacts are
supported by the device and false if sms are not supported
]]

function SMSProtocol:supportsSMS(): Promise<boolean?>
	if not getFFlagLuaSMSProtocol() then
		return Promise.resolve()
	end

	local promise = Promise.new(function(resolve, _)
		local desc = self.SUPPORTS_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR
		self.subscriber:subscribeProtocolMethodResponse(desc, function(params: { support: boolean })
			self.subscriber:unsubscribeToProtocolMethodResponse(desc)
			resolve(params.support)
		end)
	end)
	MessageBus.publishProtocolMethodRequest(
		self.SUPPORTS_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
		-- need to pass in a dummy variable otherwise Android will not work
		-- because it converts `{}` into `[]` which fails inside of MessageBus.java
		{ includeStatus = false },
		{}
	)
	return promise
end

SMSProtocol.default = SMSProtocol.new()

return SMSProtocol

local Root = script.Parent
local Packages = Root.Parent

local MessageBusPackage = require(Packages.MessageBus)
local MessageBus = MessageBusPackage.MessageBus
local Promise = require(Packages.Promise)
local t = require(Packages.t)

local getFFlagLuaNativeUtilProtocol = require(script.Parent.Flags.getFFlagLuaNativeUtilProtocol)
local getFFlagLuaSwitchToSettingsApp = require(script.Parent.Flags.getFFlagLuaSwitchToSettingsApp)
local getFFlagLuaNativeUtilEnableSMSHandling = require(Packages.SharedFlags).getFFlagLuaNativeUtilEnableSMSHandling
local getFFlagLuaGetSMSOTP = require(script.Parent.Flags.getFFlagLuaGetSMSOTP)
local Types = require(script.Parent.NativeUtilProtocolTypes)

type Promise<T> = MessageBusPackage.Promise<T>

export type NativeUtilProtocol = Types.NativeUtilProtocol
export type SendSMSResponse = Types.SendSMSResponse

export type NativeUtilProtocolModule = NativeUtilProtocol & {
	new: () -> NativeUtilProtocol,
	default: NativeUtilProtocol,
}

local PROTOCOL_NAME = "NativeUtilProtocol"

local SEND_SMS_METHOD_NAME = "sendSMS"
local SUPPORTS_SMS_METHOD_NAME = "supportsSMS"
local SWITCH_TO_SETTING_APP_METHOD_NAME = "switchToSettingsApp"
local SUPPORTS_SWITCH_TO_SETTING_APP_METHOD_NAME = "supportsSwitchToSettingsApp"
local GET_SMS_OTP_METHOD_NAME = "getSMSOTP"
local SUPPORTS_GET_SMS_OTP_METHOD_NAME = "supportsGetSMSOTP"

local returnParamsValidator = t.strictInterface({
	sent = t.optional(t.boolean),
})

local returnStringParamsValidator = t.strictInterface({
	code = t.optional(t.string),
})

local sendParamsValidator = t.strictInterface({
	address = t.string,
	message = t.string,
})

local NativeUtilProtocol: NativeUtilProtocolModule = {
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
	SWITCH_TO_SETTINGS_APP_METHOD_REQUEST_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = SWITCH_TO_SETTING_APP_METHOD_NAME,
	},
	SWITCH_TO_SETTINGS_APP_METHOD_RESPONSE_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = SWITCH_TO_SETTING_APP_METHOD_NAME,
	},
	SUPPORTS_SWITCH_TO_SETTINGS_APP_METHOD_REQUEST_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = SUPPORTS_SWITCH_TO_SETTING_APP_METHOD_NAME,
		validateParams = t.table,
	},
	SUPPORTS_SWITCH_TO_SETTINGS_APP_METHOD_RESPONSE_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = SUPPORTS_SWITCH_TO_SETTING_APP_METHOD_NAME,
		validateParams = t.table,
	},
	GET_SMS_OTP_METHOD_REQUEST_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = GET_SMS_OTP_METHOD_NAME,
		validateParams = t.table,
	},
	GET_SMS_OTP_METHOD_RESPONSE_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = GET_SMS_OTP_METHOD_NAME,
		validateParams = returnStringParamsValidator,
	},
	SUPPORTS_GET_SMS_OTP_METHOD_REQUEST_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = SUPPORTS_GET_SMS_OTP_METHOD_NAME,
		validateParams = t.table,
	},
	SUPPORTS_GET_SMS_OTP_METHOD_RESPONSE_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = SUPPORTS_GET_SMS_OTP_METHOD_NAME,
		validateParams = t.table,
	},
} :: NativeUtilProtocolModule;
(NativeUtilProtocol :: any).__index = NativeUtilProtocol

function NativeUtilProtocol.new(): NativeUtilProtocol
	local self = setmetatable({
		subscriber = MessageBus.Subscriber.new(),
	}, NativeUtilProtocol)
	return (self :: any) :: NativeUtilProtocol
end

--[[
Open the system SMS

@return promise<boolean>: The sent status of the sms true is sent
]]

function NativeUtilProtocol:sendSMS(params: MessageBusPackage.Table): Promise<SendSMSResponse?>
	if not getFFlagLuaNativeUtilProtocol() or not getFFlagLuaNativeUtilEnableSMSHandling() then
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

@return promise<boolean>: returns true if SMS are
supported by the device and false if sms are not supported
]]

function NativeUtilProtocol:supportsSMS(): Promise<boolean?>
	if not getFFlagLuaNativeUtilProtocol() or not getFFlagLuaNativeUtilEnableSMSHandling() then
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

--[[
Switch to the settings app

@return promise<nil>: The request has been processed
]]

function NativeUtilProtocol:switchToSettingsApp(): Promise<nil>
	if not getFFlagLuaNativeUtilProtocol() or not getFFlagLuaSwitchToSettingsApp() then
		return Promise.resolve()
	end

	local promise = Promise.new(function(resolve, _)
		local desc = self.SWITCH_TO_SETTINGS_APP_METHOD_RESPONSE_DESCRIPTOR
		self.subscriber:subscribeProtocolMethodResponse(desc, function(e)
			self.subscriber:unsubscribeToProtocolMethodResponse(desc)
			resolve()
		end)
	end)

	MessageBus.publishProtocolMethodRequest(
		self.SWITCH_TO_SETTINGS_APP_METHOD_REQUEST_DESCRIPTOR,
		-- need to pass in a dummy variable otherwise Android will not work
		-- because it converts `{}` into `[]` which fails inside of MessageBus.java
		{ includeStatus = false },
		{}
	)
	return promise
end

--[[
Check if switching to the settings app is supported by this device

@return promise<boolean>: returns true if switching is
supported by the device and false if not supported
]]

function NativeUtilProtocol:supportsSwitchToSettingsApp(): Promise<boolean?>
	if not getFFlagLuaNativeUtilProtocol() or not getFFlagLuaSwitchToSettingsApp() then
		return Promise.resolve()
	end

	local promise = Promise.new(function(resolve, _)
		local desc = self.SUPPORTS_SWITCH_TO_SETTINGS_APP_METHOD_RESPONSE_DESCRIPTOR
		self.subscriber:subscribeProtocolMethodResponse(desc, function(params: { support: boolean })
			self.subscriber:unsubscribeToProtocolMethodResponse(desc)
			resolve(params.support)
		end)
	end)
	MessageBus.publishProtocolMethodRequest(
		self.SUPPORTS_SWITCH_TO_SETTINGS_APP_METHOD_REQUEST_DESCRIPTOR,
		-- need to pass in a dummy variable otherwise Android will not work
		-- because it converts `{}` into `[]` which fails inside of MessageBus.java
		{ includeStatus = false },
		{}
	)
	return promise
end

--[[
Get the SMS OTP code

@return promise<string>: The OTP code
]]

function NativeUtilProtocol:getSMSOTP(): Promise<string?>
	if not getFFlagLuaNativeUtilProtocol() or not getFFlagLuaGetSMSOTP() then
		return Promise.resolve()
	end
	local promise = Promise.new(function(resolve, _)
		local desc = self.GET_SMS_OTP_METHOD_RESPONSE_DESCRIPTOR
		self.subscriber:subscribeProtocolMethodResponse(desc, function(params: { code: string })
			self.subscriber:unsubscribeToProtocolMethodResponse(desc)
			resolve(params.code)
		end)
	end)

	MessageBus.publishProtocolMethodRequest(
		self.GET_SMS_OTP_METHOD_REQUEST_DESCRIPTOR,
		-- need to pass in a dummy variable otherwise Android will not  work
		-- because it converts `{}` into `[]` which fails inside of MessageBus.java
		{ includeStatus = false },
		{}
	)
	return promise
end

--[[
	Check if get SMS OTP is supported by this device
	
	@return promise<boolean>: returns true if getSMSOTP is
	supported by the device and false if not supported
	]]

function NativeUtilProtocol:supportsGetSMSOTP(): Promise<boolean?>
	if not getFFlagLuaNativeUtilProtocol() or not getFFlagLuaGetSMSOTP() then
		return Promise.resolve()
	end

	local promise = Promise.new(function(resolve, _)
		local desc = self.SUPPORTS_GET_SMS_OTP_METHOD_RESPONSE_DESCRIPTOR
		self.subscriber:subscribeProtocolMethodResponse(desc, function(params: { support: boolean })
			self.subscriber:unsubscribeToProtocolMethodResponse(desc)
			resolve(params.support)
		end)
	end)
	MessageBus.publishProtocolMethodRequest(
		self.SUPPORTS_GET_SMS_OTP_METHOD_REQUEST_DESCRIPTOR,
		-- need to pass in a dummy variable otherwise Android will not  work
		-- because it converts `{}` into `[]` which fails inside of MessageBus.java
		{ includeStatus = false },
		{}
	)
	return promise
end

NativeUtilProtocol.default = NativeUtilProtocol.new()

return NativeUtilProtocol

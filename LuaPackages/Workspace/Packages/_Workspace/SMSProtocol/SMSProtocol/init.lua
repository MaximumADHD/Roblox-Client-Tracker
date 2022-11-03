local SMSProtocol = require(script.SMSProtocol)
local Types = require(script.SMSProtocolTypes)

export type SMSProtocol = Types.SMSProtocol
export type SendSMSResponse = Types.SendSMSResponse

return {
	SMSProtocol = SMSProtocol,
}

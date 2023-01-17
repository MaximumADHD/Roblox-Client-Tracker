local NativeUtilProtocol = require(script.NativeUtilProtocol)
local Types = require(script.NativeUtilProtocolTypes)

export type NativeUtilProtocol = Types.NativeUtilProtocol
export type SendSMSResponse = Types.SendSMSResponse

return {
	NativeUtilProtocol = NativeUtilProtocol,
}

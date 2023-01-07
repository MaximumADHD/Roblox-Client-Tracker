local Types = require(script.ExternalContentSharingProtocolTypes)

export type ExternalContentSharingProtocolShareTextData = Types.ExternalContentSharingProtocolShareTextData
export type ExternalContentSharingProtocolShareUrlData = Types.ExternalContentSharingProtocolShareUrlData
export type ExternalContentSharingProtocol = Types.ExternalContentSharingProtocol

return {
	ExternalContentSharingProtocol = require(script.ExternalContentSharingProtocol),

	Flags = {
		GetFFlagLuaAppNewShareSheet = require(script.Flags.GetFFlagLuaAppNewShareSheet),
	},
}

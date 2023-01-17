local CredentialsProtocol = require(script.CredentialsProtocol)
local Types = require(script.CredentialsProtocolTypes)

local GetFFlagLuaAppEnableCredentialsProtocol = require(script.Flags.GetFFlagLuaAppEnableCredentialsProtocol)
local GetFIntLuaAppCredentialsProtocolTimeout = require(script.Flags.GetFIntLuaAppCredentialsProtocolTimeout)
local GetFIntLuaAppCredentialsProtocolAvailableTimeout =
	require(script.Flags.GetFIntLuaAppCredentialsProtocolAvailableTimeout)

export type CredentialsProtocol = Types.CredentialsProtocol

return {
	CredentialsProtocol = CredentialsProtocol,

	Flags = {
		GetFFlagLuaAppEnableCredentialsProtocol = GetFFlagLuaAppEnableCredentialsProtocol,
		GetFIntLuaAppCredentialsProtocolTimeout = GetFIntLuaAppCredentialsProtocolTimeout,
		GetFIntLuaAppCredentialsProtocolAvailableTimeout = GetFIntLuaAppCredentialsProtocolAvailableTimeout,
	},
}

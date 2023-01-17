local defaultTimeoutSeconds = 2

game:DefineFastInt("LuaAppCredentialsProtocolAvailableTimeout", defaultTimeoutSeconds)

return function()
	local timeout = game:GetFastInt("LuaAppCredentialsProtocolAvailableTimeout")
	if timeout <= 0 then
		return defaultTimeoutSeconds
	end
	return timeout
end

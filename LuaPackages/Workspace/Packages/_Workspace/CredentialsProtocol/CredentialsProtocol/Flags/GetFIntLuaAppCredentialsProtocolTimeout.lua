local minimumTimeoutSeconds = 20

game:DefineFastInt("LuaAppCredentialsProtocolTimeout", minimumTimeoutSeconds)

return function()
	local timeout = game:GetFastInt("LuaAppCredentialsProtocolTimeout")
	if timeout <= minimumTimeoutSeconds then
		return minimumTimeoutSeconds
	end
	return timeout
end

game:DefineFastFlag("LuaAppSendLogsToBacktrace", false)

return function()
	return game:GetFastFlag("LuaAppSendLogsToBacktrace")
end
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Analytics = require(ExperienceChat.Analytics)

return function(service: ScriptContext, mainScriptInstance, isServer)
	service.Error:Connect(function(_message, stackTrace, scriptInstance)
		if scriptInstance == mainScriptInstance or (stackTrace and string.find(stackTrace, "ExperienceChat")) then
			local counterName = if isServer then "expChatErrorCountServer" else "expChatErrorCountClient"
			Analytics.reportCounter(counterName)
		end
	end)
end

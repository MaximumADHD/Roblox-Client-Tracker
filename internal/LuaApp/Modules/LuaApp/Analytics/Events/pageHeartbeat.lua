-- pageHeartbeat : fires periodically when a view has been presented to a user for predetermined intervals
-- beatInterval : (number) the current interval of beats. This should increment once per pulse and reset every pageLoad
-- luaPage : (optional, string) the current page the event is firing from
return function(eventStreamImpl, beatInterval, luaPage)
	assert(type(beatInterval) == "number", "Expected beatInterval to be a number")

	local eventName = "pageHeartbeat"
	local eventContext = string.format("%s%d", "heartbeat", beatInterval)

	eventStreamImpl:setRBXEventStream(eventContext, eventName, {
		url = luaPage,
	})
end
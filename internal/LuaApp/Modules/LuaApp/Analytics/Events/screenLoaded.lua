-- screenLoaded : fires when a screen is presented to a user
-- eventContext : (string) the location or context in which the event is occurring.
return function(eventStreamImpl, eventContext)
	assert(type(eventContext) == "string", "Expected eventContext to be a string")

	local eventName = "screenLoaded"

	eventStreamImpl:setRBXEventStream(eventContext, eventName, nil)
end


-- NOTE - this should not be confused with pageLoad, which is identical in every way except event name
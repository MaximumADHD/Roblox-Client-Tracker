-- userInteractions : sent when an interaction is detected on any page.
-- eventContext : (string) the location or context in which the event is occurring.
return function(eventStreamImpl, eventContext)
	local eventName = "userInteractions"

	assert(type(eventContext) == "string", "Expected eventContext to be a string")

	eventStreamImpl:setRBXEventStream(eventContext, eventName, nil)
end

-- possible values for userInteractions include:
--     mouse
--     touch
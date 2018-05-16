-- buttonClick : fires when a button is pressed
-- eventContext : (string) the location or context in which the event is occurring.
-- buttonName : (string) the name of the pressed button
-- extraData : (optional, string) contextual info about the button, when multiple buttons have the same name.
return function(eventStreamImpl, eventContext, buttonName, extraData)
	assert(type(eventContext) == "string", "Expected eventContext to be a string")
	assert(type(buttonName) == "string", "Expected buttonName to be a string")

	local eventName = "buttonClick"
	local additionalArgs = {
		btn = buttonName
	}

	if extraData ~= nil then
		assert(type(extraData) == "string", "Expected extraData to be a string")
		additionalArgs.cstm = extraData
	end

	eventStreamImpl:setRBXEventStream(eventContext, eventName, additionalArgs)
end
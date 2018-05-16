-- formFieldValidation : fires when a field is validated with local logic and an error is displayed to a user
-- eventContext : (string) the location or context in which the event is occurring.
-- field : (string) the name of the validated field.
-- errorText : (string) the error message displayed.
return function(eventStreamImpl, eventContext, field, errorText)
	assert(type(eventContext) == "string", "Expected eventContext to be a string")
	assert(type(field) == "string", "Expected field to be a string")
	assert(type(errorText) == "string", "Expected errorText to be a string")

	local eventName = "formFieldValidation"
	local additionalArgs = {
		field = field,
		error = errorText
	}

	eventStreamImpl:setRBXEventStream(eventContext, eventName, additionalArgs)
end
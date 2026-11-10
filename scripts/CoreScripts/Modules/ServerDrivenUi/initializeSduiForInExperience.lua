local function initializeSduiForInExperience()
	require(script.Parent.registerInExperienceComponents)()
	require(script.Parent.registerInExperienceActions)()
	require(script.Parent.registerInExperienceTelemetryHandlers)()
end

return initializeSduiForInExperience

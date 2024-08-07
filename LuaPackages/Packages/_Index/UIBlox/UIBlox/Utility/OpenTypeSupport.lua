local OpenTypeSupport = {}
OpenTypeSupport.__index = OpenTypeSupport

-- Return current supported OpenType feature list
function OpenTypeSupport:getSupportedFeatures()
	return "zero, ss03"
end

function OpenTypeSupport:getPasswordStylisticAlternative()
	return "zero, ss03"
end

function OpenTypeSupport:getUserNameStylisticAlternative()
	return "zero, ss03"
end

return OpenTypeSupport

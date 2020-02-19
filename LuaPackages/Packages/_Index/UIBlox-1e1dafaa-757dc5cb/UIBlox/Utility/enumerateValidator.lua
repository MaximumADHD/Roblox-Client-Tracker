-- Validator for custom enums created by enumerate

return function(enum)
	return function(value)
		return enum.isEnumValue(value)
	end
end
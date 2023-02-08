-- Creates a default read function for a type policy
--[[
	FIXME LUAFDN-1501: This helps avoid console spam when a field is nil.
	apollo client lua does not currently make the distinction
	between nil and undefined, which results in a warning when
	trying to write a nil field.
]]
return function(defaultValue)
	return function(_self, existingValue)
		return existingValue or defaultValue
	end
end

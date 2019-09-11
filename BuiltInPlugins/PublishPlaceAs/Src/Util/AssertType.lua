--[[
	Helper functions for asserting type
]]

local AssertType = {}

function AssertType.assertType(value, expectedType, identifier)
	assert(typeof(value) == expectedType, identifier.." must be "..expectedType..", received ("..typeof(value)..")")
end

function AssertType.assertNullableType(value, expectedType, identifier)
	assert(typeof(value) == expectedType or typeof(value) == "nil", identifier.." must be "..expectedType
		.." or nil, received ("..typeof(value)..")")
end

return AssertType
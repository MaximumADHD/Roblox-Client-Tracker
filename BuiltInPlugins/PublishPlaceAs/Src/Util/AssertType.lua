--[[
	Helper functions for asserting type
]]

local AssertType = {}

function AssertType.assertType(value, expectedType, identifier)
	assert(
		type(value) == expectedType,
		identifier .. " must be " .. expectedType .. ", received (" .. type(value) .. ")"
	)
end

function AssertType.assertNullableType(value, expectedType, identifier)
	assert(
		type(value) == expectedType or type(value) == "nil",
		identifier .. " must be " .. expectedType .. " or nil, received (" .. type(value) .. ")"
	)
end

return AssertType

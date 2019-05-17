local function IsRunningInStudio()
	return game:GetService("RunService"):IsStudio()
end

local function assert_(condition, message)
	if IsRunningInStudio() or _G.__TESTEZ_RUNNING_TEST__ then
		assert(condition, message)
	end
end

local ArgCheck = {}

function ArgCheck.isNonNegativeNumber(value, name)
	-- Temporarily disabled outside of studio/tests. See MOBLUAPP-1161.
	assert_(typeof(value) == "number" and value >= 0, string.format("expects %s to be a non-negative number!", name))

	return value
end

function ArgCheck.isType(value, expectedType, name)
	assert_(typeof(value) == expectedType,
			string.format("expects %s to be a %s! it was: %s", name, expectedType, typeof(value)))

	return value
end

function ArgCheck.isInTypes(value, expectedTypes, name)
	for _, expectedType in ipairs(expectedTypes) do
		if typeof(value) == expectedType then
			return value
		end
	end

	assert_(false, string.format("expects %s to be one of expectedTypes! it was: %s", name, typeof(value)))

	return value
end

function ArgCheck.isTypeOrNil(value, expectedType, name)
	assert_(value == nil or typeof(value) == expectedType,
			string.format("expects %s to be a %s! it was: %s", name, expectedType, typeof(value)))

	return value
end

function ArgCheck.isNotNil(value, name)
	assert_(value ~= nil, string.format("expects %s to be not nil!", name))

	return value
end

function ArgCheck.isNonEmptyString(value, name)
	assert_(typeof(value) == "string" and value ~= "" ,
			string.format("expects %s to be a non-empty string!", name))

	return value
end

function ArgCheck.isEqual(value, expectedValue, name)
	assert_(value == expectedValue, string.format("expects %s to equal %s! it was: %s", name, tostring(expectedValue), tostring(value)))

	return value
end

function ArgCheck.assert(...)
	assert_(...)
end

return ArgCheck

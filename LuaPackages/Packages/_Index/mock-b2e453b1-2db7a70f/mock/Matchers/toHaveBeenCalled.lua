local root = script.Parent.Parent
local MagicMock = require(root.MagicMock)
local Spy = require(root.Spy)
local getCalls = require(root.getCalls)

return function(mock, expectedTimesCalled)
	local isAMock = MagicMock.is(mock) or Spy.is(mock)
	if not isAMock then
		return {
			pass = false,
			message = string.format("expect(mock) must be a MagicMock or Spy when .toHaveBeenCalled is used. Given %s instead", tostring(mock))
		}
	end

	local actualTimesCalled = #getCalls(mock)
	local pass
	local message
	if expectedTimesCalled then
		local isPositiveInteger = type(expectedTimesCalled) == "number" and expectedTimesCalled > 0 and expectedTimesCalled % 1 == 0
		if isPositiveInteger then
			pass = expectedTimesCalled == actualTimesCalled
			message = pass and string.format("Expected %s to not have been called exactly %d times.", tostring(mock), expectedTimesCalled)
				or string.format("Expected %s to have been called %d times. Was called %d times instead.", tostring(mock), expectedTimesCalled, actualTimesCalled)
		else
			return {
				pass = false,
				message = string.format("expectedTimesCalled must be a positive integer. Given %s instead.", tostring(expectedTimesCalled)),
			}
		end
	else
		pass = actualTimesCalled > 0
		message = pass and string.format("Expected %s to never have been called. Was called %d times instead.", tostring(mock), actualTimesCalled)
			or string.format("Expected %s to have been called at least once.", tostring(mock))
	end

	return {
		pass = pass,
		message = message,
	}
end

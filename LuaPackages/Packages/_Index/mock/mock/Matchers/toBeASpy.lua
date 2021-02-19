local root = script.Parent.Parent
local Spy = require(root.Spy)

return function(value)
	local pass = Spy.is(value)
	return {
		pass = pass,
		message = pass and "Expected object to be anything but a Spy."
			or string.format("Expected object to be a Spy. Got %q instead.", tostring(value)),
	}
end

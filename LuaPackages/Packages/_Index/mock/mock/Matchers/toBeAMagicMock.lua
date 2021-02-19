local root = script.Parent.Parent
local MagicMock = require(root.MagicMock)

return function(value)
	local pass = MagicMock.is(value)
	return {
		pass = pass,
		message = pass and "Expected object to be anything but a MagicMock."
			or string.format("Expected object to be a MagicMock. Got %q instead.", tostring(value)),
	}
end

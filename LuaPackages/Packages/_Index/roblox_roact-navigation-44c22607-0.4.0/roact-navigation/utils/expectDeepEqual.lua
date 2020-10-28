local TableUtilities = require(script.Parent.TableUtilities)

return function(a, b)
	local success, innerMessage = TableUtilities.DeepEqual(a, b)

	if not success then
		local message = ("Values were not deep-equal.\n%s"):format(innerMessage)
		error(message, 2)
	end
end

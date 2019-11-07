local Roact = require(script.Parent.Parent.Parent.Roact)

-- Returns true if the provided object can be used by Roact.createElement().
-- We have this method because Roact does not expose a type-checking API yet.
return function(elementType)
	local theType = type(elementType)

	return theType == "string" or theType == "function" or elementType == Roact.Portal or
		(theType == "table" and type(elementType.render) == "function")
end


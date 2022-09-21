local root = script.Parent
local Packages = root.Parent

local Promise = require(Packages.Promise)

local function unwrapPromiseError(errorObject)
	while Promise.Error.is(errorObject) do
		errorObject = errorObject.error
	end
	return errorObject
end

return unwrapPromiseError

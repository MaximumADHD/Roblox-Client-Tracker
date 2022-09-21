local ErrorModule = script.Parent
local Error = require(ErrorModule.Error)

type Error = Error.Error

local function describeError(err: any)
	local errorType = typeof(err)

	if errorType == "string" then
		local _, endOfStackFrame = err:find(":[%d]+: ")

		return Error.new(if endOfStackFrame then err:sub(endOfStackFrame + 1) else err, 1)
	end

	return err
end

local function try<T..., U...>(callback: (T...) -> U..., ...: T...): (boolean, U...)
	return xpcall(callback, describeError, ...)
end

return try

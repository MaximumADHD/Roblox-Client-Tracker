--[[
	Validate() provides a mechanism to validate input arguments and
	internal state for your components. You can call it like this:

	function myFunc(arg1, arg2)
		validate(arg1 ~= arg2, "arg1 (%s) and arg2 (%s) must be different!",
			tostring(arg1), tostring(arg2))
		return doSomething(arg1, arg2)
	end

	The error will be surfaced at the *call site* of your function.
]]
return function(result, ...)
	if not result then
		error(string.format(...), 3)
	end

	return result
end

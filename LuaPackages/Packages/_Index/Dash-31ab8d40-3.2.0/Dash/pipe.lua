--[=[
	Creates a function that returns the result of passing a value through a pipeline of functions.
	Each function in the pipeline receives the result of the previous function.
	Functions are executed from left to right.

	@param f The first function in the pipeline.
	@param ... Additional functions to pipe.
	@return A function that returns the result of passing a value through the pipeline.
	@error "Expected a function" when any of the arguments is not a function.
	@example
	```luau
		local function addOne(n)
			return n + 1
		end
		local function double(n)
			return n * 2
		end
		local addThenDouble = pipe(addOne, double)
		print(addThenDouble(2)) -- prints 6 ((2 + 1) * 2)
	```
]=]
local function pipe<Args...>(f: (Args...) -> any, ...: (...any) -> any): (Args...) -> any
	local fnCount = select("#", ...)
	if fnCount == 0 then
		return f
	end
	local fns = { ... }
	return function(...)
		local result = { f(...) }
		for i = 1, fnCount do
			result = { fns[i](unpack(result)) }
		end
		return unpack(result)
	end
end

return pipe

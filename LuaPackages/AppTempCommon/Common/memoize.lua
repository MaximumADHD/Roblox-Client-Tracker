--[[
	memoize creates a function as a wrapper that caches the last outputs of a function.
	This is useful if you know that the function should return the same output every
	time it is run with the same inputs. The function should only return an output, and
	not have any side effects. These side effects are not cached.

	Without memoize's caching, even though the function ouputs the same values, the
	memory locations of the values are different; tables made in the function, even if
	they have the same values, won't be the same tables.

	memoize only caches the last set of inputs and ouputs. This means that it is only
	helpful when the function is likely to be called with the same inputs multiple
	times in a row. This is the case with most Roact use cases.

	Note that memoize only does a   ** shallow check on table inputs **   . This means
	that if the same table is input but the elements of the table are different then
	it will be assumed that the table has not changed.

	In addition to all the previous warnings, memoize strips trailing nils. This means
	that if foo is a memoized function and we call foo(), then foo(nil) will return a
	cached value. This is opposed to how print handles input. print() only outputs a
	new line, but print(nil) outputs "nil". This is because varargs can detect the
	number of arguments passed in. So, be careful when using memoize with varargs.
	Trailing nils will be stripped.

	The wrapper can take any number of inputs and give any number of outputs.
	Leading and interspersed nils are handled gracefully. Trailing nils on the input
	are stripped.
]]
local function captureSize(...)
	return {...}, select("#", ...)
end

local function memoize(func)
	assert(type(func) == "function", "memoize requires a function to memoize")

	local lastArgs
	local lastNumArgs
	local lastOutput
	local lastNumOutput

	return function(...)
		local numArgs = select("#", ...)

		while numArgs > 0 and select(numArgs, ...) == nil do
			numArgs = numArgs - 1
		end

		if numArgs ~= lastNumArgs then
			lastArgs = {...}
			lastNumArgs = numArgs
			lastOutput, lastNumOutput = captureSize(func(...))
			return unpack(lastOutput, 1, lastNumOutput)
		end

		for i = 1, lastNumArgs do
			if select(i, ...) ~= lastArgs[i] then
				lastArgs = {...}
				lastOutput, lastNumOutput = captureSize(func(...))
				break
			end
		end

		return unpack(lastOutput, 1, lastNumOutput)
	end
end

return memoize
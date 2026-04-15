local Dash = script.Parent
local isCallable = require(Dash.isCallable)

--[=[
	Creates a function that memoizes the result of `func`. The memoized function will cache
	results based on the arguments provided. If a resolver function is provided, it will be
	used to generate the cache key from the arguments.

	@param func function -- The function to memoize
	@param resolver function? -- Optional function to resolve the cache key
	@return function -- Returns the memoized function

	@example
	```lua
	local function add(a, b)
		return a + b
	end

	local memoizedAdd = memoize(add)
	print(memoizedAdd(1, 2)) -- Calculates and caches: 3
	print(memoizedAdd(1, 2)) -- Returns from cache: 3

	-- With custom resolver
	local memoizedWithResolver = memoize(add, function(a, b)
		return string.format("%d_%d", a, b)
	end)
	```
]=]
local function memoize(func, resolver)
	assert(isCallable(func), "Expected a function as first argument")
	assert(resolver == nil or isCallable(resolver), "Expected a function or nil as second argument")

	local cache = {}

	return function(...)
		local args = table.pack(...)
		local key

		if resolver then
			key = resolver(...)
		else
			-- Create a cache key from all arguments
			key = ""
			for i = 1, args.n do
				key = key .. tostring(args[i]) .. "|"
			end
		end

		if cache[key] == nil then
			cache[key] = func(...)
		end

		return cache[key]
	end
end

return memoize

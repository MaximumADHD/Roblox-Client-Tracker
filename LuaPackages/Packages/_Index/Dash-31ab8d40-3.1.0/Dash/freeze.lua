local Dash = script.Parent
local Error = require(Dash.Error)
local format = require(Dash.format)

local ReadonlyKey =
	Error.new("ReadonlyKey", "Attempted to write to readonly key {key:?} of frozen object {objectName:?}")
local MissingKey = Error.new("MissingKey", "Attempted to read missing key {key:?} of frozen object {objectName:?}")

--[=[
	Returns a new read-only view of _object_ which prevents any values from being changed.

	@param name The name of the object for improved error message readability.
	@param object The object to freeze, must be a table.
	@param throwIfMissing If `true` then access to a missing key will also throw.
	@return A frozen proxy object that prevents modifications.

	@note
	Unfortunately you cannot iterate using `pairs` or `ipairs` on frozen objects because Luau doesn't support defining these custom iterators in metatables.

	@example
	```luau
		local drink = freeze("Ice Cream", {
			flavor = "mint",
			topping = "sprinkles"
		}, true)
		print(drink.flavor) --> "mint"
		drink.flavor = "vanilla"
		--!> ReadonlyKey: Attempt to write to readonly key "flavor" (a string) of frozen object "Ice Cream"`
		print(drink.syrup) --> nil
		--!> `MissingKey: Attempt to read missing key "syrup" (a string) of frozen object "Ice Cream"`
	```

	@deprecated -- Use `table.freeze` instead
]=]
local function freeze<T>(objectName: string, object: T, throwIfMissing: boolean?): T
	-- We create a proxy so that the underlying object is not affected
	local proxy = {}
	---- TODO (AleksandrSl 06/08/2025): Remove once we can add constraints to generic
	assert(
		type(object) == "table",
		`Attempted to call Dash.freeze with argument #2 of type {type(object)}, but it should be table `
	)
	setmetatable(proxy, {
		__index = function(_, key: any)
			local value = object[key]
			if value == nil and throwIfMissing then
				-- Tried to read a key which isn't present in the underlying object
				MissingKey:throw({
					key = key,
					objectName = objectName,
				})
			end
			return value
		end,
		__newindex = function(_, key: any)
			-- Tried to write to any key
			ReadonlyKey:throw({
				key = key,
				objectName = objectName,
			})
		end,
		__len = function()
			return #object
		end,
		__tostring = function()
			return format("Frozen({})", objectName)
		end,
		__call = function(_, ...)
			-- TODO Luau: Gated check for if a function has a __call value
			local callable: any = object
			return callable(...)
		end,
	})
	-- If we ever able to types this naturally, feel free to drop the cast.
	return (proxy :: unknown) :: T
end

return freeze

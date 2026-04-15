--[=[
	Returns the value at _path_ from _object_. If resolution yields `nil`, _defaultValue_ is returned instead.

	@param object The table to query.
	@param path An array of keys to traverse on _object_.
	@param defaultValue The value to return when the resolved value is `nil`.
	@return The resolved value at _path_, or _defaultValue_ if any step is missing or `nil`.

	@example
	```luau
		get({ a = 1 }, { "a" }) --> 1
	```
	@example
	```luau
		get({ a = { b = 2 }}, { "a", "b" }) --> 2
	```
	@example
	```luau
		get({ a = { b = 2 }}, { "a", "c" }, 5) --> 5
	```
]=]
local function get<T>(object: { [any]: any }, path: { any }, defaultValue: T?): T?
	if object == nil then
		return defaultValue
	end

	local current = object

	for _, key in path do
		if type(current) ~= "table" then
			return defaultValue
		end

		current = current[key]

		if current == nil then
			return defaultValue
		end
	end

	return (current :: unknown) :: T?
end

return get

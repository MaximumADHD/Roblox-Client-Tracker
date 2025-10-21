--[=[
	Checks whether _input_ starts with the string _prefix_.

	@param input The string to check.
	@param prefix The prefix to check for.
	@return `true` if _input_ starts with _prefix_; otherwise `false`.
	@example
	```luau
		startsWith("Fun Roblox Games", "Fun") --> true
	```
	@example
	```luau
		startsWith("Chess", "Fun") --> false
	```
]=]
local function startsWith(input: string, prefix: string): boolean
	return input:sub(1, prefix:len()) == prefix
end

return startsWith

--[=[
	Checks whether _input_ ends with the string _suffix_.

	@return `true` if _input_ ends with _suffix_; otherwise `false`.
	@example
	```luau
	endsWith("Fun Roblox Games", "Games") --> true
	```
	@example
	```luau
	endsWith("Bad Roblox Memes", "Games") --> false
	```
]=]
local function endsWith(input: string, suffix: string): boolean
	return input:sub(-suffix:len()) == suffix
end

return endsWith

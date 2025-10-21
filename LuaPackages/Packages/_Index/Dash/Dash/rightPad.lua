--[=[
	Makes a string of _length_ from _input_ by repeating characters from _suffix_ at the end of the string.

	By default, suffix is " ".

	@param input The string to pad.
	@param length The desired total length of the result.
	@param suffix The character(s) to use for padding; defaults to a single space.
	@return A new string padded to the specified length.
	@example
	```luau
		rightPad("toast", 6) --> "toast "
	```
	@example
	```luau
		rightPad("2", 2, "!") --> "2!"
	```
	@example
	```luau
		rightPad("toast", 10, ":)") --> "toast:):):"
	```
]=]
local function rightPad(input: string, length: number, suffix: string?): string
	local definedSuffix = suffix or " "
	local padLength = length - input:len()
	local remainder = padLength % definedSuffix:len()
	local repetitions = (padLength - remainder) / definedSuffix:len()
	return input .. string.rep(suffix or " ", repetitions) .. definedSuffix:sub(1, remainder)
end

return rightPad

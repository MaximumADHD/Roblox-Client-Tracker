--[=[
	Makes a string of _length_ from _input_ by repeating characters from _prefix_ at the start of the string.

	@param input The string to pad.
	@param length The desired total length of the result.
	@param prefix The character(s) to use for padding; defaults to a single space.
	@return A new string padded to the specified length.
	@example
	```luau
		leftPad("toast", 6) --> " toast"
	```
	@example
	```luau
		leftPad("2", 2, "0") --> "02"
	```
	@example
	```luau
		leftPad("toast", 10, ":)") --> ":):):toast"
	```
]=]
local function leftPad(input: string, length: number, prefix: string?): string
	local definedPrefix = prefix or " "

	local padLength = length - input:len()
	local remainder = padLength % definedPrefix:len()
	local repetitions = (padLength - remainder) / definedPrefix:len()
	return string.rep(definedPrefix or " ", repetitions) .. definedPrefix:sub(1, remainder) .. input
end

return leftPad

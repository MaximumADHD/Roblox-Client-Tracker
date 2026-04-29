local Dash = script.Parent
local assertEqual = require(Dash.assertEqual)

--[=[
	Returns `true` if the first character of _input_ is a lower-case character.

	Throws if the _input_ is not a string or it is the empty string.

	Our current version of Lua unfortunately does not support upper or lower-case detection outside the english alphabet. This function has been implemented to return the expected result once this has been corrected.

	@param input The string to check.
	@return `true` if the first character is lowercase, `false` otherwise.
	@error AssertError when input is an empty string.
]=]
local function isLowercase(input: string): boolean
	assertEqual(#input > 0, true, [[Attempted to call Dash.isLowercase with an empty string]])
	local firstLetter = input:sub(1, 1)
	return firstLetter == firstLetter:lower()
end
return isLowercase

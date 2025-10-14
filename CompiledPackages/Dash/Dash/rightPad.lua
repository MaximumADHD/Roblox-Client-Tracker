--[[
	Makes a string of `length` from `input` by repeating characters from `suffix` at the end of the string.

	By default, suffix is " ".

	@example rightPad("toast", 6) --> "toast "
	@example rightPad("2", 2, "!") --> "2!"
	@example rightPad("toast", 10, ":)") --> "toast:):):"
]]
local function rightPad(input: string, length: number, suffix: string?): string
	local definedSuffix = suffix or " "
	local padLength = length - input:len()
	local remainder = padLength % definedSuffix:len()
	local repetitions = (padLength - remainder) / definedSuffix:len()
	return input .. string.rep(suffix or " ", repetitions) .. definedSuffix:sub(1, remainder)
end

return rightPad

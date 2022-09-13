local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local Util = Plugin.Src.Util
local getNumberFromText = require(Util.getNumberFromText)

return function(name: string, prefix: string): number?
	local foundPrefix = string.sub(name, 1, #prefix) == prefix
	local suffix = string.sub(name, string.len(prefix) + 1)
	local numberFromText = getNumberFromText(suffix)
	local foundSuffix = if numberFromText then true else false
	return if foundPrefix and foundSuffix then numberFromText else nil
end

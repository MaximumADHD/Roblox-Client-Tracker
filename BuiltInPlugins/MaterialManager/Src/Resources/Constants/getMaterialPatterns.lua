local Plugin = script.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local MaterialPatterns = {
	Enum.MaterialPattern.Regular,
	Enum.MaterialPattern.Organic,
}

return function(): _Types.Array<Enum.MaterialPattern>
	return MaterialPatterns
end

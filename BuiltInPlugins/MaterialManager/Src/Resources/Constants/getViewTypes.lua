local Plugin = script.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

export type ViewType = string

local ViewTypes: _Types.Map<string, ViewType> = {
	Grid = "Grid",
	List = "List",
}

return function(): _Types.Map<string, ViewType>
	return ViewTypes
end

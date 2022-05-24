local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	sortDirection: Enum.SortDirection,
	columnIndex: number,
}

return Action(script.Name, function(sortDirection: Enum.SortDirection, columnIndex: number): Props
	return {
		sortDirection = sortDirection,
		columnIndex = columnIndex,
	}
end)

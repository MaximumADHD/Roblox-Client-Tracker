--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local Types = require(ViewportToolingFramework.Types)

export type Direction = "Horizontal" | "Vertical"

local function getToolbarDirection(toolbar: Types.Toolbar): Direction
	return if (toolbar :: any).HorizontalItems == nil then "Vertical" else "Horizontal"
end

return getToolbarDirection

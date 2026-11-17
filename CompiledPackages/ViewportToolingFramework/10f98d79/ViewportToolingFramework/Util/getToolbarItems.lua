--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local Types = require(ViewportToolingFramework.Types)

local function getToolbarItems(toolbar: Types.Toolbar): { Types.ToolbarItem }
	return (toolbar :: any).HorizontalItems or (toolbar :: any).VerticalItems
end

return getToolbarItems

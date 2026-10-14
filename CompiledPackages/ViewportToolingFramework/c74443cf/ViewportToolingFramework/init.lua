--!strict
local FFlagViewportToolingFrameworkRemoveTypes = game:DefineFastFlag("ViewportToolingFrameworkRemoveTypes", false)

local Types = require(script.Types)

-- Feel free to re-export any type from Types that you think you will need.
-- Flagging is not necessary.
export type DropdownItem = Types.DropdownItem
export type ToolbarHorizontalItem = Types.ToolbarHorizontalItem

return {
	SharedFlags = require(script.SharedFlags),
	Toolbar = require(script.Components.Toolbar),

	Types = if FFlagViewportToolingFrameworkRemoveTypes then nil else Types,
}

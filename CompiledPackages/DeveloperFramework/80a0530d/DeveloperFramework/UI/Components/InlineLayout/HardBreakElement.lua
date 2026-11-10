--[[
	Special element that will force the new line when added.
	The only way to add a new line inside a paragraph.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Dash = require(Framework.Parent.Dash)

-- Lame, but at least it's a type (should be close to reality). If we try to infer anything from Symbol it will be any
export type HardBreakElement = {
	name: "InlineLayoutHardBreak",
}

return Dash.Symbol.new("InlineLayoutHardBreak") :: HardBreakElement

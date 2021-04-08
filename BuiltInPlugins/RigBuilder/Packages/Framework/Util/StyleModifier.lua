--[[
	An enum for defining StyleModifiers on components.
	StyleModifiers are used to index into the Style table.

	Example:
		-- This example will make the button brighter when hovered.
		local button = StyleTable.new("Button", function()
			local Default = Style.new({
				BackgroundColor = getColor("Item"),
				[StyleModifier.Hover] = {
					BackgroundColor = getColor("BrightItem"),
				},
			})
		end)
]]

local Framework = script.Parent.Parent

local enumerate = require(Framework.Util.enumerate)
return enumerate("StyleModifier", {
	"Hover",
	"Pressed",
	"Selected",
	"Disabled"
})

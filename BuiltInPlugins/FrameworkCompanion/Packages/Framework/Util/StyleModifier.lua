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

local doesNotExistError = [[
The value '%s' does not exist in StyleModifier.]]

local Framework = script.Parent.Parent
local Symbol = require(Framework.Util.Symbol)

local StyleModifier = {
	Hover = Symbol.named("Hover"),
	Pressed = Symbol.named("Pressed"),
	Selected = Symbol.named("Selected"),
	Disabled = Symbol.named("Disabled"),
}

-- TODO DEVTOOLS-3204: Convert this behavior to an Enum utility
setmetatable(StyleModifier, {
	__index = function(key)
		if StyleModifier[key] then
			return StyleModifier[key]
		else
			error(string.format(doesNotExistError, key))
		end
	end,
	__newindex = function(key)
		error(string.format(doesNotExistError, key))
	end,
})

return StyleModifier

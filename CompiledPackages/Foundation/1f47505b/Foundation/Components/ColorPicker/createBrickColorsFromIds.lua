--[[
	createBrickColorsFromIds

	Utility function to create BrickColor instances from color ID arrays.
	Handles error cases gracefully and provides warnings for invalid IDs.
]]

local function createBrickColorsFromIds(colorIds: { number }): { BrickColor }
	local colors = {}
	for _, colorId in colorIds do
		local success, brickColor = pcall(BrickColor.new, colorId)
		if success and brickColor then
			table.insert(colors, brickColor)
		else
			warn(`createBrickColorsFromIds: Failed to create BrickColor with ID {colorId}`)
		end
	end
	return colors
end

return createBrickColorsFromIds

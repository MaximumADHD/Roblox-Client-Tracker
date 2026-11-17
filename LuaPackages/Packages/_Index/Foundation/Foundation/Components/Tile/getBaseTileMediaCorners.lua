local Foundation = script:FindFirstAncestor("Foundation")

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

export type BaseTileMediaCorners = {
	TopLeftRadius: UDim,
	TopRightRadius: UDim,
	BottomLeftRadius: UDim,
	BottomRightRadius: UDim,
}

local NO_RADIUS = UDim.new(0, 0)

-- Pass the same isContained as the tile; a contained tile's media has square bottom corners
local function getBaseTileMediaCorners(tokens: Tokens, isContained: boolean?): BaseTileMediaCorners
	local radius = UDim.new(0, tokens.Radius.Medium)
	local bottomRadius = if isContained then NO_RADIUS else radius
	return {
		TopLeftRadius = radius,
		TopRightRadius = radius,
		BottomLeftRadius = bottomRadius,
		BottomRightRadius = bottomRadius,
	}
end

return getBaseTileMediaCorners

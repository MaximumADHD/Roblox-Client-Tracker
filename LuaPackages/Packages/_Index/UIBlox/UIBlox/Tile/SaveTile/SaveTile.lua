local ItemTileRoot = script.Parent
local TileRoot = ItemTileRoot.Parent
local UIBloxRoot = TileRoot.Parent

local Roact = require(UIBloxRoot.Parent.Roact)
local t = require(UIBloxRoot.Parent.t)

local Images = require(UIBloxRoot.ImageSet.Images)
local Tile = require(TileRoot.BaseTile.Tile)

local SaveTile = Roact.PureComponent:extend("SaveTile")


local validateProps = t.strictInterface({
	-- Optional boolean indicating whether to create an overlay to round the corners of the image
	hasRoundedCorners = t.optional(t.boolean),

	-- The function that gets called on SaveTile click
	onActivated = t.optional(t.callback),

	-- The item's thumbnail that will show a loading state if nil
	thumbnail = t.optional(t.union(t.string, t.table)),

	-- The item thumbnail's size
	thumbnailSize = t.optional(t.UDim2),
})

SaveTile.defaultProps = {
	hasRoundedCorners = true,
	thumbnail = Images["icons/actionsEditAdd"],
	thumbnailSize = UDim2.new(0, 50, 0, 50),
}

function SaveTile:render()
	assert(validateProps(self.props))

	local hasRoundedCorners = self.props.hasRoundedCorners
	local onActivated = self.props.onActivated
	local thumbnail = self.props.thumbnail
	local thumbnailSize = self.props.thumbnailSize

	return Roact.createElement(Tile, {
		hasRoundedCorners = hasRoundedCorners,
		name = "",
		onActivated = onActivated,
		thumbnail = thumbnail,
		thumbnailSize = thumbnailSize,
	})
end

return SaveTile

local SaveTileRoot = script.Parent
local TileRoot = SaveTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Images = require(UIBlox.App.ImageSet.Images)
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
	thumbnail = Images["icons/actions/edit/add"],
	thumbnailSize = UDim2.new(0, 36, 0, 36),
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

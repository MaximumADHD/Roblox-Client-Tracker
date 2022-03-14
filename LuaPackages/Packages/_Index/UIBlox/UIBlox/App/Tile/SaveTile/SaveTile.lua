local SaveTileRoot = script.Parent
local TileRoot = SaveTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local Images = require(UIBlox.App.ImageSet.Images)
local Tile = require(TileRoot.BaseTile.Tile)

local SaveTile = Roact.PureComponent:extend("SaveTile")


local validateProps = t.strictInterface({
	-- Optional boolean indicating whether to create an overlay to round the corners of the image
	hasRoundedCorners = t.optional(t.boolean),

	-- The function that gets called on SaveTile click
	onActivated = t.optional(t.callback),

	-- Whether the button is disabled
	isDisabled = t.optional(t.boolean),

	-- The item's thumbnail that will show a loading state if nil
	thumbnail = t.optional(t.union(t.string, t.table)),

	-- The item thumbnail's size
	thumbnailSize = t.optional(t.UDim2),

	-- The item thumbnail's image transparency
	thumbnailTransparency = t.optional(t.number),

	-- optional parameters for RoactGamepad
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	thumbnailRef = t.optional(t.table),
})

SaveTile.defaultProps = {
	hasRoundedCorners = true,
	thumbnail = Images["icons/actions/edit/add"],
	thumbnailSize = UDim2.new(0, 36, 0, 36),
	thumbnailTransparency = 0,
}

function SaveTile:render()
	assert(validateProps(self.props))

	local hasRoundedCorners = self.props.hasRoundedCorners
	local onActivated = self.props.onActivated
	local isDisabled = self.props.isDisabled
	local thumbnail = self.props.thumbnail
	local thumbnailSize = self.props.thumbnailSize
	local thumbnailTransparency = self.props.thumbnailTransparency

	return Roact.createElement(Tile, {
		hasRoundedCorners = hasRoundedCorners,
		name = "",
		onActivated = onActivated,
		isDisabled = isDisabled,
		thumbnail = thumbnail,
		thumbnailSize = thumbnailSize,
		thumbnailTransparency = thumbnailTransparency,

		NextSelectionLeft = self.props.NextSelectionLeft,
		NextSelectionRight = self.props.NextSelectionRight,
		NextSelectionUp = self.props.NextSelectionUp,
		NextSelectionDown = self.props.NextSelectionDown,
		[Roact.Ref] = self.props.thumbnailRef,
	})
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(SaveTile, Cryo.Dictionary.join(props, {
		thumbnailRef = ref
	}))
end)

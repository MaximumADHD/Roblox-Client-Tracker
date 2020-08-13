local ItemTileRoot = script.Parent
local TileRoot = ItemTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local enumerateValidator = require(UIBlox.Utility.enumerateValidator)
local Images = require(UIBlox.App.ImageSet.Images)
local ItemRestrictionStatus = require(ItemTileRoot.ItemRestrictionStatus)
local ItemTileStatus = require(ItemTileRoot.ItemTileStatus)
local ItemTileEnums = require(TileRoot.Enum.ItemTileEnums)
local ItemIcon = require(ItemTileRoot.ItemIcon)
local Tile = require(TileRoot.BaseTile.Tile)

local ItemTile = Roact.PureComponent:extend("ItemTile")

local itemTileInterface = t.strictInterface({
	-- The footer Roact element.
	footer = t.optional(t.table),

	-- The item's name that will show a loading state if nil
	name = t.optional(t.string),

	-- The number of lines of text for the item name
	titleTextLineCount = t.optional(t.integer),

	-- The vertical padding between elements in the ItemTile
	innerPadding = t.optional(t.integer),

	-- The function that gets called on itemTile click
	onActivated = t.optional(t.callback),

	-- The item's thumbnail that will show a loading state if nil
	thumbnail = t.optional(t.string),

	-- Optional text to display in the Item Tile banner in place of the footer
	bannerText = t.optional(t.string),

	-- Optional enum specifying the item icon type, will create an icon showing the item type on the card
	itemIconType = t.optional(enumerateValidator(ItemTileEnums.ItemIconType)),

	-- Whether the tile is selected or not
	isSelected = t.optional(t.boolean),

	-- Whether the tile is for a premium item or not
	isPremium = t.optional(t.boolean),

	-- Enums specifying the restriction types if there are restrictions for the item
	restrictionTypes = t.optional(t.map(enumerateValidator(ItemTileEnums.Restriction), t.boolean)),

	-- Optional information about the restriction
	restrictionInfo = t.optional(t.table),

	-- Optional boolean indicating whether to create an overlay to round the corners of the image
	hasRoundedCorners = t.optional(t.boolean),

	-- Optional tile status text
	statusText = t.optional(t.string),

	-- Enum specifying the style for the status component
	statusStyle = t.optional(enumerateValidator(ItemTileEnums.StatusStyle)),

	-- optional parameters for RoactGamepad
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	[Roact.Ref] = t.optional(t.table),
})

local function tileBannerUseValidator(props)
	if props.bannerText and props.footer then
		return false, "A custom footer and bannerText can't be used together"
	end

	return true
end

local validateProps = t.intersection(itemTileInterface, tileBannerUseValidator)

ItemTile.defaultProps = {
	titleTextLineCount = 2,
	innerPadding = 8,
	isSelected = false,
	isPremium = false,
	hasRoundedCorners = true,
}

function ItemTile:render()
	assert(validateProps(self.props))

	local footer = self.props.footer
	local bannerText = self.props.bannerText
	local hasRoundedCorners = self.props.hasRoundedCorners
	local innerPadding = self.props.innerPadding
	local isPremium = self.props.isPremium
	local isSelected = self.props.isSelected
	local itemIconType = self.props.itemIconType
	local name = self.props.name
	local onActivated = self.props.onActivated
	local restrictionInfo = self.props.restrictionInfo
	local restrictionTypes = self.props.restrictionTypes
	local statusStyle = self.props.statusStyle
	local statusText = self.props.statusText
	local titleTextLineCount = self.props.titleTextLineCount
	local thumbnail = self.props.thumbnail

	local hasOverlayComponents = false
	local overlayComponents = {}

	if itemIconType then
		hasOverlayComponents = true

		overlayComponents.ItemIconType = Roact.createElement(ItemIcon, {
			itemIconType = itemIconType,
		})
	end

	if restrictionTypes then
		hasOverlayComponents = true

		overlayComponents.RestrictionStatus = Roact.createElement(ItemRestrictionStatus, {
			restrictionInfo = restrictionInfo,
			restrictionTypes = restrictionTypes,
		})
	end

	if statusText then
		hasOverlayComponents = true

		overlayComponents.Status = Roact.createElement(ItemTileStatus, {
			statusStyle = statusStyle,
			statusText = statusText,
		})
	end

	return Roact.createElement(Tile, {
		bannerText = bannerText,
		footer = footer,
		hasRoundedCorners = hasRoundedCorners,
		innerPadding = innerPadding,
		isSelected = isSelected,
		name = name,
		onActivated = onActivated,
		thumbnail = thumbnail,
		thumbnailOverlayComponents = hasOverlayComponents and overlayComponents or nil,
		titleIcon = isPremium and Images["icons/status/premium_small"] or nil,
		titleTextLineCount = titleTextLineCount,

		NextSelectionLeft = self.props.NextSelectionLeft,
		NextSelectionRight = self.props.NextSelectionRight,
		NextSelectionUp = self.props.NextSelectionUp,
		NextSelectionDown = self.props.NextSelectionDown,
		[Roact.Ref] = self.props[Roact.Ref],
	})
end

return ItemTile

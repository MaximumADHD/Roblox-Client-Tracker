--!nonstrict
local ItemTileRoot = script.Parent
local TileRoot = ItemTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local Images = require(UIBlox.App.ImageSet.Images)
local ItemRestrictionStatus = require(ItemTileRoot.ItemRestrictionStatus)
local ItemTileStatus = require(ItemTileRoot.ItemTileStatus)
local ItemTileEnums = require(TileRoot.Enum.ItemTileEnums)
local ItemIcon = require(ItemTileRoot.ItemIcon)
local Tile = require(TileRoot.BaseTile.Tile)

local ItemTile = React.PureComponent:extend("ItemTile")

local function tileBannerUseValidator(props)
	if props.bannerText and props.footer then
		return false, "A custom footer and bannerText can't be used together"
	end

	return true
end

ItemTile.validateProps = t.strictInterface({
	-- The footer React element.
	footer = t.optional(t.table),

	-- The item's name that will show a loading state if nil
	name = t.optional(t.string),

	-- The item's subtitle  that will be hidden if nil
	subtitle = t.optional(t.string),

	-- The number of lines of text for the item name
	titleTextLineCount = t.optional(t.integer),

	-- The vertical padding between elements in the ItemTile
	innerPadding = t.optional(t.integer),

	-- The function that gets called on itemTile click
	onActivated = t.optional(t.callback),

	-- The item's thumbnail that will show a loading state if nil
	thumbnail = t.optional(t.string),

	-- Optional thumbnail background image
	backgroundImage = t.optional(t.union(t.string, t.table)),

	-- Optional text to display in the Item Tile banner in place of the footer
	bannerText = t.optional(t.string),

	-- Optional enum specifying the item icon type, will create an icon showing the item type on the card
	itemIconType = t.optional(ItemTileEnums.ItemIconType.isEnumValue),

	-- Whether the tile is selected or not
	isSelected = t.optional(t.boolean),

	-- Whether the tile is selectable or not
	Selectable = t.optional(t.boolean),

	-- Whether the tile is part of a grid where multiple tiles can be selected
	multiSelect = t.optional(t.boolean),

	-- Whether the tile is for a premium item or not
	isPremium = t.optional(t.boolean),

	-- Enums specifying the restriction types if there are restrictions for the item
	restrictionTypes = t.optional(t.map(ItemTileEnums.Restriction.isEnumValue, t.boolean)),

	-- Optional information about the restriction
	restrictionInfo = t.optional(t.table),

	-- Optional boolean indicating whether to create an overlay to round the corners of the image
	hasRoundedCorners = t.optional(t.boolean),

	-- Optional tile status text
	statusText = t.optional(t.string),

	-- Enum specifying the style for the status component
	statusStyle = t.optional(ItemTileEnums.StatusStyle.isEnumValue),

	-- optional parameters for RoactGamepad
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	thumbnailRef = t.optional(t.table),
	textButtonRef = t.optional(t.table),
	inputBindings = t.optional(t.table),

	-- Optional height of the title area is set to the max
	useMaxTitleHeight = t.optional(t.boolean),

	-- Optional parameter to include subtitles
	addSubtitleSpace = t.optional(t.boolean),

	-- Font style for title (Header2, Caption, etc.)
	-- If not set the underlying components will wind up using Header2.
	titleFontStyle = t.optional(t.table),

	-- An inset on the tile image.
	renderTileInset = t.optional(t.callback),

	-- Boolean to determine whether a Verified Badge is shown
	hasVerifiedBadge = t.optional(t.boolean),

	-- Pass through React.Tag
	[React.Tag] = t.optional(t.string),

	-- The thumbnail aspect ratio
	aspectRatio = t.optional(t.number),

	-- The thumbnail scale type
	scaleType = t.optional(t.enum(Enum.ScaleType)),
})

ItemTile.defaultProps = {
	titleTextLineCount = 2,
	innerPadding = 8,
	isSelected = false,
	multiSelect = false,
	isPremium = false,
	hasRoundedCorners = true,
	Selectable = false,
}

function ItemTile:render()
	assert(tileBannerUseValidator(self.props))
	local footer = self.props.footer
	local bannerText = self.props.bannerText
	local hasRoundedCorners = self.props.hasRoundedCorners
	local innerPadding = self.props.innerPadding
	local isPremium = self.props.isPremium
	local isSelected = self.props.isSelected
	local multiSelect = self.props.multiSelect
	local itemIconType = self.props.itemIconType
	local name = self.props.name
	local subtitle = self.props.subtitle
	local onActivated = self.props.onActivated
	local restrictionInfo = self.props.restrictionInfo
	local restrictionTypes = self.props.restrictionTypes
	local statusStyle = self.props.statusStyle
	local statusText = self.props.statusText
	local titleTextLineCount = self.props.titleTextLineCount
	local thumbnail = self.props.thumbnail
	local backgroundImage = self.props.backgroundImage
	local useMaxTitleHeight = self.props.useMaxTitleHeight
	local addSubtitleSpace = self.props.addSubtitleSpace
	local Selectable = self.props.Selectable
	local titleFontStyle = self.props.titleFontStyle
	local renderTileInset = self.props.renderTileInset
	local aspectRatio = self.props.aspectRatio
	local scaleType = self.props.scaleType

	local hasOverlayComponents = false
	local overlayComponents = {}

	if itemIconType then
		hasOverlayComponents = true

		overlayComponents.ItemIconType = React.createElement(ItemIcon, {
			itemIconType = itemIconType,
		})
	end

	if restrictionTypes then
		hasOverlayComponents = true

		overlayComponents.RestrictionStatus = React.createElement(ItemRestrictionStatus, {
			restrictionInfo = restrictionInfo,
			restrictionTypes = restrictionTypes,
		})
	end

	if statusText then
		hasOverlayComponents = true

		overlayComponents.Status = React.createElement(ItemTileStatus, {
			statusStyle = statusStyle,
			statusText = statusText,
		})
	end

	return React.createElement(Tile, {
		bannerText = bannerText,
		footer = footer,
		hasRoundedCorners = hasRoundedCorners,
		innerPadding = innerPadding,
		isSelected = isSelected,
		Selectable = Selectable,
		multiSelect = multiSelect,
		name = name,
		subtitle = subtitle,
		onActivated = onActivated,
		thumbnail = thumbnail,
		backgroundImage = backgroundImage,
		thumbnailOverlayComponents = hasOverlayComponents and overlayComponents or nil,
		titleIcon = isPremium and Images["icons/status/premium_small"] or nil,
		titleTextLineCount = titleTextLineCount,
		useMaxTitleHeight = useMaxTitleHeight,
		addSubtitleSpace = addSubtitleSpace,
		titleFontStyle = titleFontStyle,
		renderTileInset = renderTileInset,
		thumbnailAspectRatio = aspectRatio,
		thumbnailScaleType = scaleType,
		hasVerifiedBadge = self.props.hasVerifiedBadge,
		NextSelectionLeft = self.props.NextSelectionLeft,
		NextSelectionRight = self.props.NextSelectionRight,
		NextSelectionUp = self.props.NextSelectionUp,
		NextSelectionDown = self.props.NextSelectionDown,
		textButtonRef = self.props.textButtonRef,
		inputBindings = self.props.inputBindings,
		ref = self.props.thumbnailRef,
		[React.Tag] = self.props[React.Tag],
	})
end

return React.forwardRef(function(props, ref)
	return React.createElement(
		ItemTile,
		Cryo.Dictionary.join(props, {
			thumbnailRef = ref,
		})
	)
end)

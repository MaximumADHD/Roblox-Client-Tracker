local BaseTile = script.Parent
local TileRoot = BaseTile.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)

local TileName = require(BaseTile.TileName)
local TileThumbnail = require(BaseTile.TileThumbnail)
local TileBanner = require(BaseTile.TileBanner)

local Tile = Roact.PureComponent:extend("Tile")

local tileInterface = t.strictInterface({
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
	thumbnail = t.optional(t.union(t.string, t.table)),

	-- The item thumbnail's size if not UDm2.new(1, 0, 1, 0)
	thumbnailSize = t.optional(t.UDim2),

	-- Optional text to display in the Item Tile banner in place of the footer
	bannerText = t.optional(t.string),

	-- Whether the tile is selected or not
	isSelected = t.optional(t.boolean),

	-- Optional boolean indicating whether to create an overlay to round the corners of the image
	hasRoundedCorners = t.optional(t.boolean),

	-- Optional image to be displayed in the title component
	-- Image information should be ImageSet compatible
	titleIcon = t.optional(t.table),

	-- Optional Roact elements that are overlayed over the thumbnail component
	thumbnailOverlayComponents = t.optional(t.table),
})

local function tileBannerUseValidator(props)
	if props.bannerText and props.footer then
		return false, "A custom footer and bannerText can't be used together"
	end

	return true
end

local validateProps = t.intersection(tileInterface, tileBannerUseValidator)

Tile.defaultProps = {
	titleTextLineCount = 2,
	innerPadding = 8,
	isSelected = false,
	hasRoundedCorners = true,
}

function Tile:init()
	self.state = {
		tileWidth = 0,
		tileHeight = 0,
	}

	self.onAbsoluteSizeChange = function(rbx)
		local tileWidth = rbx.AbsoluteSize.X
		local tileHeight = rbx.AbsoluteSize.Y
		self:setState({
			tileWidth = tileWidth,
			tileHeight = tileHeight,
		})
	end
end

function Tile:render()
	assert(validateProps(self.props))
	local footer = self.props.footer
	local name = self.props.name
	local titleTextLineCount = self.props.titleTextLineCount
	local innerPadding = self.props.innerPadding
	local onActivated = self.props.onActivated
	local thumbnail = self.props.thumbnail
	local thumbnailSize = self.props.thumbnailSize
	local bannerText = self.props.bannerText
	local hasRoundedCorners = self.props.hasRoundedCorners
	local isSelected = self.props.isSelected
	local titleIcon = self.props.titleIcon
	local thumbnailOverlayComponents = self.props.thumbnailOverlayComponents

	return withStyle(function(stylePalette)
		local font = stylePalette.Font

		local tileHeight = self.state.tileHeight
		local tileWidth = self.state.tileWidth

		local maxTitleTextHeight = math.ceil(font.BaseSize * font.Header2.RelativeSize * titleTextLineCount)
		local footerHeight = tileHeight - tileWidth - innerPadding - maxTitleTextHeight - innerPadding
		footerHeight = math.max(0, footerHeight)

		local hasFooter = footer ~= nil or bannerText ~= nil

		-- TODO: use generic/state button from UIBlox
		return Roact.createElement("TextButton", {
			Text = "",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			[Roact.Event.Activated] = onActivated,
			[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChange,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, innerPadding),
			}),
			Thumbnail = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				SizeConstraint = Enum.SizeConstraint.RelativeXX,
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, {
				Image = Roact.createElement(TileThumbnail, {
					Image = thumbnail,
					hasRoundedCorners = hasRoundedCorners,
					isSelected = isSelected,
					overlayComponents = thumbnailOverlayComponents,
					imageSize = thumbnailSize,
				}),
			}),
			Name = (titleTextLineCount > 0 and tileWidth > 0) and Roact.createElement(TileName, {
				titleIcon = titleIcon,
				name = name,
				maxHeight = maxTitleTextHeight,
				maxWidth = tileWidth,
				LayoutOrder = 2,
			}),
			FooterContainer = hasFooter and Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, footerHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 3,
			}, {
				Banner = bannerText and Roact.createElement(TileBanner, {
					bannerText = bannerText,
				}),
				Footer = not bannerText and footer,
			}),
		})
	end)
end

return Tile

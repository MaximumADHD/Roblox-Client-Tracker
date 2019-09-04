local BaseTileRoot = script.Parent
local UIBloxRoot = BaseTileRoot.Parent.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local withStyle = require(UIBloxRoot.Style.withStyle)
local t = require(UIBloxRoot.Parent.t)

local TileName = require(BaseTileRoot.TileName)
local TileThumbnail = require(BaseTileRoot.TileThumbnail)
local TileBanner = require(BaseTileRoot.TileBanner)

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
	thumbnail = t.optional(t.string),

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
	self.footerRef = Roact.createRef()

	self.state = {
		tileWidth = 0,
		tileHeight = 0,
	}

	self.OnAbsoluteSizeChange = function(rbx)
		-- This spawn is to avoid triggering a re-render during a Changed event.
		-- The spawn can be removed when we upgrade our Roact version to 1.1
		spawn(function()
			if self.footerRef.current then
				local tileWidth = rbx.AbsoluteSize.X
				local tileHeight = rbx.AbsoluteSize.Y
				self:setState({
					tileWidth = tileWidth,
					tileHeight = tileHeight,
				})
			end
		end)
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
	local bannerText = self.props.bannerText
	local hasRoundedCorners = self.props.hasRoundedCorners
	local isSelected = self.props.isSelected
	local titleIcon = self.props.titleIcon
	local thumbnailOverlayComponents = self.props.thumbnailOverlayComponents

	return withStyle(function(stylePalette)
		local font = stylePalette.Font
		local maxTitleTextHeight = math.ceil(font.BaseSize * font.Header2.RelativeSize * titleTextLineCount)
		local footerHeight = self.state.tileHeight - self.state.tileWidth - innerPadding - maxTitleTextHeight - innerPadding
		footerHeight = math.max(0, footerHeight)

		-- TODO: use generic/state button from UIBlox
		return Roact.createElement("TextButton", {
			Text = "",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			[Roact.Event.Activated] = onActivated,
			[Roact.Change.AbsoluteSize] = self.OnAbsoluteSizeChange,
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
				}),
			}),
			Name = Roact.createElement(TileName, {
				titleIcon = titleIcon,
				name = name,
				maxHeight = maxTitleTextHeight,
				maxWidth = self.state.tileWidth,
				LayoutOrder = 2,
			}),
			FooterContainer = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, footerHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 3,
				[Roact.Ref] = self.footerRef,
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

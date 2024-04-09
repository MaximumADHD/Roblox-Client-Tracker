--!nonstrict
local BaseTile = script.Parent
local TileRoot = BaseTile.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local RoactGamepad = require(Packages.RoactGamepad)

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)
local validateFontInfo = require(UIBlox.Core.Style.Validator.validateFontInfo)
local validateTypographyInfo = require(UIBlox.Core.Style.Validator.validateTypographyInfo)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)
local GetWrappedTextWithIcon = require(UIBlox.Core.Text.GetWrappedTextWithIcon)

local CursorKind = require(App.SelectionImage.CursorKind)
local withSelectionCursorProvider = require(App.SelectionImage.withSelectionCursorProvider)
local useCursor = require(UIBlox.App.SelectionCursor.useCursor)

local TileName = require(BaseTile.TileName)
local TileThumbnail = require(BaseTile.TileThumbnail)
local TileBanner = require(BaseTile.TileBanner)
local StyledTextLabel = require(App.Text.StyledTextLabel)
local Images = require(UIBlox.App.ImageSet.Images)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local ICON_PADDING = 4
local THUMBNAIL_CORNER_RADIUS = UDim.new(0, 10)

local Tile = React.PureComponent:extend("Tile")

local tileInterface = t.strictInterface({
	-- The footer React element.
	footer = t.optional(t.table),

	-- The item's name that will show a loading state if nil
	name = t.optional(t.string),

	-- The text color for name
	nameTextColor = t.optional(t.Color3),

	-- If the name should be overlayed on top of the thumbnail
	nameOverThumbnail = t.optional(t.boolean),

	-- Text content to be displayed as a subtitle that will be hidden if nil
	subtitle = t.optional(t.string),

	-- Boolean to determine whether a Verified Badge is shown
	hasVerifiedBadge = t.optional(t.boolean),

	-- The number of lines of text for the item name
	titleTextLineCount = t.optional(t.integer),

	-- The vertical padding between elements in the ItemTile
	innerPadding = t.optional(t.integer),

	-- The additional vertical padding above the title area
	titleTopPadding = t.optional(t.integer),

	-- The additional vertical padding above the title area
	subtitleTopPadding = t.optional(t.integer),

	-- The additional vertical padding above the footer area
	footerTopPadding = t.optional(t.integer),

	-- The function that gets called on itemTile click
	onActivated = t.optional(t.callback),

	-- The item's thumbnail that will show a loading state if nil
	thumbnail = t.optional(t.union(t.string, t.table)),

	-- The item thumbnail's size if not UDm2.new(1, 0, 1, 0)
	thumbnailSize = t.optional(t.UDim2),

	-- The item thumbnail's color
	thumbnailColor = t.optional(t.Color3),

	-- The item thumbnail's transparency if not 0
	thumbnailTransparency = t.optional(t.number),

	-- The thumbnail aspect ratio
	thumbnailAspectRatio = t.optional(t.number),

	-- The thumbnail scale type
	thumbnailScaleType = t.optional(t.enum(Enum.ScaleType)),

	-- Optional text to display in the Item Tile banner in place of the footer
	bannerText = t.optional(t.string),

	-- Optional backgroundImage of the tile
	backgroundImage = t.optional(t.union(t.string, t.table)),

	-- Whether the tile is selected or not
	isSelected = t.optional(t.boolean),

	-- Whether the tile is selectable or not
	Selectable = t.optional(t.boolean),

	-- Whether the tile is part of a grid where multiple tiles can be selected
	multiSelect = t.optional(t.boolean),

	-- Whether the tile is disabled or not
	isDisabled = t.optional(t.boolean),

	-- Optional boolean indicating whether to create an overlay to round the corners of the image
	hasRoundedCorners = t.optional(t.boolean),

	-- Optional image to be displayed in the title component
	-- Image information should be ImageSet compatible
	titleIcon = t.optional(t.table),

	-- Optional React elements that are overlayed over the thumbnail component
	thumbnailOverlayComponents = t.optional(t.table),

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

	-- What style font to use for title (Header, Body, etc.).
	-- Defaults to Header2.
	titleFontStyle = t.optional(t.union(validateFontInfo, validateTypographyInfo)),

	-- What style font to use for title (Header, Body, etc.).
	-- Defaults to CaptionHeader.
	subtitleFontStyle = t.optional(t.union(validateFontInfo, validateTypographyInfo)),

	-- An inset on the tile image.
	renderTileInset = t.optional(t.callback),

	-- Pass through React.Tag
	[React.Tag] = t.optional(t.string),

	-- Optional selection cursor
	cursor = t.optional(t.any),
})

local function tileBannerUseValidator(props)
	if props.bannerText and props.footer then
		return false, "A custom footer and bannerText can't be used together"
	end

	return true
end

Tile.validateProps = t.intersection(tileInterface, tileBannerUseValidator)

Tile.defaultProps = {
	titleTextLineCount = 2,
	innerPadding = 8,
	titleTopPadding = 0,
	subtitleTopPadding = 0,
	footerTopPadding = 0,
	isSelected = false,
	multiSelect = false,
	isDisabled = false,
	hasRoundedCorners = true,
	Selectable = false,
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
	local footer = self.props.footer
	local name = self.props.name
	local subtitle = self.props.subtitle
	local hasVerifiedBadge = self.props.hasVerifiedBadge
	local titleTextLineCount = self.props.titleTextLineCount
	local innerPadding = self.props.innerPadding
	local titleTopPadding = self.props.titleTopPadding
	local subtitleTopPadding = self.props.subtitleTopPadding
	local footerTopPadding = self.props.footerTopPadding
	local onActivated = self.props.onActivated
	local thumbnail = self.props.thumbnail
	local thumbnailSize = self.props.thumbnailSize
	local thumbnailColor = self.props.thumbnailColor
	local thumbnailTransparency = self.props.thumbnailTransparency
	local bannerText = self.props.bannerText
	local hasRoundedCorners = self.props.hasRoundedCorners
	local isSelected = self.props.isSelected
	local multiSelect = self.props.multiSelect
	local isDisabled = self.props.isDisabled
	local titleIcon = self.props.titleIcon
	local thumbnailOverlayComponents = self.props.thumbnailOverlayComponents
	local backgroundImage = self.props.backgroundImage
	local useMaxTitleHeight = self.props.useMaxTitleHeight
	local addSubtitleSpace = self.props.addSubtitleSpace

	return withStyle(function(stylePalette)
		return withSelectionCursorProvider(function(getSelectionCursor)
			local font = stylePalette.Font
			local theme = stylePalette.Theme

			local tileHeight = self.state.tileHeight
			local tileWidth = self.state.tileWidth

			local titleFontStyle = self.props.titleFontStyle or font.Header2
			local subtitleFontStyle = self.props.subtitleFontStyle or font.CaptionHeader

			local titleFontSize = if titleFontStyle.RelativeSize
				then font.BaseSize * titleFontStyle.RelativeSize
				else titleFontStyle.FontSize

			local subtitleFontSize = if subtitleFontStyle.RelativeSize
				then font.BaseSize * subtitleFontStyle.RelativeSize
				else subtitleFontStyle.FontSize

			local maxTitleTextHeight = math.ceil(titleFontSize * titleTextLineCount)
			local footerHeight = tileHeight
				- (tileWidth / (self.props.thumbnailAspectRatio or 1))
				- innerPadding
				- maxTitleTextHeight
				- innerPadding
				- titleTopPadding
			local titleTextSize = Vector2.new(0, 0)
			local subtitleTextHeight = 0

			-- include subtitle space even if subtitle is empty string
			if addSubtitleSpace then
				titleTextSize = Vector2.new(0, maxTitleTextHeight)
				subtitleTextHeight = math.ceil(subtitleFontSize)
				footerHeight = footerHeight - subtitleTextHeight
			else
				if useMaxTitleHeight then
					titleTextSize = Vector2.new(0, maxTitleTextHeight)
				else
					local textToMeasure = name or ""

					local titleFont = titleFontStyle.Font

					if titleIcon then
						local iconWidth = titleIcon.ImageRectSize.X / Images.ImagesResolutionScale
						textToMeasure =
							GetWrappedTextWithIcon(textToMeasure, titleFontSize, titleFont, iconWidth, ICON_PADDING)
					end
					titleTextSize =
						GetTextSize(textToMeasure, titleFontSize, titleFont, Vector2.new(tileWidth, maxTitleTextHeight))
				end

				if subtitle ~= nil and subtitle ~= "" then
					subtitleTextHeight = math.ceil(subtitleFontSize)
					footerHeight = footerHeight - subtitleTextHeight
				end
			end

			footerHeight = math.max(0, footerHeight)

			local hasFooter = footer ~= nil or bannerText ~= nil

			local renderTileInset = self.props.renderTileInset

			local titleAreaSize = UDim2.new(1, 0, 0, titleTextSize.Y + subtitleTextHeight + titleTopPadding)
			local titleTextPadding = nil
			if self.props.nameOverThumbnail then
				local padding = 10
				titleAreaSize = UDim2.new(0, (tileWidth - padding), 0, -(titleTextSize.Y + (2 * padding)))
				titleTextPadding = React.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, padding),
				})
			end

			local inputBindings = self.props.inputBindings
			if not inputBindings then
				inputBindings = (not isDisabled and onActivated)
						and {
							Activate = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, onActivated),
						}
					or nil
			end

			-- TODO: use generic/state button from UIBlox
			return React.createElement("TextButton", {
				Text = "",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Selectable = self.props.Selectable,
				[React.Event.Activated] = not isDisabled and onActivated or nil,
				[React.Change.AbsoluteSize] = self.onAbsoluteSizeChange,
				ref = self.props.textButtonRef,
				SelectionImageObject = if self.props.cursor
					then self.props.cursor
					else getSelectionCursor(CursorKind.RoundedRect),
			}, {
				UIListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, innerPadding),
				}),
				Thumbnail = React.createElement(RoactGamepad.Focusable.Frame, {
					Size = UDim2.new(1, 0, 1, 0),
					SizeConstraint = Enum.SizeConstraint.RelativeXX,
					BackgroundTransparency = 1,
					LayoutOrder = 1,

					NextSelectionLeft = self.props.NextSelectionLeft,
					NextSelectionRight = self.props.NextSelectionRight,
					NextSelectionUp = self.props.NextSelectionUp,
					NextSelectionDown = self.props.NextSelectionDown,
					ref = self.props.thumbnailRef,
					[React.Tag] = self.props[React.Tag],
					SelectionImageObject = if self.props.cursor
						then self.props.cursor
						else getSelectionCursor(CursorKind.RoundedRectNoInset),
					inputBindings = inputBindings,
				}, {
					Image = React.createElement(TileThumbnail, {
						Image = thumbnail,
						hasRoundedCorners = hasRoundedCorners,
						cornerRadius = if UIBloxConfig.useNewSelectionCursor then THUMBNAIL_CORNER_RADIUS else nil,
						isSelected = isSelected,
						multiSelect = multiSelect,
						overlayComponents = thumbnailOverlayComponents,
						imageSize = thumbnailSize,
						imageColor = thumbnailColor,
						imageTransparency = thumbnailTransparency,
						backgroundImage = backgroundImage,
						scaleType = self.props.thumbnailScaleType,
					}),
					TileInset = renderTileInset and renderTileInset() or nil,
					UIAspectRatioConstraint = if self.props.thumbnailAspectRatio ~= nil
						then React.createElement("UIAspectRatioConstraint", {
							AspectRatio = self.props.thumbnailAspectRatio,
							AspectType = Enum.AspectType.ScaleWithParentSize,
						})
						else nil,
				}),
				TitleArea = React.createElement("Frame", {
					Size = titleAreaSize,
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				}, {
					TitleTopPadding = React.createElement("UIPadding", {
						PaddingTop = UDim.new(0, titleTopPadding),
					}),
					UIListLayout = React.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, subtitleTopPadding),
					}),
					NameOverThumbnailPadding = titleTextPadding,
					Name = (titleTextLineCount > 0 and tileWidth > 0) and React.createElement(TileName, {
						titleIcon = titleIcon,
						name = name,
						nameTextColor = self.props.nameTextColor,
						hasVerifiedBadge = hasVerifiedBadge,
						maxHeight = maxTitleTextHeight,
						maxWidth = tileWidth,
						LayoutOrder = 1,
						useMaxHeight = useMaxTitleHeight,
						titleFontStyle = titleFontStyle,
					}),
					Subtitle = (subtitle ~= "" and subtitle ~= nil) and React.createElement(StyledTextLabel, {
						size = UDim2.new(1, 0, 0, subtitleTextHeight),
						text = subtitle,
						colorStyle = theme.TextDefault,
						fontStyle = subtitleFontStyle,
						layoutOrder = 2,
						fluidSizing = false,
						textTruncate = Enum.TextTruncate.AtEnd,
						richText = false,
						lineHeight = 1,
					}),
				}),
				FooterContainer = hasFooter and React.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, footerHeight),
					BackgroundTransparency = 1,
					LayoutOrder = 3,
				}, {
					FooterTopPadding = React.createElement("UIPadding", {
						PaddingTop = UDim.new(0, footerTopPadding),
					}),
					Banner = bannerText and React.createElement(TileBanner, {
						bannerText = bannerText,
					}),
					Footer = not bannerText and footer,
				}),
			})
		end)
	end)
end

local TileFunctionalWrapper = function(passedProps)
	local props = Cryo.Dictionary.join({
		cursor = useCursor(THUMBNAIL_CORNER_RADIUS),
	}, passedProps)
	return React.createElement(Tile, props)
end

return React.forwardRef(function(props, ref)
	return React.createElement(
		if UIBloxConfig.useNewSelectionCursor then TileFunctionalWrapper else Tile,
		Cryo.Dictionary.join(props, {
			thumbnailRef = ref,
		})
	)
end)

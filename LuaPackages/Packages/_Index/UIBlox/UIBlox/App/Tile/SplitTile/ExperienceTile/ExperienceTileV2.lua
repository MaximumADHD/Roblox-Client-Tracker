local ExperienceTileRoot = script.Parent
local SplitTileRoot = ExperienceTileRoot.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local ImagesTypes = require(App.ImageSet.ImagesTypes)
local setDefault = require(UIBlox.Utility.setDefault)
local VerticalTile = if UIBloxConfig.updateVerticalTile
	then require(SplitTileRoot.VerticalTile.VerticalTileV2)
	else require(SplitTileRoot.VerticalTile.VerticalTile)
local ExperienceActionRow = require(SplitTileRoot.ExperienceTile.ExperienceActionRow)
local TileContentPanel = require(SplitTileRoot.TileContentPanel)
local VerticalTileThumbnail = require(SplitTileRoot.VerticalTile.VerticalTileThumbnail)

local ACTION_ROW_HEIGHT = 48
local DEFAULT_FOOTER_HEIGHT = 22

local STANDARD_CONTENT_HEIGHT = 60
local HOVER_CONTENT_HEIGHT = 64
local STANDARD_PADDING = 8
local HOVER_PADDING = 12

local SQUARE_ASPECT_RATIO = 1
local WIDE_ASPECT_RATIO = 0.5625
local MIN_WIDTH = 146
local MIN_HEIGHT = 228

local ACTION_BUTTON_PADDING = 6

local defaultProps = {
	hasBackground = true,
	hasOutline = true,
	isHoverEnabled = true,
	isOverlayVisible = true,
	isActive = true,
}

export type Props = {
	-- The experience's name that will show a loading state if nil
	experienceName: string?,
	-- The experience's thumbnail that will show a loading state if nil
	thumbnail: string?,
	-- The experience's thumbnail to be shown when in a wide aspect ratio
	wideThumbnail: string?,
	-- Footer to be shown below the experience title
	footer: table?,
	-- The height of the footer. If nil, a default height of 22 is used
	footerHeight: number?,
	-- Whether or not the tile should use a background
	hasBackground: boolean?,
	-- Whether or not the tile should show a border outline
	hasOutline: boolean?,
	-- Whether or not hover mode is enabled for the tile
	isHoverEnabled: boolean?,
	-- Whether or not the tile should show a stateful overlay
	isOverlayVisible: boolean?,
	-- Whether or not the experience can be launched
	isPlayable: boolean?,
	-- Whether or not the tile should render its hovered state and accept input
	isActive: boolean?,
	-- Function called when tile panel is clicked
	onActivated: (() -> ())?,
	-- Function called when hover play button is pressed
	onPlayPressed: (() -> ())?,
	-- custom text for the play button, default empty
	buttonText: string?,
	-- custom icon for the play button, default based on isPlayable
	buttonIcon: ImagesTypes.ImageSetImage?,
	-- Content to fill the top portion of the tile which can vary based on hover state
	renderTopContent: ((isHovered: boolean) -> table)?,
	-- Content to fill the bottom portion of the tile which can vary based on hover state
	renderBottomContent: ((isHovered: boolean) -> table)?,
	-- Content which contains actions a user can take which is displayed at bottom of tile on hover
	renderActionRow: ((isHovered: boolean) -> table)?,
}

local function getPanelHeight(footerHeight: number, contentHeight: number, title: string)
	local panelHeight = if title and string.len(title) > 0 then contentHeight else 0
	panelHeight = panelHeight + footerHeight
	return panelHeight
end

local function ExperienceTile_deprecated(props: Props)
	local hasBackground = setDefault(props.hasBackground, true)
	local hasOutline = setDefault(props.hasOutline, hasBackground)
	local isHoverEnabled = setDefault(props.isHoverEnabled, hasBackground)
	local isOverlayVisible = setDefault(props.isOverlayVisible, true)
	local isActive = setDefault(props.isActive, true)
	local footer = props.footer
	local footerHeight = setDefault(props.footerHeight, if footer then DEFAULT_FOOTER_HEIGHT else 0)

	return React.createElement(VerticalTile, {
		titleText = props.experienceName,
		thumbnail = props.thumbnail,
		wideThumbnail = props.wideThumbnail,
		actionRow = if isHoverEnabled
			then React.createElement(ExperienceActionRow, {
				isActionable = props.isPlayable,
				height = ACTION_ROW_HEIGHT,
				horizontalPadding = if hasBackground then ACTION_BUTTON_PADDING else nil,
				verticalPadding = ACTION_BUTTON_PADDING,
				onPlayPressed = props.onPlayPressed,
				text = props.buttonText,
				icon = props.buttonIcon,
			})
			else nil,
		actionRowHeight = ACTION_ROW_HEIGHT,
		footer = footer,
		footerHeight = footerHeight,
		hasBackground = hasBackground,
		hasOutline = hasOutline,
		hasWideHover = if hasBackground then true else false,
		isHoverEnabled = isHoverEnabled,
		isOverlayVisible = isOverlayVisible,
		isActive = isActive,
		onActivated = props.onActivated,
	})
end

local function ExperienceTile(props: Props)
	local props = Cryo.Dictionary.join(defaultProps, props)

	local hasBackground = props.hasBackground
	local experienceName = props.experienceName
	local footer = props.footer
	local footerHeight = setDefault(props.footerHeight, if footer then DEFAULT_FOOTER_HEIGHT else 0)

	local renderTopContent = if props.renderTopContent
		then props.renderTopContent
		else React.useCallback(function(isHoverContent: boolean)
			local isWideHover = isHoverContent and hasBackground
			return React.createElement(VerticalTileThumbnail, {
				aspectRatio = if isWideHover then WIDE_ASPECT_RATIO else SQUARE_ASPECT_RATIO,
				isTopRounded = true,
				isBottomRounded = not hasBackground,
				thumbnail = if isWideHover then props.wideThumbnail else props.thumbnail,
			})
		end, { props.wideThumbnail, props.thumbnail, hasBackground })

	local renderBottomContent = if props.renderBottomContent
		then props.renderBottomContent
		else React.useCallback(function(isHoverContent: boolean)
			local panelHeight = if isHoverContent
				then getPanelHeight(footerHeight, HOVER_CONTENT_HEIGHT, experienceName)
				else getPanelHeight(footerHeight, STANDARD_CONTENT_HEIGHT, experienceName)
			local contentPadding = if isHoverContent and hasBackground then HOVER_PADDING else STANDARD_PADDING
			return React.createElement(TileContentPanel, {
				outerPadding = contentPadding,
				innerPadding = if isHoverContent then STANDARD_PADDING else nil,
				panelHeight = UDim.new(0, panelHeight),
				contentTitle = experienceName,
				contentFooter = if isHoverContent and hasBackground then footer else nil,
				footerHeight = UDim.new(0, footerHeight),
				hasSidePadding = hasBackground,
			})
		end, { footer, footerHeight, experienceName, hasBackground })

	local renderFooterRow = React.useCallback(function(isHovered: boolean?)
		local contentPadding = if isHovered and hasBackground then HOVER_PADDING else STANDARD_PADDING
		if props.isHoverEnabled and isHovered then
			if props.renderActionRow then
				return props.renderActionRow(isHovered)
			else
				return React.createElement(ExperienceActionRow, {
					isActionable = props.isPlayable,
					horizontalPadding = if not hasBackground then 0 else nil,
					onPlayPressed = props.onPlayPressed,
					text = props.buttonText,
					icon = props.buttonIcon,
				})
			end
		else
			return React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, footerHeight + if hasBackground then (contentPadding * 2) else 0),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ZIndex = 3,
			}, {
				Padding = React.createElement("UIPadding", {
					PaddingLeft = if hasBackground then UDim.new(0, contentPadding) else nil,
					PaddingRight = if hasBackground then UDim.new(0, contentPadding) else nil,
					PaddingTop = UDim.new(0, contentPadding),
					PaddingBottom = UDim.new(0, contentPadding),
				}),
				Footer = footer,
			})
		end
	end, {
		props.renderActionRow,
		props.isHoverEnabled,
		props.isPlayable,
		props.onPlayPressed,
		props.buttonText,
		props.buttonIcon,
		footer,
		footerHeight,
		hasBackground,
	})

	return React.createElement(VerticalTile, {
		hasBackground = hasBackground,
		hasOutline = props.hasOutline,
		isHoverEnabled = props.isHoverEnabled,
		isOverlayVisible = props.isOverlayVisible,
		isActive = props.isActive,
		onActivated = props.onActivated,
		renderTopContent = renderTopContent,
		renderBottomContent = renderBottomContent,
		renderFooterRow = renderFooterRow,
		reservedBottomHeight = if props.isHoverEnabled then ACTION_ROW_HEIGHT else nil,
	})
end

return if UIBloxConfig.updateVerticalTile then ExperienceTile else ExperienceTile_deprecated

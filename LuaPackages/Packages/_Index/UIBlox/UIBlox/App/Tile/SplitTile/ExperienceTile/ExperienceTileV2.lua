--!nocheck
local ExperienceTileRoot = script.Parent
local SplitTileRoot = ExperienceTileRoot.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local useStyle = require(Core.Style.useStyle)

local ImagesTypes = require(App.ImageSet.ImagesTypes)
local setDefault = require(UIBlox.Utility.setDefault)
local VerticalTile = require(SplitTileRoot.VerticalTile.VerticalTile)
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

export type Props = {
	-- The title name for the tile's experience. Will not render text if nil or empty.
	experienceName: string?,
	-- The experience's thumbnail that will show a loading state if nil
	thumbnail: string?,
	-- A wide, 16:9 aspect-ratio thumbnail for the tile's experience.
	-- It will replace the standard thumbnail when hovered if `ReducedMotion` is false, or show a loading shimmer if nil.
	wideThumbnail: string?,
	-- A footer to be displayed at the bottom of the tile by default, or below the experience's title when hovered.
	-- Its size is fixed vertically and scales horizontally.
	footer: table?,
	-- The height of the tile's footer. If nil, a default height of 22px is used.
	footerHeight: number?,
	-- Whether or not the tile has an opaque background.
	-- When false, all corners of thumbnail will be rounded and the tile's contents will float underneath of it.
	hasBackground: boolean?,
	-- Whether or not the tile has a border outline.
	-- When isBackground is false, the border will only outline the tile's thumbnail.
	hasOutline: boolean?,
	-- Whether or not the tile will react to hover user input
	isHoverEnabled: boolean?,
	-- Whether or not the tile should show a stateful overlay when isActive is true
	isOverlayVisible: boolean?,
	-- Whether or not the tile's experience is playable and can be launched via its action row play button
	isPlayable: boolean?,
	-- Whether or not the tile can is active and can receive user input
	isActive: boolean?,
	-- A function that fires when the tile's panel is pressed
	onActivated: (() -> ())?,
	-- A function that fires when the tile's action row play button is pressed
	onPlayPressed: (() -> ())?,
	-- Optional custom text for the play button, default empty
	buttonText: string?,
	-- Optional custom icon for the play button, default based on isPlayable
	buttonIcon: ImagesTypes.ImageSetImage?,
	-- Render prop for content to fill the top half of the tile. Defaults to a `VerticalTileThumbnail`.
	renderTopContent: ((isHovered: boolean) -> table)?,
	-- Render prop for content to fill the bottom half of the tile. Defaults to a `TileContentPanel`.
	renderBottomContent: ((isHovered: boolean) -> table)?,
	-- Content which contains actions a user can take which is displayed at bottom of tile on hover
	renderActionRow: ((isHovered: boolean) -> table)?,
}

local defaultProps: Props = {
	hasBackground = true,
	hasOutline = true,
	isHoverEnabled = true,
	isOverlayVisible = true,
	isActive = true,
}

local function getPanelHeight(footerHeight: number, contentHeight: number, title: string)
	local panelHeight = if title and string.len(title) > 0 then contentHeight else 0
	panelHeight = panelHeight + footerHeight
	return panelHeight
end

local function ExperienceTileV2(props: Props)
	local style = useStyle()
	local settings = style.Settings

	props = Cryo.Dictionary.join(defaultProps, props)

	local hasBackground = props.hasBackground
	local experienceName = props.experienceName
	local footer = props.footer
	local footerHeight = setDefault(props.footerHeight, if footer then DEFAULT_FOOTER_HEIGHT else 0)

	local function isWideHover(isHoverContent)
		return isHoverContent and hasBackground and not settings.ReducedMotion
	end

	local renderTopContent = React.useCallback(function(isHoverContent: boolean)
		if props.renderTopContent then
			return props.renderTopContent(isHoverContent)
		else
			local isWideHover = isWideHover(isHoverContent)
			return React.createElement(VerticalTileThumbnail, {
				aspectRatio = if isWideHover then WIDE_ASPECT_RATIO else SQUARE_ASPECT_RATIO,
				isTopRounded = true,
				isBottomRounded = not hasBackground,
				thumbnail = if isWideHover then props.wideThumbnail else props.thumbnail,
			})
		end
	end, { props.renderTopContent, props.wideThumbnail, props.thumbnail, hasBackground, settings.ReducedMotion })

	local renderBottomContent = React.useCallback(function(isHoverContent: boolean)
		if props.renderBottomContent then
			return props.renderBottomContent(isHoverContent)
		else
			local isWideHover = isWideHover(isHoverContent)
			local panelHeight = if isHoverContent
				then getPanelHeight(footerHeight, HOVER_CONTENT_HEIGHT, experienceName)
				else getPanelHeight(footerHeight, STANDARD_CONTENT_HEIGHT, experienceName)
			local contentPadding = if isWideHover then HOVER_PADDING else STANDARD_PADDING
			return React.createElement(TileContentPanel, {
				outerPadding = contentPadding,
				innerPadding = if isHoverContent then STANDARD_PADDING else nil,
				panelHeight = UDim.new(0, panelHeight),
				contentTitle = experienceName,
				contentFooter = if isHoverContent and hasBackground then footer else nil,
				footerHeight = UDim.new(0, footerHeight),
				hasSidePadding = hasBackground,
			})
		end
	end, { props.renderBottomContent, footer, footerHeight, experienceName, hasBackground, settings.ReducedMotion })

	local renderFooterRow = React.useCallback(function(isHovered: boolean?)
		local isWideHover = isWideHover(isHovered)
		local contentPadding = if isWideHover then HOVER_PADDING else STANDARD_PADDING
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
		settings.ReducedMotion,
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

return ExperienceTileV2

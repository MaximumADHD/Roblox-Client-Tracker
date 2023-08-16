local ExperienceTileRoot = script.Parent
local SplitTileRoot = ExperienceTileRoot.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local Roact = require(Packages.Roact)
local getControlStateColor = require(UIBlox.Utility.getControlStateColor)
local setDefault = require(UIBlox.Utility.setDefault)

local useStyle = require(Core.Style.useStyle)
local Interactable = require(Core.Control.Interactable)
local useControlState = require(Core.Control.useControlState)
local StyleTypes = require(App.Style.StyleTypes)
local Fonts = require(App.Style.Fonts)
local useSelectionCursor = require(App.SelectionImage.useSelectionCursor)
local CursorKind = require(App.SelectionImage.CursorKind)

local Constants = require(ExperienceTileRoot.Constants)
local ExperienceActionRow = require(ExperienceTileRoot.ExperienceActionRow)
local AspectRatioModeEnum = require(ExperienceTileRoot.Enum.AspectRatioMode)
local getAspectRatio = require(ExperienceTileRoot.getAspectRatio)
local VerticalTile = require(SplitTileRoot.VerticalTile.VerticalTile)
local TileContentPanel = require(SplitTileRoot.TileContentPanel)
local VerticalTileThumbnail = require(SplitTileRoot.VerticalTile.VerticalTileThumbnail)

local UIBloxConfig = require(UIBlox.UIBloxConfig)

export type AspectRatioMode = AspectRatioModeEnum.AspectRatioMode

export type StyleProps = Constants.StyleProps

export type Props = {
	-- The experience's name that will show a loading state if nil
	experienceName: string?,
	-- The experience's thumbnail that will show a loading state if nil
	thumbnail: string?,
	-- The experience's thumbnail to be shown when in a wide aspect ratio
	wideThumbnail: string?,
	-- Aspect ratio of the thumbnail that will be applied in both normal and hover state. This will be for 10-ft ui only.
	thumbnailAspectRatioOverride: AspectRatioMode?,
	-- The number of text lines in the content panel's title
	contentTextLineCount: number,
	-- Footer to be shown below the experience title
	footer: React.ReactElement?,
	-- The height of the footer. If nil, a default height of 22 is used.
	footerHeight: number?,
	-- Whether or not the tile has an opaque background.
	-- When false, all corners of thumbnail will be rounded and the tile's contents will float underneath of it.
	hasBackground: boolean?,
	-- Whether or not the tile has a border outline.
	-- When isBackground is false, the border will only outline the tile's thumbnail.
	hasOutline: boolean?,
	-- Whether or not hover mode is enabled for the tile.
	-- If the tile is hovered over and ReducedMotion is on, then the tile will still show the normal sized thumbnail
	isHoverEnabled: boolean?,
	-- Delay in seconds before the tile will react to hover user input
	hoverDelay: number?,
	-- Callback that fires when the tile's hover state changes
	onHoverChanged: (() -> ())?,
	-- Props for ExperienceActionRow
	actionRowProps: ExperienceActionRow.Props?,
	-- Function called when tile panel is clicked
	onActivated: (() -> any)?,
	-- Overlay rendered over the top content section
	renderTopContentOverlay: ((isHovered: boolean, border: StyleTypes.BorderItem?) -> { [any]: React.ReactElement? }?)?,
	-- Override for BottomContent section
	renderBottomContent: ((isHovered: boolean, border: StyleTypes.BorderItem?) -> React.ReactElement?)?,
	-- Override for ActionRow section
	renderActionRow: (() -> React.ReactElement?)?,
	-- Props to styling the component
	styleProps: StyleProps?,
}

local function renderContentWithPadding(
	component: typeof(Interactable) | string,
	padding: StyleTypes.PaddingItem,
	props: { [any]: any },
	children: { [any]: React.ReactElement? }
)
	return React.createElement(
		component,
		Cryo.Dictionary.join({
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, props),
		{
			Padding = React.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, padding.Left),
				PaddingRight = UDim.new(0, padding.Right),
				PaddingTop = UDim.new(0, padding.Top),
				PaddingBottom = UDim.new(0, padding.Bottom),
			}),
			Content = Roact.createFragment(children :: any),
		}
	)
end

local function getFinalAspectRatioMode(aspectRatioOverride: AspectRatioMode?, isHoverContent: boolean): AspectRatioMode
	if aspectRatioOverride ~= nil then
		if isHoverContent then
			return AspectRatioModeEnum.Wide
		else
			return aspectRatioOverride
		end
	else
		if isHoverContent then
			return AspectRatioModeEnum.Wide
		else
			return AspectRatioModeEnum.Square
		end
	end
end

local function ExperienceTileV3(props: Props)
	local style = useStyle()
	local footerHeight: number = setDefault(props.footerHeight, Constants.DEFAULT_FOOTER_HEIGHT)
	local isHoverEnabled = setDefault(props.isHoverEnabled, false)
	local hasBackground = setDefault(props.hasBackground, true)
	local defaultStyleProps: StyleProps = Constants.getDefaultStyleProps(style)
	local styleProps = Cryo.Dictionary.join(defaultStyleProps, props.styleProps or {})
	local backgroundColor: StyleTypes.ThemeItem = styleProps.backgroundColor
	local border: StyleTypes.BorderItem = styleProps.border
	local dropShadow: StyleTypes.DropShadowItem = styleProps.dropShadow
	local topContentPadding: StyleTypes.PaddingItem = styleProps.topContentPadding
	local bottomContentPadding: StyleTypes.PaddingItem = styleProps.bottomContentPadding
	local overlayColors: StyleTypes.ControlStateColors = styleProps.overlayColors
	local selectionCursorPadding: StyleTypes.PaddingItem = styleProps.selectionCursorPadding
	local contentTitlePadding: number = styleProps.contentTitlePadding
	local contentTitleFont: Fonts.Font = styleProps.contentTitleFont
	local contentTextLineCount: number = setDefault(props.contentTextLineCount, Constants.DEFAULT_TEXT_LINE_COUNT)
	-- Validate the thumbnail override here. When thumbnail is override as Wide mode, there
	-- won't be enough space to host the additional ExperienceActionRow in hovermode, thus is not allowed.
	assert(
		props.thumbnailAspectRatioOverride ~= AspectRatioModeEnum.Wide or not isHoverEnabled,
		"Not allowed to override AspectRatioMode as Wide with hover enabled!"
	)
	local renderTopContent = React.useCallback(function(isHoverContent: boolean): React.ReactElement?
		isHoverContent = isHoverContent and not style.Settings.ReducedMotion
		local finalAspetRatioMode: AspectRatioMode =
			getFinalAspectRatioMode(props.thumbnailAspectRatioOverride, isHoverContent)
		local finalAspetRatio = getAspectRatio(finalAspetRatioMode)
		local finalThumbnail = if finalAspetRatioMode == AspectRatioModeEnum.Wide
			then props.wideThumbnail
			else props.thumbnail
		return renderContentWithPadding("Frame", topContentPadding, {
			Size = UDim2.new(1, 0, finalAspetRatio, 0),
			SizeConstraint = Enum.SizeConstraint.RelativeXX,
			ZIndex = 3,
		}, {
			Thumbnail = React.createElement(VerticalTileThumbnail, {
				aspectRatio = finalAspetRatio,
				border = border,
				isTopRounded = true,
				isBottomRounded = if UIBloxConfig.experienceTileHoverDelay then not hasBackground else false,
				thumbnail = finalThumbnail,
			}),
			TopContentOverlay = if props.renderTopContentOverlay ~= nil
				then Roact.createFragment(props.renderTopContentOverlay(isHoverContent, border) :: any)
				else nil,
		})
	end, {
		props.renderTopContentOverlay,
		props.wideThumbnail,
		props.thumbnail,
		props.thumbnailAspectRatioOverride,
		topContentPadding,
		border,
		if UIBloxConfig.experienceTileHoverDelay then hasBackground else nil,
	} :: { any })

	local renderBottomContent = React.useCallback(function(isHovered: boolean): React.ReactElement?
		local tileContentPanelHeight =
			math.floor(contentTextLineCount * contentTitleFont.RelativeSize * style.Font.BaseSize + contentTitlePadding)
		local bottomHeight = tileContentPanelHeight
			+ footerHeight
			+ bottomContentPadding.Top
			+ bottomContentPadding.Bottom
		if props.renderBottomContent ~= nil then
			return renderContentWithPadding("Frame", bottomContentPadding, {
				Size = UDim2.new(1, 0, 0, bottomHeight),
			}, {
				BottomContent = props.renderBottomContent(isHovered, border),
			})
		else
			return React.createElement(TileContentPanel, {
				contentTitle = props.experienceName,
				panelHeight = UDim.new(0, bottomHeight),
				outerPadding = bottomContentPadding,
				footerHeight = UDim.new(0, footerHeight),
				textLineCount = contentTextLineCount,
				titleFont = contentTitleFont,
				titlePadding = contentTitlePadding,
				contentFooter = if isHovered then props.footer else nil,
				hasSidePadding = true,
			})
		end
	end, {
		props.experienceName,
		props.renderBottomContent,
		props.footer,
		contentTextLineCount,
		contentTitlePadding,
		bottomContentPadding,
		footerHeight,
		contentTitleFont,
		border,
		style,
	} :: { any })

	local renderFooterRow = React.useCallback(function(isHovered: boolean?): React.ReactElement?
		if props.renderBottomContent ~= nil then
			return nil
		end
		if isHovered then
			-- TODO: Add design token override for ExperienceActionRow since it's not needed by Console yet.
			-- Jira: https://roblox.atlassian.net/browse/UIBLOX-310
			if props.renderActionRow ~= nil then
				return props.renderActionRow()
			else
				return React.createElement(ExperienceActionRow, props.actionRowProps)
			end
		else
			local footerRowHeight = footerHeight + bottomContentPadding.Top + bottomContentPadding.Bottom
			return renderContentWithPadding("Frame", bottomContentPadding, {
				Size = UDim2.new(1, 0, 0, footerRowHeight),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
			}, {
				FooterContent = React.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 0),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
					BackgroundTransparency = 1,
					AutomaticSize = Enum.AutomaticSize.Y,
				}, {
					Footer = props.footer,
				}),
			})
		end
	end, {
		props.footer,
		props.actionRowProps,
		props.renderBottomContent,
		props.renderActionRow,
		bottomContentPadding,
		footerHeight,
	} :: { any })

	local controlState, updateControlState = useControlState()
	-- TODO: Use RoundedRect here until the selection cursor for ExperienceTileV3 is ready, as it's currently the only type of cursor with additional outter spacing.
	local selectionCursor = useSelectionCursor(CursorKind.RoundedRect)
	local colorForCurrentControlState: StyleTypes.ThemeItem? = getControlStateColor(controlState, overlayColors)
	local overlayColor: Color3 | nil
	local overlayTransparency: number
	if colorForCurrentControlState ~= nil then
		overlayColor = colorForCurrentControlState.Color
		overlayTransparency = colorForCurrentControlState.Transparency
	else
		overlayColor = nil
		overlayTransparency = 1
	end
	return renderContentWithPadding(Interactable, selectionCursorPadding, {
		Size = UDim2.new(1, 0, 1, 0),
		SelectionImageObject = selectionCursor,
		onStateChanged = updateControlState,
		[React.Event.Activated] = props.onActivated,
	}, {
		VerticalTile = React.createElement(VerticalTile, {
			hasBackground = if UIBloxConfig.experienceTileHoverDelay then hasBackground else true,
			hasOutline = if UIBloxConfig.experienceTileHoverDelay then setDefault(props.hasOutline, true) else true,
			isHoverEnabled = isHoverEnabled,
			hoverDelay = if UIBloxConfig.experienceTileHoverDelay then props.hoverDelay else nil,
			onHoverChanged = if UIBloxConfig.experienceTileHoverDelay then props.onHoverChanged else nil,
			isOverlayVisible = false,
			isActive = false,
			renderTopContent = renderTopContent,
			renderBottomContent = renderBottomContent,
			renderFooterRow = renderFooterRow,
			reservedBottomHeight = 0,
			backgroundColor = backgroundColor,
			border = border,
			dropShadow = dropShadow,
		}),
		OverlayColor = React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = overlayColor,
			ZIndex = 10,
			BackgroundTransparency = overlayTransparency,
		}, {
			Corner = React.createElement("UICorner", {
				CornerRadius = border.CornerRadius,
			}),
		}),
	})
end

return ExperienceTileV3

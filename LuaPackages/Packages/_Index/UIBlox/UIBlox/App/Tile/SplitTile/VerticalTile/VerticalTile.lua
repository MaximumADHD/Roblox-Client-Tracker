local VerticalTileRoot = script.Parent
local SplitTileRoot = VerticalTileRoot.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local React = require(Packages.React)
local t = require(Packages.t)

local setDefault = require(UIBlox.Utility.setDefault)
local useStyle = require(Core.Style.useStyle)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local Images = require(App.ImageSet.Images)
local TileOverlay = require(TileRoot.SplitTile.TileOverlay)
local TileContentPanel = require(TileRoot.SplitTile.TileContentPanel)
local VerticalTileThumbnail = require(TileRoot.SplitTile.VerticalTile.VerticalTileThumbnail)

local DEFAULT_ACTION_ROW_HEIGHT = 48
local BOTTOM_CONTENT_HEIGHT = 60
local HOVER_CONTENT_HEIGHT = 64

local STANDARD_PADDING = 8
local HOVER_PADDING = 12
local OUTLINE_THICKNESS = 1
local CORNER_RADIUS = UDim.new(0, 8)

local SQUARE_ASPECT_RATIO = 1
local WIDE_ASPECT_RATIO = 0.5625
local DROP_SHADOW = "component_assets/dropshadow_24_6"

export type Props = {
	-- The experience's name that will show a loading state if nil
	titleText: string?,
	-- The experience's thumbnail that will show a loading state if nil
	thumbnail: string?,
	-- The experience's thumbnail to be shown when in a wide aspect ratio
	wideThumbnail: string?,
	-- Row of actions related to contents, pinned to bottom of tile when hovered
	actionRow: table?,
	-- Height of the tile's action row
	actionRowHeight: number?,
	-- Footer to be shown below the experience title
	footer: table?,
	-- Height of the tile's footer
	footerHeight: number?,
	-- Minimum dimensions allowed for the tile
	minTileSize: Vector2?,
	-- Whether or not the tile should use a background
	hasBackground: boolean?,
	-- Whether or not the tile should show a border outline
	hasOutline: boolean?,
	-- Whether or not the tile thumbnail in hover state should use a wide aspect ratio
	hasWideHover: boolean?,
	-- Whether or not hover mode is enabled for the tile
	isHoverEnabled: boolean?,
	-- Whether or not the tile should show a stateful overlay
	isOverlayVisible: boolean?,
	-- Whether or not the tile should render its hovered state and accept input
	isActive: boolean?,
	-- The function that gets called when an VerticalTile is clicked
	onActivated: (() -> ())?,
}

local function getPanelHeight(footerHeight: number, title: string, isHovered: boolean)
	local panelHeight = 0
	if title and string.len(title) > 0 then
		panelHeight = if isHovered then HOVER_CONTENT_HEIGHT else BOTTOM_CONTENT_HEIGHT
	end
	panelHeight = panelHeight + footerHeight

	return panelHeight
end

local function VerticalTile(props: Props)
	local titleText = props.titleText
	local onActivated = props.onActivated
	local hasBackground = setDefault(props.hasBackground, true)
	local hasOutline = setDefault(props.hasOutline, true)
	local hasWideHover = setDefault(props.hasWideHover, false)
	local isHoverEnabled = setDefault(props.isHoverEnabled, true)
	local isOverlayVisible = setDefault(props.isOverlayVisible, true)
	local isActive = setDefault(props.isActive, true)
	local footer = props.footer
	local footerHeight = setDefault(props.footerHeight, 0)
	local actionRowHeight = setDefault(props.actionRow, DEFAULT_ACTION_ROW_HEIGHT)

	local isHovered, setHovered = React.useState(false)
	local onHoverChanged = React.useCallback(function(isHovered: boolean)
		return function()
			setHovered(isHovered)
		end
	end, {})
	local showHoverState = isHovered and isHoverEnabled

	local aspectRatio = if showHoverState and hasWideHover then WIDE_ASPECT_RATIO else SQUARE_ASPECT_RATIO
	local contentPadding = if showHoverState and hasBackground then HOVER_PADDING else STANDARD_PADDING
	local panelHeight = getPanelHeight(footerHeight, titleText, isHovered)
	local hasPinnedFooter = not isHovered and footer ~= nil

	local stylePalette = useStyle()
	local theme = stylePalette.Theme
	local tileBackgroundColor = if hasBackground then theme.BackgroundUIDefault.Color else nil
	local tileBackgroundTransparency = if hasBackground then theme.BackgroundUIDefault.Transparency else 1

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		UISizeConstraint = if props.minTileSize
			then React.createElement("UISizeConstraint", {
				MinSize = props.minTileSize,
			})
			else nil,
		TileContent = React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = tileBackgroundColor,
			BackgroundTransparency = tileBackgroundTransparency,
			[React.Event.MouseEnter] = if isHoverEnabled then onHoverChanged(true) else nil,
			[React.Event.MouseLeave] = if isHoverEnabled then onHoverChanged(false) else nil,
			ClipsDescendants = false,
			ZIndex = 1,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = CORNER_RADIUS,
			}),
			Panel = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				ZIndex = 2,
			}, {
				UIListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				TopContent = React.createElement(VerticalTileThumbnail, {
					aspectRatio = aspectRatio,
					isTopRounded = true,
					isBottomRounded = not hasBackground,
					thumbnail = if showHoverState and hasWideHover then props.wideThumbnail else props.thumbnail,
				}),
				BottomContent = React.createElement(TileContentPanel, {
					outerPadding = contentPadding,
					innerPadding = if showHoverState then 8 else nil,
					panelHeight = UDim.new(0, panelHeight),
					contentTitle = titleText,
					contentFooter = if not hasPinnedFooter then footer else nil,
					footerHeight = UDim.new(0, footerHeight),
					hasSidePadding = hasBackground,
				}),
			}),
			PinnedFooter = if hasPinnedFooter
				then React.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, footerHeight + if hasBackground then (contentPadding * 2) else 0),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ZIndex = 2,
				}, {
					Padding = React.createElement("UIPadding", {
						PaddingLeft = if hasBackground then UDim.new(0, contentPadding) else nil,
						PaddingRight = if hasBackground then UDim.new(0, contentPadding) else nil,
						PaddingTop = UDim.new(0, contentPadding),
						PaddingBottom = UDim.new(0, contentPadding),
					}),
					Footer = footer,
				})
				else nil,
			Overlay = React.createElement(TileOverlay, {
				actionRow = if showHoverState then props.actionRow else nil,
				actionRowHeight = if showHoverState then props.actionRowHeight else nil,
				onActivated = onActivated,
				isVisible = isOverlayVisible,
				isActive = isActive,
			}),
		}),
		BorderFrame = if hasOutline
			then React.createElement("Frame", {
				Size = UDim2.new(1, -2 * OUTLINE_THICKNESS, 1, -2 * OUTLINE_THICKNESS),
				AnchorPoint = if hasBackground then Vector2.new(0.5, 0.5) else nil,
				Position = if hasBackground
					then UDim2.fromScale(0.5, 0.5)
					else UDim2.fromOffset(OUTLINE_THICKNESS, OUTLINE_THICKNESS),
				BackgroundTransparency = 1,
				SizeConstraint = if not hasBackground then Enum.SizeConstraint.RelativeXX else nil,
				ZIndex = 4,
			}, {
				UIStroke = React.createElement("UIStroke", {
					Color = theme.Divider.Color,
					Transparency = theme.Divider.Transparency,
					Thickness = OUTLINE_THICKNESS,
				}),
				UICorner = React.createElement("UICorner", {
					CornerRadius = CORNER_RADIUS,
				}),
			})
			else nil,
		HoverShadow = if showHoverState and hasBackground
			then React.createElement(ImageSetComponent.Label, {
				ZIndex = 0,
				Position = UDim2.new(0.5, 0, 0.5, 2),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 10, 1, 12),
				Image = Images[DROP_SHADOW],
				ImageColor3 = theme.DropShadow.Color,
				ImageTransparency = theme.DropShadow.Transparency,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(18, 18, 18, 18),
			})
			else nil,
	})
end

return VerticalTile

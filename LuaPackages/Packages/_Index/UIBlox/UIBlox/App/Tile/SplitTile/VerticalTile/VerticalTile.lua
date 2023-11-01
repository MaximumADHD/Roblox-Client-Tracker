--!nocheck
local VerticalTileRoot = script.Parent
local SplitTileRoot = VerticalTileRoot.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)

local useStyle = require(Core.Style.useStyle)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local Images = require(App.ImageSet.Images)
local TileOverlay = require(TileRoot.SplitTile.TileOverlay)
local StyleTypes = require(App.Style.StyleTypes)
local useDebouncedState = require(UIBlox.Utility.useDebouncedState)

local OUTLINE_THICKNESS = 1
local CORNER_RADIUS = UDim.new(0, 8)
local DROP_SHADOW = "component_assets/dropshadow_24_6"

type ThemeItem = StyleTypes.ThemeItem
type DropShadowItem = StyleTypes.DropShadowItem
type BorderItem = StyleTypes.BorderItem

export type Props = {
	-- Minimum dimensions allowed for the tile
	minTileSize: Vector2?,
	-- Whether or not the tile should use a background
	hasBackground: boolean?,
	-- Whether or not the tile should show a border outline
	hasOutline: boolean?,
	-- Whether or not hover mode is enabled for the tile
	isHoverEnabled: boolean?,
	-- Delay in seconds before the tile will react to hover user input
	hoverDelay: number?,
	-- Callback that fires when the tile's hover state changes
	onHoverChanged: (() -> ())?,
	-- Whether or not the tile should show a stateful overlay
	isOverlayVisible: boolean?,
	-- Whether or not the tile should render its hovered state and accept input
	isActive: boolean?,
	-- Callback activated when a VerticalTile is clicked
	onActivated: (() -> ())?,
	-- Content to fill the top portion of the tile which can vary based on hover state
	renderTopContent: ((isHovered: boolean) -> table)?,
	-- Content to fill the bottom portion of the tile which can vary based on hover state
	renderBottomContent: ((isHovered: boolean) -> table)?,
	-- Content which contains actions a user can take which is displayed at bottom of tile
	renderFooterRow: ((isHovered: boolean) -> table)?,
	-- Height reserved at bottom of the tile which should not trigger onActivated
	reservedBottomHeight: number?,
	-- Color of the background
	backgroundColor: ThemeItem?,
	-- Border config
	border: BorderItem?,
	-- Drop shadow config
	dropShadow: DropShadowItem?,
}

local function useIsHoveredState(hoverDelay: number?, onHoverChanged: (() -> ())?)
	local isHovered, setIsHovered = useDebouncedState(false, hoverDelay)

	React.useLayoutEffect(function()
		if onHoverChanged ~= nil then
			onHoverChanged(isHovered)
		end
	end, { onHoverChanged, isHovered })

	return isHovered, setIsHovered
end

local function VerticalTile(props: Props)
	local stylePalette = useStyle()
	local theme = stylePalette.Theme
	local joinedProps = Cryo.Dictionary.join({
		hasBackground = true,
		hasOutline = true,
		isHoverEnabled = true,
		isOverlayVisible = true,
		isActive = true,
		backgroundColor = {
			Color = theme.BackgroundUIDefault.Color,
			Transparency = theme.BackgroundUIDefault.Transparency,
		},
		border = {
			BorderColor = {
				Color = theme.Divider.Color,
				Transparency = theme.Divider.Transparency,
			},
			CornerRadius = CORNER_RADIUS,
			Width = OUTLINE_THICKNESS,
		},
		dropShadow = {
			Position = UDim2.new(0.5, 0, 0.5, 2),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.new(1, 10, 1, 12),
			ImageColor = {
				Color = theme.DropShadow.Color,
				Transparency = theme.DropShadow.Transparency,
			},
			ImageAssetName = DROP_SHADOW,
			SliceCenter = Rect.new(18, 18, 18, 18),
		},
	}, props)
	local hasBackground = joinedProps.hasBackground
	local isHoverEnabled = joinedProps.isHoverEnabled
	local isHovered, setIsHovered = useIsHoveredState(joinedProps.hoverDelay, joinedProps.onHoverChanged)
	local onHoverChanged = React.useCallback(function(isHovered: boolean)
		return function()
			setIsHovered(isHovered)
		end
	end, {})
	local showHoverState = isHovered and isHoverEnabled
	local tileBackgroundColor = if hasBackground then joinedProps.backgroundColor.Color else nil
	local tileBackgroundTransparency = if hasBackground then joinedProps.backgroundColor.Transparency else 1
	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		UISizeConstraint = if joinedProps.minTileSize
			then React.createElement("UISizeConstraint", {
				MinSize = joinedProps.minTileSize,
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
				CornerRadius = joinedProps.border.CornerRadius,
			}),
			Panel = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				ZIndex = 2,
			}, {
				UIListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.Name,
				}),
				-- content list items ordered by name
				Content1 = if joinedProps.renderTopContent then joinedProps.renderTopContent(showHoverState) else nil,
				Content2 = if joinedProps.renderBottomContent
					then joinedProps.renderBottomContent(showHoverState)
					else nil,
			}),
			FooterRow = if joinedProps.renderFooterRow then joinedProps.renderFooterRow(showHoverState) else nil,
			Overlay = React.createElement(TileOverlay, {
				reservedBottomHeight = joinedProps.reservedBottomHeight,
				isVisible = joinedProps.isOverlayVisible,
				isActive = joinedProps.isActive,
				onActivated = joinedProps.onActivated,
				zIndex = 3,
			}),
		}),
		BorderFrame = if joinedProps.hasOutline
			then React.createElement("Frame", {
				Size = UDim2.new(1, -2 * joinedProps.border.Width, 1, -2 * joinedProps.border.Width),
				AnchorPoint = if hasBackground then Vector2.new(0.5, 0.5) else nil,
				Position = if hasBackground
					then UDim2.fromScale(0.5, 0.5)
					else UDim2.fromOffset(joinedProps.border.Width, joinedProps.border.Width),
				BackgroundTransparency = 1,
				SizeConstraint = if not hasBackground then Enum.SizeConstraint.RelativeXX else nil,
				ZIndex = 4,
			}, {
				UIStroke = React.createElement("UIStroke", {
					Color = joinedProps.border.BorderColor.Color,
					Transparency = joinedProps.border.BorderColor.Transparency,
					Thickness = joinedProps.border.Width,
				}),
				UICorner = React.createElement("UICorner", {
					CornerRadius = joinedProps.border.CornerRadius,
				}),
			})
			else nil,
		HoverShadow = if showHoverState and hasBackground
			then React.createElement(ImageSetComponent.Label, {
				ZIndex = 0,
				Position = joinedProps.dropShadow.Position,
				AnchorPoint = joinedProps.dropShadow.AnchorPoint,
				BackgroundTransparency = 1,
				Size = joinedProps.dropShadow.Size,
				Image = Images[joinedProps.dropShadow.ImageAssetName],
				ImageColor3 = joinedProps.dropShadow.ImageColor.Color,
				ImageTransparency = joinedProps.dropShadow.ImageColor.Transparency,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = joinedProps.dropShadow.SliceCenter,
			})
			else nil,
	})
end

return VerticalTile

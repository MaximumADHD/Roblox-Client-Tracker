local VerticalTileRoot = script.Parent
local SplitTileRoot = VerticalTileRoot.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)

local setDefault = require(UIBlox.Utility.setDefault)
local useStyle = require(Core.Style.useStyle)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local Images = require(App.ImageSet.Images)
local TileOverlay = require(TileRoot.SplitTile.TileOverlay)
local StyleTypes = require(App.Style.StyleTypes)

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

local function VerticalTile(props: Props)
	local stylePalette = useStyle()
	local theme = stylePalette.Theme
	local props = Cryo.Dictionary.join({
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
	local hasBackground = props.hasBackground
	local isHoverEnabled = props.isHoverEnabled
	local isHovered, setHovered = React.useState(false)
	local onHoverChanged = React.useCallback(function(isHovered: boolean)
		return function()
			setHovered(isHovered)
		end
	end, {})
	local showHoverState = isHovered and isHoverEnabled
	local tileBackgroundColor = if hasBackground then props.backgroundColor.Color else nil
	local tileBackgroundTransparency = if hasBackground then props.backgroundColor.Transparency else 1
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
				CornerRadius = props.border.CornerRadius,
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
				Content1 = if props.renderTopContent then props.renderTopContent(showHoverState) else nil,
				Content2 = if props.renderBottomContent then props.renderBottomContent(showHoverState) else nil,
			}),
			FooterRow = if props.renderFooterRow then props.renderFooterRow(showHoverState) else nil,
			Overlay = React.createElement(TileOverlay, {
				reservedBottomHeight = props.reservedBottomHeight,
				isVisible = props.isOverlayVisible,
				isActive = props.isActive,
				onActivated = props.onActivated,
				zIndex = 3,
			}),
		}),
		BorderFrame = if props.hasOutline
			then React.createElement("Frame", {
				Size = UDim2.new(1, -2 * props.border.Width, 1, -2 * props.border.Width),
				AnchorPoint = if hasBackground then Vector2.new(0.5, 0.5) else nil,
				Position = if hasBackground
					then UDim2.fromScale(0.5, 0.5)
					else UDim2.fromOffset(props.border.Width, props.border.Width),
				BackgroundTransparency = 1,
				SizeConstraint = if not hasBackground then Enum.SizeConstraint.RelativeXX else nil,
				ZIndex = 4,
			}, {
				UIStroke = React.createElement("UIStroke", {
					Color = props.border.BorderColor.Color,
					Transparency = props.border.BorderColor.Transparency,
					Thickness = props.border.Width,
				}),
				UICorner = React.createElement("UICorner", {
					CornerRadius = props.border.CornerRadius,
				}),
			})
			else nil,
		HoverShadow = if showHoverState and hasBackground
			then React.createElement(ImageSetComponent.Label, {
				ZIndex = 0,
				Position = props.dropShadow.Position,
				AnchorPoint = props.dropShadow.AnchorPoint,
				BackgroundTransparency = 1,
				Size = props.dropShadow.Size,
				Image = Images[props.dropShadow.ImageAssetName],
				ImageColor3 = props.dropShadow.ImageColor.Color,
				ImageTransparency = props.dropShadow.ImageColor.Transparency,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = props.dropShadow.SliceCenter,
			})
			else nil,
	})
end

return VerticalTile

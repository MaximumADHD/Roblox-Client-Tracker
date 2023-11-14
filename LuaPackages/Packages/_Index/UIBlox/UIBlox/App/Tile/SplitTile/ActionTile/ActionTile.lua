local ActionTileFolder = script.Parent
local SplitTile = ActionTileFolder.Parent
local Tile = SplitTile.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local Roact = require(Packages.Roact)
local getControlStateColor = require(UIBlox.Utility.getControlStateColor)
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local useStyle = require(Core.Style.useStyle)
local Interactable = require(Core.Control.Interactable)
local useControlState = require(Core.Control.useControlState)
local StyleTypes = require(App.Style.StyleTypes)
local Fonts = require(App.Style.Fonts)
local useSelectionCursor = require(App.SelectionImage.useSelectionCursor)
local CursorKind = require(App.SelectionImage.CursorKind)
local useCursor = require(App.SelectionCursor.useCursor)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)
local ImagesTypes = require(App.ImageSet.ImagesTypes)
local Constants = require(ActionTileFolder.Constants)

local VerticalTile = require(SplitTile.VerticalTile.VerticalTile)

local defaultProps = {
	isHoverEnabled = false,
}

export type StyleProps = Constants.StyleProps

export type Props = {
	-- The title string
	title: string?,
	-- The icon image
	icon: ImagesTypes.ImageSetImage?,
	-- Whether or not hover mode is enabled for the tile
	isHoverEnabled: boolean?,
	-- Function called when tile panel is activated
	onActivated: (() -> any)?,
	-- Props to styling the component
	styleProps: StyleProps?,
}

local function renderContentWithPadding(
	component: typeof(Interactable) | string,
	padding: StyleTypes.PaddingItem,
	props: { [any]: any },
	children: { [any]: React.ReactElement? }
)
	return React.createElement(component, props, {
		Padding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, padding.Left),
			PaddingRight = UDim.new(0, padding.Right),
			PaddingTop = UDim.new(0, padding.Top),
			PaddingBottom = UDim.new(0, padding.Bottom),
		}),
		Content = Roact.createFragment(children :: any),
	})
end

local function ActionTile(props: Props)
	local style = useStyle()
	local defaultStyleProps: StyleProps = Constants.getDefaultStyleProps(style)
	local styleProps = Cryo.Dictionary.join(defaultStyleProps, props.styleProps or {})
	local backgroundColor: StyleTypes.ThemeItem = styleProps.backgroundColor
	local border: StyleTypes.BorderItem = styleProps.border
	local dropShadow: StyleTypes.DropShadowItem = styleProps.dropShadow
	local topContentPadding: StyleTypes.PaddingItem = styleProps.topContentPadding
	local overlayColors: StyleTypes.ControlStateColors = styleProps.overlayColors
	local selectionCursorPadding: StyleTypes.PaddingItem = styleProps.selectionCursorPadding
	local contentGap: number = styleProps.contentGap
	local titleFont: Fonts.Font = styleProps.titleFont
	local iconSize: number = styleProps.iconSize
	local iconImageColor: StyleTypes.ThemeItem = styleProps.iconImageColor
	local titleTextColor: StyleTypes.ThemeItem = styleProps.titleTextColor
	props = Cryo.Dictionary.join(defaultProps, props)
	local textOneLineSizeY
	if props.title then
		textOneLineSizeY = titleFont.RelativeSize * style.Font.BaseSize
	end
	local renderTopContent = React.useCallback(function(isHoverContent: boolean): React.ReactElement?
		return renderContentWithPadding("Frame", topContentPadding, {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			Content = React.createElement("Frame", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				ClipsDescendants = true,
				BackgroundTransparency = 1,
			}, {
				React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, contentGap),
				}),
				Icon = if props.icon
					then React.createElement(ImageSetComponent.Label, {
						Size = UDim2.fromOffset(iconSize, iconSize),
						BackgroundTransparency = 1,
						Image = props.icon,
						ImageColor3 = iconImageColor.Color,
						ImageTransparency = iconImageColor.Transparency,
						LayoutOrder = 1,
					})
					else nil,
				Title = if props.title
					then React.createElement(GenericTextLabel, {
						Text = props.title,
						Size = UDim2.new(1, 0, 0, textOneLineSizeY),
						TextXAlignment = Enum.TextXAlignment.Center,
						LayoutOrder = 2,
						fontStyle = titleFont,
						colorStyle = titleTextColor,
						TextTruncate = Enum.TextTruncate.AtEnd,
					})
					else nil,
			}),
		})
	end, {
		contentGap,
		props.title,
		props.icon,
		iconSize,
		textOneLineSizeY,
		titleFont,
		topContentPadding,
		style,
	} :: { any })

	local controlState, updateControlState = useControlState()
	-- TODO: Use RoundedRect here until the selection cursor for ActionTile is ready, as it's currently the only type of cursor with additional outter spacing.
	local selectionCursor = if UIBloxConfig.useNewSelectionCursor
		then useCursor(border.CornerRadius)
		else useSelectionCursor(CursorKind.RoundedRect)
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
		BackgroundTransparency = 1,
		SelectionImageObject = selectionCursor,
		onStateChanged = updateControlState,
		[React.Event.Activated] = props.onActivated,
	}, {
		VerticalTile = React.createElement(VerticalTile, {
			hasBackground = true,
			hasOutline = true,
			isHoverEnabled = props.isHoverEnabled,
			isOverlayVisible = false,
			isActive = false,
			renderTopContent = renderTopContent,
			renderBottomContent = nil,
			renderFooterRow = nil,
			reservedBottomHeight = 0,
			backgroundColor = backgroundColor,
			border = border,
			dropShadow = dropShadow,
		}),
		OverlayColor = React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = overlayColor,
			BackgroundTransparency = overlayTransparency,
		}, {
			Corner = React.createElement("UICorner", {
				CornerRadius = border.CornerRadius,
			}),
		}),
	})
end

return ActionTile

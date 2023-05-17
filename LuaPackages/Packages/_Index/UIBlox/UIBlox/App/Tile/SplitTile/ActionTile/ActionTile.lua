--!strict
local SplitTile = script.Parent.Parent
local Tile = SplitTile.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local Roact = require(Packages.Roact)
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local getControlStateColor = require(UIBlox.Utility.getControlStateColor)
local useStyle = require(Core.Style.useStyle)
local Interactable = require(Core.Control.Interactable)
local useControlState = require(Core.Control.useControlState)
local StyleTypes = require(App.Style.StyleTypes)
local Fonts = require(App.Style.Fonts)
local useSelectionCursor = require(App.SelectionImage.useSelectionCursor)
local CursorKind = require(App.SelectionImage.CursorKind)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)
local Images = require(App.ImageSet.Images)
local ImagesTypes = require(App.ImageSet.ImagesTypes)

local VerticalTile = require(SplitTile.VerticalTile.VerticalTile)

local defaultProps = {
	isHoverEnabled = false,
}

export type StyleProps = {
	-- Color for the background
	backgroundColor: StyleTypes.ThemeItem,
	-- Border config
	border: StyleTypes.BorderItem,
	-- Drop shadow config
	dropShadow: StyleTypes.DropShadowItem,
	-- Padding for TopContent
	topContentPadding: StyleTypes.PaddingItem,
	-- Color for the overlay handling the control states
	overlayColors: StyleTypes.ControlStateColors,
	-- Padding for the gamepad selection cursor
	selectionCursorPadding: StyleTypes.PaddingItem,
	-- Gap between content list's icon and text
	contentGap: number,
	-- The Font type of text
	titleFont: Fonts.Font,
	-- Color for title's text
	titleTextColor: StyleTypes.ThemeItem,
	-- The length of icon size
	iconSize: number,
	-- Color for icon's image
	iconImageColor: StyleTypes.ThemeItem,
}

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
	styleProps: StyleProps,
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
	-- Add default props fallback after design token decouple solution is finalized
	assert(props.styleProps ~= nil, "StyleProps must be specified in order to style the component correctly")
	local props: Props = Cryo.Dictionary.join(defaultProps, props)
	local backgroundColor: StyleTypes.ThemeItem = props.styleProps.backgroundColor
	local border: StyleTypes.BorderItem = props.styleProps.border
	local dropShadow: StyleTypes.DropShadowItem = props.styleProps.dropShadow
	local topContentPadding: StyleTypes.PaddingItem = props.styleProps.topContentPadding
	local overlayColors: StyleTypes.ControlStateColors = props.styleProps.overlayColors
	local selectionCursorPadding: StyleTypes.PaddingItem = props.styleProps.selectionCursorPadding
	local contentGap: number = props.styleProps.contentGap
	local titleFont: Fonts.Font = props.styleProps.titleFont
	local iconSize: number = props.styleProps.iconSize
	local iconImageColor: StyleTypes.ThemeItem = props.styleProps.iconImageColor
	local titleTextColor: StyleTypes.ThemeItem = props.styleProps.titleTextColor
	local style = useStyle()
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
	local selectionCursor = useSelectionCursor(CursorKind.LargePill)
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

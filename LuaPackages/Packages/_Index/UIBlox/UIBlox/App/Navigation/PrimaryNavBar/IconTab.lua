local Navigation = script.Parent.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

-- Packages
local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

-- UIBlox Core
local useStyle = require(UIBlox.Core.Style.useStyle)
local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local Placement = require(Navigation.Enum.Placement)
local ControlState = require(UIBlox.Core.Control.Enum.ControlState)

local HorizontalContainer = require(script.Parent.HorizontalContainer)

-- Types
local Types = require(script.Parent.Types)
type Props = Types.IconTabItemProps

-- Constants
local Constants = require(script.Parent.Constants)

local defaultProps: Props = {
	controlState = ControlState.Default,
	selected = false,
}

return function(providedProps: Props)
	local props: Props = Object.assign({}, defaultProps, providedProps)
	local item: Types.IconTabItem = props.item
	local pressed = props.controlState == ControlState.SelectedPressed
	local selected = props.selected
	local style = useStyle()
	local roundedBackgroundHeight = Constants.ICON_TAB_HEIGHT - Constants.ICON_TAB_PADDING * 2
	return HorizontalContainer({
		size = UDim2.new(0, 0, 0, Constants.ICON_TAB_HEIGHT),
		automaticSize = Enum.AutomaticSize.X,
		roundedBackgroundSize = UDim2.new(1, -(Constants.ICON_TAB_PADDING * 2), 0, roundedBackgroundHeight),
		roundedBackgroundPosition = UDim2.fromOffset(Constants.ICON_TAB_PADDING, Constants.ICON_TAB_PADDING),
		roundedBackgroundColor = style.Theme.Divider.Color,
		roundedBackgroundTransparency = Constants.ICON_TAB_SELECTED_TRANSPARENCY,
		spacing = Constants.ICON_TAB_ITEM_ICON_TITLE_SPACING,
		padding = {
			left = Constants.ICON_TAB_ITEM_PADDING_LEFT,
			right = Constants.ICON_TAB_ITEM_PADDING_RIGHT,
		},
		showRoundedBackground = if item.showRoundedBackground ~= nil then item.showRoundedBackground else selected,
		showOverlay = if item.showOverlay ~= nil then item.showOverlay else pressed,
	}, {
		Icon = if item.iconComponent == nil
			then React.createElement(ImageSetLabel, {
				Size = UDim2.new(0, Constants.ICON_TAB_ITEM_ICON_WIDTH, 0, Constants.ICON_TAB_ITEM_ICON_HEIGHT),
				LayoutOrder = 1,
				Image = item.icon,
				BackgroundTransparency = 1,
				ScaleType = Enum.ScaleType.Fit,
			})
			else React.createElement("Frame", {
				Size = UDim2.new(0, Constants.ICON_TAB_ITEM_ICON_WIDTH, 0, Constants.ICON_TAB_ITEM_ICON_HEIGHT),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, {
				React.createElement(item.iconComponent, {
					placement = Placement.Bottom,
					selected = selected,
					pressed = pressed,
					hovered = false,
				}),
			}),
		Title = React.createElement(GenericTextLabel, {
			LayoutOrder = 2,
			Size = UDim2.new(0, 0, 1, 0),
			AutomaticSize = Enum.AutomaticSize.X,
			Text = item.title,
			fluidSizing = false,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			colorStyle = {
				Color = if selected then style.Theme.TextEmphasis.Color else style.Theme.TextDefault.Color,
				Transparency = 0,
			},
			fontStyle = style.Font.Header1,
			TextTruncate = Enum.TextTruncate.AtEnd,
			BackgroundTransparency = 1,
		}),
	})
end

--!nonstrict
local Navigation = script.Parent.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

-- Packages
local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local useStyle = require(UIBlox.Core.Style.useStyle)
local IconSize = require(App.ImageSet.Enum.IconSize)
local ImagesTypes = require(App.ImageSet.ImagesTypes)
local getIconSize = require(App.ImageSet.getIconSize)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)

local Constants = require(script.Parent.Constants)

type Props = {
	-- Position of context bar
	position: UDim2?,
	-- Anchor point of context bar
	anchorPoint: Vector2?,
	-- List of items to display on the context bar
	items: {
		[number]: {
			-- Icon of the shortcut
			icon: string | ImagesTypes.ImageSetImage,
			-- Shortcut description
			text: string,
		},
	},
}

local defaultProps: Props = {
	items = {},
}

local function ContextBar(providedProps: Props)
	local props: Props = Object.assign({}, defaultProps, providedProps)
	local style = useStyle()

	local children = {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0),
		}),
		Padding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, Constants.CONTEXT_BAR_PADDING_START),
			PaddingRight = UDim.new(0, Constants.CONTEXT_BAR_PADDING_END),
		}),
		ListLayout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, Constants.CONTEXT_BAR_ITEMS_SPACING),
		}),
	}

	local iconSize = getIconSize(IconSize.Medium)
	for index, item in ipairs(props.items) do
		children["Item" .. tostring(index)] = React.createElement("Frame", {
			LayoutOrder = index,
			Size = UDim2.fromOffset(0, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.XY,
		}, {
			UIListLayout = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, Constants.CONTEXT_BAR_ITEM_ICON_LABEL_SPACING),
			}),
			Icon = React.createElement(ImageSetComponent.Label, {
				LayoutOrder = 1,
				Size = UDim2.fromOffset(iconSize, iconSize),
				Image = item.icon,
				ImageColor3 = style.Theme.IconEmphasis.Color,
				ImageTransparency = style.Theme.IconEmphasis.Transparency,
				BackgroundTransparency = 1,
			}),
			Text = React.createElement(GenericTextLabel, {
				LayoutOrder = 2,
				Size = UDim2.fromOffset(0, Constants.CONTEXT_BAR_ITEM_LABEL_HEIGHT),
				AutomaticSize = Enum.AutomaticSize.X,
				Text = item.text,
				colorStyle = style.Theme.TextEmphasis,
				fontStyle = style.Font.CaptionHeader,
				BackgroundTransparency = 1,
			}),
		})
	end

	return React.createElement("Frame", {
		Position = props.position,
		AnchorPoint = props.anchorPoint,
		Size = UDim2.fromOffset(0, Constants.CONTEXT_BAR_HEIGHT),
		BorderSizePixel = 0,
		BackgroundColor3 = style.Theme.UIMuted.Color,
		BackgroundTransparency = style.Theme.UIMuted.Transparency,
		AutomaticSize = Enum.AutomaticSize.X,
	}, children)
end

return ContextBar

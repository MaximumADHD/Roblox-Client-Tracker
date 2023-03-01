local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Cryo = require(VirtualEvents.Parent.Cryo)
local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local formatNumberWithShortUnits = require(VirtualEvents.Common.formatNumberWithShortUnits)

local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local useStyle = UIBlox.Core.Style.useStyle

local defaultProps = {
	iconSize = Vector2.new(18, 18),
	padding = UDim.new(0, 4),
}

export type Props = {
	icon: string,
	counter: number,
	padding: UDim?,
	iconSize: Vector2?,
	layoutOrder: number?,
}

type InternalProps = Props & typeof(defaultProps)

local function EventRowCounter(providedProps: Props)
	local props: InternalProps = Cryo.Dictionary.join(defaultProps, providedProps)
	local style = useStyle()

	if props.counter == 0 then
		return nil :: any
	end

	return React.createElement("Frame", {
		LayoutOrder = props.layoutOrder,
		AutomaticSize = Enum.AutomaticSize.XY,
		BackgroundTransparency = 1,
	}, {
		Layout = React.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = props.padding,
		}),

		Icon = React.createElement(ImageSetLabel, {
			LayoutOrder = 1,
			Size = UDim2.fromOffset(props.iconSize.X, props.iconSize.Y),
			ScaleType = Enum.ScaleType.Stretch,
			Image = props.icon,
			BackgroundTransparency = 1,
			ImageColor3 = style.Theme.TextDefault.Color,
			ImageTransparency = style.Theme.TextDefault.Transparency,
		}),

		Count = React.createElement(StyledTextLabel, {
			layoutOrder = 2,
			text = formatNumberWithShortUnits(props.counter),
			automaticSize = Enum.AutomaticSize.XY,
			fontStyle = style.Font.CaptionBody,
			colorStyle = style.Theme.TextDefault,
		}),
	})
end

return EventRowCounter

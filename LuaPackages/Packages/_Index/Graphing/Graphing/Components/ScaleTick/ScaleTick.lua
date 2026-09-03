--!strict
--[[
    A tick on an axis scale displaying a value.
    TODO write more lol

    Required Props:

    Optional Props:

]]

local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)

local Types = require(Graphing.Types)
local SidePositioner = require(Graphing.Components.SidePositioner)
local GridUtil = require(Graphing.Util.GridUtil)
local StyleUtil = require(Graphing.Util.StyleUtil)

export type Props = {
	Side: Types.Side,
	Position: number,
	Length: number,

	HasLabel: boolean?,
	Formatter: ((number) -> string)?,

	Color3: Types.Bindable<Color3>?,
	TextSize: Types.Bindable<number>?,
	TextPadding: number?,
	Thickness: number?,
	ZIndex: number?,

	Tag: string?,
	children: Types.Children?,
}

local function isX(side: Types.Side): boolean
	return side == Types.SIDE_TOP or side == Types.SIDE_BOTTOM
end

function ScaleTick(props: Props): React.Node
	local length = props.Length
	local thickness = props.Thickness or StyleUtil.SCALE_TICK_THICKNESS
	local textPadding = props.TextPadding or StyleUtil.SCALE_TICK_LABEL_PADDING
	local hasLabel = props.HasLabel == nil or props.HasLabel

	local anchor = GridUtil.getAnchorPointForSide(props.Side)
	local xAlign, yAlign = GridUtil.getTextAlignmentsFromAnchorPoint(anchor)
	local size = if isX(props.Side) then UDim2.fromOffset(thickness, length) else UDim2.fromOffset(length, thickness)

	local labelDistance = length + textPadding
	local labelOffset =
		UDim2.fromOffset(-2 * labelDistance * anchor.X + labelDistance, -2 * labelDistance * anchor.Y + labelDistance)

	return React.createElement(SidePositioner, {
		Side = props.Side,
		Position = props.Position,
		ZIndex = props.ZIndex,
	}, {
		Tick = React.createElement("Frame", {
			AnchorPoint = anchor,
			Size = size,
			BackgroundColor3 = props.Color3 or StyleUtil.SCALE_TICK_COLOR3,
			BorderSizePixel = 0,
		}, props.children),
		Label = hasLabel and React.createElement("TextLabel", {
			AnchorPoint = anchor,
			Position = labelOffset,
			Text = if props.Formatter then props.Formatter(props.Position) else tostring(props.Position),
			TextXAlignment = xAlign,
			TextYAlignment = yAlign,
			BackgroundTransparency = 1,
			TextColor3 = props.Color3 or StyleUtil.SCALE_TICK_LABEL_COLOR3,
			TextSize = props.TextSize or StyleUtil.SCALE_TICK_LABEL_SIZE,
		}),
	})
end

return ScaleTick

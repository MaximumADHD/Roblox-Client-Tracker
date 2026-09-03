--!strict
--[[
    A grid label.
    TODO write more lol

    Required Props:

    Optional Props:

]]

local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)

local StyleUtil = require(Graphing.Util.StyleUtil)
local Types = require(Graphing.Types)
local ViewportHooks = require(Graphing.Util.useViewportBinding)
local useViewportBinding = ViewportHooks.useViewportBinding
local useViewportVisibility = ViewportHooks.useViewportVisibility

export type Props = {
	Position: Vector2,
	Offset: Vector2?,
	Text: Types.Bindable<string>,
	TextXAlignment: Enum.TextXAlignment?,
	TextYAlignment: Enum.TextYAlignment?,

	Color3: Types.Bindable<Color3>?,
	FontSize: Types.Bindable<number>?,
	ZIndex: Types.Bindable<number>?,

	children: Types.Children?,
	Tag: string?,
}

local function anchorForAlignment(xAlign: Enum.TextXAlignment, yAlign: Enum.TextYAlignment)
	local anchorX = 0
	local anchorY = 0

	if xAlign == Enum.TextXAlignment.Left then
		anchorX = 0
	elseif xAlign == Enum.TextXAlignment.Center then
		anchorX = 0.5
	elseif xAlign == Enum.TextXAlignment.Right then
		anchorX = 1
	end

	if yAlign == Enum.TextYAlignment.Top then
		anchorY = 0
	elseif yAlign == Enum.TextYAlignment.Center then
		anchorY = 0.5
	elseif yAlign == Enum.TextYAlignment.Bottom then
		anchorY = 1
	end

	return Vector2.new(anchorX, anchorY)
end

function Label(props: Props): React.Node
	local xAlign = if props.TextXAlignment then props.TextXAlignment else Enum.TextXAlignment.Center
	local yAlign = if props.TextYAlignment then props.TextYAlignment else Enum.TextYAlignment.Center

	local anchorPoint = React.useMemo(function()
		return anchorForAlignment(xAlign, yAlign)
	end, { props.TextXAlignment, props.TextYAlignment } :: { unknown })

	local binding = useViewportBinding(function(canvasContext)
		local theOffset = if props.Offset then props.Offset else Vector2.new(0, 0)
		local viewPos = canvasContext.plotToView(props.Position)
		return UDim2.new(viewPos.X, theOffset.X, viewPos.Y, theOffset.Y)
	end, { props.Position, props.Offset } :: { unknown })

	local inBounds = useViewportVisibility(function(canvasContext)
		return canvasContext.isPointInViewport(props.Position)
	end, { props.Position } :: { unknown })

	if not inBounds then
		return nil
	end

	return React.createElement("TextLabel", {
		AnchorPoint = anchorPoint,
		Position = binding,
		Text = props.Text,
		TextXAlignment = xAlign,
		TextYAlignment = yAlign,
		BackgroundTransparency = 1,
		TextColor3 = props.Color3 or StyleUtil.GRID_LABEL_COLOR3,
		TextSize = props.FontSize or StyleUtil.GRID_LABEL_FONT_SIZE,
		ZIndex = props.ZIndex,
	}, props.children)
end

return Label

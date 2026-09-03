--!strict
--[[
    A 0-size invisible component that renders at a specific plot position on a specific side of the graph.
    Intended for placing a visible component with a pixel-based size underneath, such as a scale tick.

    Required Props:

    Optional Props:

]]

local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)

local Types = require(Graphing.Types)
local ViewportHooks = require(Graphing.Util.useViewportBinding)
local useViewportBinding = ViewportHooks.useViewportBinding
local useViewportVisibility = ViewportHooks.useViewportVisibility

export type Props = {
	Side: Types.Side,
	Position: number,

	ZIndex: Types.Bindable<number>?,

	children: Types.Children?,
	Tag: string?,
}

local function isX(side: Types.Side): boolean
	return side == Types.SIDE_TOP or side == Types.SIDE_BOTTOM
end

function SidePositioner(props: Props): React.Node
	local binding = useViewportBinding(function(canvasContext)
		local xPos = 0
		local yPos = 0
		if isX(props.Side) then
			xPos = canvasContext.plotToViewX(props.Position)
			if props.Side == Types.SIDE_BOTTOM then
				yPos = 1
			end
		else
			yPos = canvasContext.plotToViewY(props.Position)
			if props.Side == Types.SIDE_RIGHT then
				xPos = 1
			end
		end

		return UDim2.fromScale(xPos, yPos)
	end, { props.Side, props.Position } :: { unknown })

	local inBounds = useViewportVisibility(function(canvasContext)
		return if isX(props.Side)
			then canvasContext.isPointInViewportX(props.Position)
			else canvasContext.isPointInViewportY(props.Position)
	end, { props.Side, props.Position } :: { unknown })

	if not inBounds then
		return nil
	end

	return React.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = binding,
		Size = UDim2.fromOffset(0, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = props.ZIndex,
	}, props.children)
end

return SidePositioner

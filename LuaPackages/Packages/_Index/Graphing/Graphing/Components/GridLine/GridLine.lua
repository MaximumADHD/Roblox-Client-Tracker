--!strict
--[[
    A line that goes from one end of the grid to the other, either Types.ORIENTATION_HORIZONTALly or Types.ORIENTATION_VERTICALly.
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
	Orientation: Types.Orientation,
	Position: number,

	-- bounds for if you want the grid line to only cover a portion of the width of the graph.
	OppositeAxisBounds: NumberRange?,

	Color3: Types.Bindable<Color3>?,
	Thickness: number?,
	Transparency: Types.Bindable<number>?,
	ZIndex: Types.Bindable<number>?,

	children: Types.Children?,
	Tag: string?,
}

function GridLine(props: Props): React.Node
	assert(
		props.Orientation == Types.ORIENTATION_VERTICAL or props.Orientation == Types.ORIENTATION_HORIZONTAL,
		`Invalid orientation {props.Orientation}`
	)

	local color3 = props.Color3 or StyleUtil.GRID_LINE_COLOR3
	local transparency = props.Transparency or StyleUtil.GRID_LINE_TRANSPARENCY
	local thickness = props.Thickness or StyleUtil.GRID_LINE_THICKNESS

	local binding = useViewportBinding(function(canvasContext)
		local viewPosition = if props.Orientation == Types.ORIENTATION_VERTICAL
			then canvasContext.plotToViewX(props.Position)
			else canvasContext.plotToViewY(props.Position)

		local oppMin, oppMax = 0, 1
		if props.OppositeAxisBounds then
			if props.Orientation == Types.ORIENTATION_VERTICAL then
				oppMin = canvasContext.plotToViewY(props.OppositeAxisBounds.Min)
				oppMax = canvasContext.plotToViewY(props.OppositeAxisBounds.Max)
			else
				oppMin = canvasContext.plotToViewX(props.OppositeAxisBounds.Min)
				oppMax = canvasContext.plotToViewX(props.OppositeAxisBounds.Max)
			end
		end

		local framePosition, frameSize
		if props.Orientation == Types.ORIENTATION_VERTICAL then
			framePosition = UDim2.fromScale(viewPosition, (oppMin + oppMax) / 2)
			frameSize = UDim2.new(0, thickness, oppMax - oppMin, 0)
		else
			framePosition = UDim2.fromScale((oppMin + oppMax) / 2, viewPosition)
			frameSize = UDim2.new(oppMax - oppMin, 0, 0, thickness)
		end

		return { position = framePosition, size = frameSize }
	end, { props.Orientation, props.Position, props.OppositeAxisBounds, thickness } :: { unknown })

	local inBounds = useViewportVisibility(function(canvasContext)
		if props.OppositeAxisBounds then
			return if props.Orientation == Types.ORIENTATION_VERTICAL
				then canvasContext.isRectInViewport(
					Rect.new(props.Position, props.OppositeAxisBounds.Min, props.Position, props.OppositeAxisBounds.Max)
				)
				else canvasContext.isRectInViewport(
					Rect.new(props.OppositeAxisBounds.Min, props.Position, props.OppositeAxisBounds.Max, props.Position)
				)
		else
			return if props.Orientation == Types.ORIENTATION_VERTICAL
				then canvasContext.isPointInViewportX(props.Position)
				else canvasContext.isPointInViewportY(props.Position)
		end
	end, { props.Orientation, props.Position, props.OppositeAxisBounds } :: { unknown })

	if not inBounds then
		return nil
	end

	return React.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = binding:map(function(v)
			return v.position
		end),
		Size = binding:map(function(v)
			return v.size
		end),
		BorderSizePixel = 0,
		BackgroundColor3 = color3,
		BackgroundTransparency = transparency,
		ZIndex = props.ZIndex,
	}, props.children)
end

return GridLine

--!strict
--[[
    A 0-size invisible component that renders at a specific plot position.
    Intended for placing a visible component with a pixel-based size underneath, such as a point handle.

    When viewportRectGetter is available (inside a Canvas), position and visibility
    are driven by signal bindings — the component never re-renders for viewport changes.

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
	Position: Vector2 | UDim2,

	ZIndex: Types.Bindable<number>?,

	children: Types.Children?,
	Tag: string?,
	ref: React.Ref<GuiObject>?,
}

function Positioner(props: Props, ref: React.Ref<GuiObject>?): React.Node
	if typeof(props.Position) == "Vector2" then
		local plotPos = props.Position

		local binding = useViewportBinding(function(canvasContext)
			local viewPos = canvasContext.plotToView(plotPos)
			return UDim2.fromScale(viewPos.X, viewPos.Y)
		end, { plotPos })

		local inBounds = useViewportVisibility(function(canvasContext)
			return canvasContext.isPointInViewport(plotPos)
		end, { plotPos })

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
			ref = ref,
			[React.Tag] = props.Tag,
		}, props.children)
	else
		return React.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = props.Position,
			Size = UDim2.fromOffset(0, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ZIndex = props.ZIndex,
			ref = ref,
			[React.Tag] = props.Tag,
		}, props.children)
	end
end

return React.forwardRef(Positioner)

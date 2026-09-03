--!strict
--[[
    A filled rectangle or image with corners defined in plot space.
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
	Rect: Rect,

	BackgroundColor3: Types.Bindable<Color3>?,
	BackgroundTransparency: Types.Bindable<number>?,
	BorderColor3: Types.Bindable<Color3>?,
	BorderThickness: Types.Bindable<number>?,
	Image: string?,
	ImageColor3: Types.Bindable<Color3>?,
	ImageTransparency: Types.Bindable<number>?,
	ZIndex: Types.Bindable<number>?,

	children: Types.Children?,
	Tag: string?,
}

function Panel(props: Props): React.Node
	local binding = useViewportBinding(function(canvasContext)
		local viewMin = canvasContext.plotToView(props.Rect.Min)
		local viewMax = canvasContext.plotToView(props.Rect.Max)
		return {
			position = UDim2.fromScale(viewMin.X, viewMin.Y),
			size = UDim2.fromScale(viewMax.X - viewMin.X, viewMax.Y - viewMin.Y),
		}
	end, { props.Rect })

	local inBounds = useViewportVisibility(function(canvasContext)
		return canvasContext.isRectInViewport(props.Rect)
	end, { props.Rect })

	if not inBounds then
		return nil
	end

	if props.Image then
		return React.createElement("ImageLabel", {
			Position = binding:map(function(v)
				return v.position
			end),
			Size = binding:map(function(v)
				return v.size
			end),

			Image = props.Image,
			ImageColor3 = props.ImageColor3,
			ImageTransparency = props.ImageTransparency,
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			ZIndex = props.ZIndex,

			[React.Tag] = props.Tag,
		}, props.children)
	else
		return React.createElement("Frame", {
			Position = binding:map(function(v)
				return v.position
			end),
			Size = binding:map(function(v)
				return v.size
			end),

			BackgroundColor3 = props.BackgroundColor3 or StyleUtil.GRID_BOX_BACKGROUND_COLOR3,
			BackgroundTransparency = props.BackgroundTransparency or StyleUtil.GRID_BOX_BACKGROUND_TRANSPARENCY,
			BorderColor3 = props.BorderColor3 or StyleUtil.GRID_BOX_BORDER_COLOR3,
			BorderSizePixel = props.BorderThickness or StyleUtil.GRID_BOX_BORDER_THICKNESS,
			ZIndex = props.ZIndex,

			[React.Tag] = props.Tag,
		}, props.children)
	end
end

return Panel

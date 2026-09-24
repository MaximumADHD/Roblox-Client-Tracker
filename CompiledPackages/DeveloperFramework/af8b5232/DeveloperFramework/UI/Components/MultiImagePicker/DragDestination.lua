--[[
	A temporary container that exists as a visual destination for dragged thumbnails.
	Used in the process of reordering thumbnails.

	When a thumbnail is being dragged, its appearance in the ThumbnailSet is
	replaced with this DragDestination image.

	Required Props:
		table Theme: The styles for the overall MultiImagePicker component. Styles are prop drilled from init.lua.

	Optional Props:
		number LayoutOrder: The order in which this widget will appear in the set.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)

export type Props = {
	LayoutOrder: number?,
	Theme: { [string]: any },
}

local DragDestination = Roact.PureComponent:extend("DragDestination")

function DragDestination:render()
	local props: Props = self.props
	local theme = props.Theme
	local dragDestinationTheme = theme.DragDestination

	local index = props.LayoutOrder or 1

	return Roact.createElement("ImageLabel", {
		BorderSizePixel = 0,
		BackgroundTransparency = 0.85,
		BackgroundColor3 = dragDestinationTheme.Background,
		ImageColor3 = dragDestinationTheme.Border,
		Image = theme.DottedBorder.Image,
		ResampleMode = Enum.ResamplerMode.Pixelated,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = theme.DottedBorder.SliceCenter,
		LayoutOrder = index,
	})
end

return DragDestination

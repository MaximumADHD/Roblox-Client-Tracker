--[[
	Represents the widget for adding a new Thumbnail to a ThumbnailSet.

	Required Props:
		callback OnClick: A callback for when this button is clicked.
		table Theme: The styles for the overall MultiImagePicker component. Styles are prop drilled from init.lua.
		Mouse Mouse: A Mouse ContextItem, which is provided via withContext.

	Optional Props:
		number LayoutOrder: The order in which this widget will appear in the set.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)

local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

export type Props = {
	LayoutOrder: number?,
	OnClick: () -> (),
	Theme: { [string]: any },
}

type _Props = Props & {
	Mouse: any,
}

local NewThumbnail = Roact.PureComponent:extend("NewThumbnail")

function NewThumbnail:init()
	self.mouseEnter = function()
		self:mouseHoverChanged(true)
	end

	self.mouseLeave = function()
		self:mouseHoverChanged(false)
	end
end

function NewThumbnail:mouseHoverChanged(hovering)
	local props: _Props = self.props

	-- TODO: change to use HoverArea from Developer Framework
	if hovering then
		props.Mouse:__pushCursor("PointingHand")
	else
		props.Mouse:__resetCursor()
	end
end

function NewThumbnail:render()
	local props: _Props = self.props
	local theme = props.Theme
	local newThumbnailTheme = theme.NewThumbnail

	return Roact.createElement("ImageButton", {
		BorderSizePixel = 0,
		BackgroundColor3 = newThumbnailTheme.Background,
		Size = UDim2.new(1, 0, 1, 0),
		ImageColor3 = newThumbnailTheme.Border,
		LayoutOrder = props.LayoutOrder or 1,
		Image = theme.DottedBorder.Image,
		ResampleMode = Enum.ResamplerMode.Pixelated,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = theme.DottedBorder.SliceCenter,

		[Roact.Event.MouseEnter] = self.mouseEnter,
		[Roact.Event.MouseLeave] = self.mouseLeave,

		[Roact.Event.Activated] = props.OnClick,
	}, {
		Plus = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = newThumbnailTheme.Plus.Image,
			ImageColor3 = newThumbnailTheme.PlusColor,
			ImageTransparency = 0.4,
			Size = UDim2.new(0, 24, 0, 24),
			ImageRectSize = newThumbnailTheme.Plus.RectSize,
			ImageRectOffset = newThumbnailTheme.Plus.RectOffset,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			ZIndex = 2,
		}),
	})
end

NewThumbnail = withContext({
	Mouse = ContextServices.Mouse,
})(NewThumbnail)

return NewThumbnail

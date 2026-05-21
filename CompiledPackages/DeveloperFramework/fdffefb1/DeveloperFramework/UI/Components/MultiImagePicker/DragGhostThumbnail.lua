--[[
	A temporary, transparent Thumbnail that follows the mouse when dragging.
	Used in the process of reordering thumbnails.

	An invisible Frame beneath the ThumbnailWidget reads user input to display the ghost
	thumbnail in the correct place and to handle dropping it. Even if the user releases the
	mouse outside of the window, the thumbnail will still drop into the correct DragDestination.

	Required Props:
		boolean Enabled: Whether this thumbnail displays beneath the mouse.
		string Image: The image to display. Should match the image that is being dragged.
		callback StopDragging: A callback for when the user has let go of the mouse and
			is no longer dragging the thumbnail.
		UDim2 ThumbnailSize: The size the transparent Thumbnail should be.
		table Theme: The styles for the overall MultiImagePicker component. Styles are prop drilled from init.lua.
]]

local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)

export type Props = {
	Enabled: boolean,
	Image: string,
	StopDragging: () -> (),
	ThumbnailSize: UDim2,
	Theme: { [string]: any },
}

local DragGhostThumbnail = Roact.PureComponent:extend("DragGhostThumbnail")

function DragGhostThumbnail:init()
	self.imageRef = Roact.createRef()

	self.inputChanged = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			local image = self.imageRef.current
			local offset = rbx.AbsolutePosition
			image.Position = UDim2.new(0, input.Position.x - offset.x, 0, input.Position.y - offset.y)
		end
	end

	self.inputEnded = function(_, input)
		local props: Props = self.props

		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			props.StopDragging()
		end
	end
end

function DragGhostThumbnail:render()
	local props: Props = self.props
	local theme = props.Theme

	local image = props.Image
	local active = props.Enabled
	local thumbnailSize = props.ThumbnailSize

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = 10,

		[Roact.Event.InputChanged] = self.inputChanged,

		[Roact.Event.InputEnded] = self.inputEnded,
	}, {
		Ghost = Roact.createElement("ImageLabel", {
			Visible = active,
			BackgroundTransparency = 0.85,
			BackgroundColor3 = theme.Colors.Blue,
			BorderColor3 = theme.Colors.Blue,
			BorderSizePixel = 3,
			Size = thumbnailSize,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Image = image or theme.VideoPlaceholder,
			ImageColor3 = (image == nil) and theme.Thumbnail.Background or nil,
			ImageTransparency = 0.5,
			ScaleType = Enum.ScaleType.Fit,
			ZIndex = 3,

			[Roact.Ref] = self.imageRef,
		}),
	})
end

return DragGhostThumbnail

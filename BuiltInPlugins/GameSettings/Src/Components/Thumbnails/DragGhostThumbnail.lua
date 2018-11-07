--[[
	A temporary, transparent Thumbnail that follows the mouse when dragging.
	Used in the process of reordering thumbnails.

	An invisible Frame beneath the ThumbnailWidget reads user input to display the ghost
	thumbnail in the correct place and to handle dropping it. Even if the user releases the
	mouse outside of the Game Settings window, the thumbnail will still drop into the
	correct DragDestination.

	Props:
		string Image = The image to display. Should match the image that is being dragged.
		bool Enabled = Whether this thumbnail displays beneath the mouse.
		function StopDragging = A callback for when the user has let go of the mouse and
			is no longer dragging the thumbnail.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local DragGhostThumbnail = Roact.PureComponent:extend("DragGhostThumbnail")

function DragGhostThumbnail:init()
	self.imageRef = Roact.createRef()

	self.inputChanged = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			local image = self.imageRef.current
			local offset = rbx.AbsolutePosition
			image.Position = UDim2.new(
				0, input.Position.x - offset.x,
				0, input.Position.y - offset.y
			)
		end
	end

	self.inputEnded = function(_, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self.props.StopDragging()
		end
	end
end

function DragGhostThumbnail:render()
	return withTheme(function(theme)
		local image = self.props.Image
		local active = self.props.Enabled

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
				BackgroundColor3 = Constants.BLUE,
				BorderColor3 = Constants.BLUE,
				BorderSizePixel = 3,
				Size = Constants.THUMBNAIL_SIZE,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = image or Constants.VIDEO_PLACEHOLDER,
				ImageColor3 = (image == nil) and theme.thumbnail.background or nil,
				ImageTransparency = 0.5,
				ScaleType = Enum.ScaleType.Fit,
				ZIndex = 3,

				[Roact.Ref] = self.imageRef,
			}),
		})
	end)
end

return DragGhostThumbnail
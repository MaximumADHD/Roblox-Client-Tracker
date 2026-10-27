--[[
	An overlay that appears over a Thumbnail and allows the user to interact with it.
	Options include showing a larger preview and deleting the thumbnail.

	Required Props:
		boolean Enabled: Whether this bar is visible over a Thumbnail.
		callback PromptDeleteThumbnail: A callback for when the user deletes a thumbnail.
		callback PromptPreviewThumbnail: A callback for when the user previews a thumbnail.
		table Theme: The styles for the overall MultiImagePicker component. Styles are prop drilled from init.lua.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)

local HoverBarButton = require(script.Parent.HoverBarButton)
local MultiImagePickerTypes = require(script.Parent.types)

export type Props = {
	Enabled: boolean,
	PromptDeleteThumbnail: (MultiImagePickerTypes.DeleteThumbnailType) -> (),
	PromptPreviewThumbnail: (MultiImagePickerTypes.PreviewThumbnailType) -> (),
	Theme: { [string]: any },
}

local function ThumbnailHoverBar(props: Props)
	local active = props.Enabled
	local theme = props.Theme
	local thumbnailHoverBarTheme = theme.ThumbnailHoverBar

	local padding = thumbnailHoverBarTheme.Padding

	return Roact.createElement("Frame", {
		Visible = active,
		BackgroundTransparency = 0.3,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Colors.Black,
		Size = UDim2.new(1, 0, 0, 40),
		Position = UDim2.new(0, 0, 1, 0),
		AnchorPoint = Vector2.new(0, 1),
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = padding,
			PaddingBottom = padding,
			PaddingLeft = padding,
			PaddingRight = padding,
		}),

		Zoom = Roact.createElement(HoverBarButton, {
			Position = UDim2.new(0, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Image = thumbnailHoverBarTheme.ZoomImage,

			ButtonPressed = props.PromptPreviewThumbnail,
			Theme = theme,
		}),

		Delete = Roact.createElement(HoverBarButton, {
			Position = UDim2.new(1, 0, 0.5, 0),
			AnchorPoint = Vector2.new(1, 0.5),
			Image = thumbnailHoverBarTheme.DeleteImage,

			ButtonPressed = props.PromptDeleteThumbnail,
			Theme = theme,
		}),
	})
end

return ThumbnailHoverBar

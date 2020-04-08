--[[
	An overlay that appears over a Thumbnail and allows the user to interact with it.
	Options include showing a larger preview and deleting the thumbnail.

	Props:
		bool Enabled = Whether this bar is visible over a Thumbnail.
		function ButtonPressed = A callback for when the user presses a button.
]]

local PADDING = UDim.new(0, 6)

local ZOOM_IMAGE = "rbxasset://textures/GameSettings/zoom.png"
local DELETE_IMAGE = "rbxasset://textures/GameSettings/delete.png"

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)

local HoverBarButton = require(Plugin.Src.Components.Thumbnails.HoverBarButton)

local function ThumbnailHoverBar(props)
	local active = props.Enabled

	return Roact.createElement("Frame", {
		Visible = active,
		BackgroundTransparency = 0.3,
		BorderSizePixel = 0,
		BackgroundColor3 = DEPRECATED_Constants.BLACK,
		Size = UDim2.new(1, 0, 0, 40),
		Position = UDim2.new(0, 0, 1, 0),
		AnchorPoint = Vector2.new(0, 1),
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = PADDING,
			PaddingBottom = PADDING,
			PaddingLeft = PADDING,
			PaddingRight = PADDING,
		}),

		Zoom = Roact.createElement(HoverBarButton, {
			Position = UDim2.new(0, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Image = ZOOM_IMAGE,

			ButtonPressed = function()
				props.ButtonPressed("Zoom")
			end,
		}),

		Delete = Roact.createElement(HoverBarButton, {
			Position = UDim2.new(1, 0, 0.5, 0),
			AnchorPoint = Vector2.new(1, 0.5),
			Image = DELETE_IMAGE,

			ButtonPressed = function()
				props.ButtonPressed("Delete")
			end,
		}),
	})
end

return ThumbnailHoverBar
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
local Constants = require(Plugin.Src.Util.Constants)

local function ThumbnailHoverBar(props)
	local active = props.Enabled

	return Roact.createElement("Frame", {
		Visible = active,
		BackgroundTransparency = 0.3,
		BorderSizePixel = 0,
		BackgroundColor3 = Constants.BLACK,
		Size = UDim2.new(1, 0, 0, 30),
		Position = UDim2.new(0, 0, 1, 0),
		AnchorPoint = Vector2.new(0, 1),
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = PADDING,
			PaddingBottom = PADDING,
			PaddingLeft = PADDING,
			PaddingRight = PADDING,
		}),

		Zoom = Roact.createElement("ImageButton", {
			BackgroundTransparency = 1,
			Image = ZOOM_IMAGE,
			Size = UDim2.new(0, 28, 0, 28),
			Position = UDim2.new(0, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),

			[Roact.Event.Activated] = function()
				props.ButtonPressed("Zoom")
			end,
		}),

		Delete = Roact.createElement("ImageButton", {
			BackgroundTransparency = 1,
			Image = DELETE_IMAGE,
			Size = UDim2.new(0, 28, 0, 28),
			Position = UDim2.new(1, 0, 0.5, 0),
			AnchorPoint = Vector2.new(1, 0.5),

			[Roact.Event.Activated] = function()
				props.ButtonPressed("Delete")
			end,
		}),
	})
end

return ThumbnailHoverBar
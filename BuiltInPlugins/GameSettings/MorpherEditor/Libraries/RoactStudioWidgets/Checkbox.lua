local Roact = require(script.Parent.Internal.RequireRoact)

local CheckedImage = "rbxasset://textures/RoactStudioWidgets/icon_tick.png"
local UncheckedImage = "rbxasset://textures/RoactStudioWidgets/checkbox_square.png"

local function Checkbox(props)
	return Roact.createElement("ImageButton", {
		LayoutOrder = props.LayoutOrder or 0,
		Size = props.Size or UDim2.new(0, 20, 0, 20),
		Position = props.Position or UDim2.new(0, 0, 0, 0),
		AnchorPoint = props.AnchorPoint or Vector2.new(0, 0),
		BackgroundTransparency = 1,

		[Roact.Event.MouseButton1Click] = function(rbx)
			if props.setValue then
				props.setValue(not props.IsChecked)
			end
		end,
	}, {
		Frame = Roact.createElement("ImageLabel", {
			Image = props.UncheckedImage or UncheckedImage,
			Size = props.Size or UDim2.new(0, 12, 0, 12),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BackgroundColor3 = props.BackgroundColor3 or Color3.fromRGB(255, 255, 255),
			BorderSizePixel = 0,
		}, {
			Checked = Roact.createElement("ImageLabel", {
				Size = props.Size or UDim2.new(0, 8, 0, 8),
				Image = props.CheckedImage or CheckedImage,
				BackgroundColor3 = props.BackgroundColor3 or Color3.fromRGB(192, 192, 255),
				BorderSizePixel = 0,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Visible = props.IsChecked
			})
		})
	})
end

return Checkbox

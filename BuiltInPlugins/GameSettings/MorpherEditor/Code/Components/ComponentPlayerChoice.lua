local paths = require(script.Parent.Parent.Paths)

local CheckedImage = "rbxasset://textures/CollisionGroupsEditor/checked-bluebg.png"
local UncheckedImage = "rbxasset://textures/CollisionGroupsEditor/unchecked.png"

local function Checkbox(props)
	return paths.Roact.createElement("ImageButton", {
		LayoutOrder = props.LayoutOrder or 0,
		Size = props.Size or UDim2.new(0, 20, 0, 20),
		Position = UDim2.new(0, paths.ConstantLayout.PlayerChoiceHorizontalOffset, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,

		[paths.Roact.Event.MouseButton1Click] = function(rbx)
			if props.setValue then
				props.setValue(not props.IsSelected)
			end
		end,
	}, {
		Frame = paths.Roact.createElement("ImageLabel", {
			Image = props.UncheckedImage or UncheckedImage,
			ImageColor3 = paths.StateInterfaceTheme.getCheckboxBGColor(),
			Size = UDim2.new(0, 10, 0, 10),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BackgroundColor3 = paths.StateInterfaceTheme.getBackgroundColor(props),
			BorderSizePixel = 0,
		}, {
			Checked = paths.Roact.createElement("ImageLabel", {
				Size = UDim2.new(0, 10, 0, 10),
				Image = props.CheckedImage or CheckedImage,
				BackgroundColor3 = paths.StateInterfaceTheme.getBackgroundColor(props),
				BorderSizePixel = 0,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Visible = props.IsSelected
			})
		})
	})
end

return Checkbox
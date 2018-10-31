local paths = require(script.Parent.Parent.Paths)
local fastFlags = require(script.Parent.Parent.FastFlags)

local CheckedImage = "rbxasset://textures/CollisionGroupsEditor/checked-bluebg.png"
local UncheckedImage = "rbxasset://textures/CollisionGroupsEditor/unchecked.png"

if fastFlags.isCheckboxDisabledStateFixFlagOn()  then
	local function PlayerChoice(props)
		return paths.Roact.createElement(paths.SharedWidgetCheckbox, {
			Position = UDim2.new(0, paths.ConstantLayout.PlayerChoiceHorizontalOffset, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			IsChecked = props.IsSelected,
			ImageColor3 = paths.StateInterfaceTheme.getCheckboxBGColor(),
			UncheckedImage = UncheckedImage,
			Size = UDim2.new(0, 10, 0, 10),
			BackgroundColor3 = paths.StateInterfaceTheme.getBackgroundColor(props),
			CheckedImage = CheckedImage,
			IsEnabled = props.IsEnabled,

			setValue = props.setValue
		})
	end
	return PlayerChoice
else
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
end
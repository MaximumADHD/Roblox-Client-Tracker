local Roact = require(script.Parent.Internal.RequireRoact)
local Checkbox = require(script.Parent.Checkbox_deprecated)

local SelectedImage = "rbxasset://textures/RoactStudioWidgets/button_radiobutton_chosen.png"
local UnselectedImage = "rbxasset://textures/RoactStudioWidgets/button_radiobutton_default.png"

local function RadioButton(props)
	props.IsChecked = props.IsSelected
	props.CheckedImage = SelectedImage
	props.UncheckedImage = UnselectedImage
	props.BackgroundColor3 = props.BackgroundColor3 or Color3.fromRGB(255, 255, 255)

	return Roact.createElement(Checkbox, props)
end

return RadioButton

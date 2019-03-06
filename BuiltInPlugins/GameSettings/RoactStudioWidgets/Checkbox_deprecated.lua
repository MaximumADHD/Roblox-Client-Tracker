local Roact = require(script.Parent.Internal.RequireRoact)

local sharedWidgetCheckboxDisabledStateFixFlagExists, sharedWidgetCheckboxDisabledStateFixFlagIsOn = pcall(function () return settings():GetFFlag("SharedWidgetCheckboxDisabledStateFix") end)
local isFastFlagDisabledStateFixOn = sharedWidgetCheckboxDisabledStateFixFlagExists and sharedWidgetCheckboxDisabledStateFixFlagIsOn

local CheckedImage = "rbxasset://textures/RoactStudioWidgets/icon_tick.png"
local UncheckedImage = "rbxasset://textures/RoactStudioWidgets/checkbox_square.png"

local function getImageColor3(props)
	if isFastFlagDisabledStateFixOn and props.ImageColor3 then
		return props.ImageColor3
	else
		return Color3.fromRGB(255, 255, 255)
	end
end

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
			ImageColor3 = getImageColor3(props), 
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
				Visible = (function() if isFastFlagDisabledStateFixOn then return (props.IsEnabled and props.IsChecked) else return props.IsChecked end end)()
			})
		})
	})
end

return Checkbox

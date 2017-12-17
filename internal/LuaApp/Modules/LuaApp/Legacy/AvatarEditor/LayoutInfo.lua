local windowSize = game:GetService("CoreGui").RobloxGui.AbsoluteSize
local isLandscape =  windowSize.x > windowSize.y

local module = {
	isLandscape = isLandscape;
	ButtonsPerRow = 4;
	SkinColorsPerRow = 5;
	SkinColorGridPadding = 12;
}

if isLandscape then
	module.FullViewInitialPosition = UDim2.new(1, -112, 1, -52)
	module.AvatarTypeSwitchOffColor = Color3.fromRGB(182, 182, 182)
	module.AvatarTypeSwitchOnColor = Color3.new(1, 1, 1)
	module.AvatarTypeSwitchTextSize = 14
	module.AvatarTypeSwitchInitialPosition = UDim2.new(0.5, -148, 0, 24)
	module.AvatarTypeSwitchPositionFullView = UDim2.new(0.5, -148, 0, -86)
	module.AvatarTypeSwitchPosition = UDim2.new(0.5, -148, 0, 24)

	module.TabWidth = 84
	module.TabHeight = 72
	module.FirstTabBonusWidth = 45
	module.GridPadding = 12
	module.ExtraVerticalShift = 8
	module.SkinColorExtraVerticalShift = 0

	module.CameraCenterScreenPosition = UDim2.new(-0.5, 0, 0, 10)
	module.CameraDefaultPosition = Vector3.new(11.4540, 4.4313, -24.0810)
	module.CameraDefaultFocusPoint = Vector3.new(15.1598082, 0.25, -16.9464092)

	module.CameraDefaultFOV = 70

	module.BackgroundTextColor = Color3.new(.9, .9, .9)
	module.BackgroundTextFont = Enum.Font.SourceSans

	module.ScaleSliderSize = UDim2.new(1, -57, 0, 30)
	module.SliderPositionY = 56
	module.SliderVeritcalOffset = 67
else
	module.FullViewInitialPosition = UDim2.new(1, -52, 1, -52)
	module.AvatarTypeSwitchOffColor = Color3.new(0.44, 0.44, 0.44)
	module.AvatarTypeSwitchOnColor = Color3.new(1, 1, 1)
	module.AvatarTypeSwitchTextSize = 18
	module.AvatarTypeSwitchInitialPosition = UDim2.new(1, -88, 0, 24)
	module.AvatarTypeSwitchPositionFullView = UDim2.new(1, -88, 0, -86)
	module.AvatarTypeSwitchPosition = UDim2.new(1, -88, 0, 24)

	module.TabWidth = 60
	module.TabHeight = 50
	module.FirstTabBonusWidth = 10
	module.GridPadding = 6
	module.ExtraVerticalShift = 25
	module.SkinColorExtraVerticalShift = 25

	module.CameraCenterScreenPosition = UDim2.new(0, 0, -0.5, 40)
	module.CameraDefaultPosition = Vector3.new(10.2427, 5.1198, -30.9536)
	module.CameraDefaultFocusPoint = Vector3.new(15.1598082, 0.25, -16.9464092)

	module.CameraDefaultFOV = 70

	module.BackgroundTextColor = Color3.fromRGB(65, 78, 89)
	module.BackgroundTextFont = Enum.Font.SourceSansLight

	module.ScaleSliderSize = UDim2.new(0.8, 0, 0, 30)
	module.SliderPositionY = 70
	module.SliderVeritcalOffset = 70
end

return module


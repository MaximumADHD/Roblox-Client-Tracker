local Framework = script.Parent.Parent.Parent
local StyleKey = require(Framework.Style.StyleKey)
local Colors = require(Framework.Style.Colors)

return {
	[StyleKey.Border] = Color3.fromRGB(182, 182, 182),
	[StyleKey.BrightText] = Colors.Black,
	[StyleKey.Button] = Colors.White,
	[StyleKey.ButtonText] = Colors.Black,
	[StyleKey.ButtonHover] = Color3.fromRGB(228, 238, 254),
	[StyleKey.ButtonDisabled] = Colors.White,
	[StyleKey.ButtonPressed] = Color3.fromRGB(219, 219, 219),

	[StyleKey.CategoryItem] = Color3.fromRGB(233, 233, 233),

	[StyleKey.DialogMainButton] = Colors.Blue,
	[StyleKey.DialogMainButtonDisabled] = Color3.fromRGB(153, 218, 255),
	[StyleKey.DialogMainButtonHover] = Colors.Blue_Light,
	[StyleKey.DialogMainButtonSelected] = Colors.Blue_Dark,
	[StyleKey.DialogMainButtonText] = Colors.White,
	[StyleKey.DialogMainButtonTextDisabled] = Color3.fromRGB(102, 102, 102),
	[StyleKey.DimmedText] = Color3.fromRGB(136, 136, 136),

	[StyleKey.ErrorText] = Colors.Red,

	[StyleKey.InputFieldBackground] = Colors.White,

	[StyleKey.LinkText] = Colors.Blue_Light,

	[StyleKey.MainBackground] = Colors.White,
	[StyleKey.MainButton] = Color3.fromRGB(228, 238, 254),
	[StyleKey.MainText] = Colors.Black,
	[StyleKey.MainTextDisabled] = Color3.fromRGB(120, 120, 120),
	[StyleKey.Mid] = Color3.fromRGB(238, 238, 238),

	[StyleKey.RibbonTab] = Color3.fromRGB(243, 243, 243),

	[StyleKey.ScrollBarBackground] = Color3.fromRGB(238, 238, 238),
	[StyleKey.ScrollBar] = Colors.White,
	[StyleKey.SliderKnobColor] = Colors.White,
	[StyleKey.SliderKnobImage] = "rbxasset://textures/DeveloperFramework/slider_knob_light.png",
	[StyleKey.SliderBackground] = Color3.fromRGB(204, 204, 204),
	[StyleKey.SubText] = Color3.fromRGB(170, 170, 170),

	[StyleKey.TitlebarText] = Colors.Black,
	[StyleKey.ToggleOnImage] = "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png",
	[StyleKey.ToggleOffImage] = "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png",
	[StyleKey.ToggleDisabledImage] = "rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png",

	[StyleKey.WarningText] = Color3.fromRGB(255, 128, 0),

	Font = Enum.Font.SourceSans,
	TextSize = 18,
}
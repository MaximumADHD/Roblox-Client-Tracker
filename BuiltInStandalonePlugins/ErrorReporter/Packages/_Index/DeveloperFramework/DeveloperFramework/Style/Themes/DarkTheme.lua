local Framework = script.Parent.Parent.Parent
local Colors = require(Framework.Style.Colors)
local StyleKey = require(Framework.Style.StyleKey)

local FFlagEnablePublishPlaceAsStylizer = game:GetFastFlag("EnablePublishPlaceAsStylizer")
local FFlagEnableGameSettingsStylizer = game:GetFastFlag("EnableGameSettingsStylizer")

return {
	[StyleKey.Border] = Colors.Carbon,
	[StyleKey.BrightText] = Colors.White,
	[StyleKey.Button] = Colors.Gray,
	[StyleKey.ButtonText] = Colors.Gray_Light,
	[StyleKey.ButtonHover] = Colors.lighter(Colors.Gray, 0.26),
	[StyleKey.ButtonDisabled] = Colors.lighter(Colors.Black, 0.26),
	[StyleKey.ButtonTextDisabled] = Color3.fromRGB(102, 102, 102),
	[StyleKey.ButtonPressed] = Colors.lighter(Colors.Black, 0.16),
	[StyleKey.ButtonSelected] = Colors.Blue,
	[StyleKey.ImageButtonBackground] = Colors.Gray_Mid,
	[StyleKey.ImageButtonHover] = Colors.lighter(Colors.Gray_Mid, 0.26),

	[StyleKey.Icon] = Color3.fromRGB(128, 128, 128),
	[StyleKey.IconBackgroundColor] = if FFlagEnablePublishPlaceAsStylizer then Color3.fromRGB(37, 37, 37) else nil,
	[StyleKey.IconImageColor] = if FFlagEnablePublishPlaceAsStylizer then Color3.fromRGB(102, 102, 102) else nil,

	[StyleKey.ToolbarBackgroundColor] = Color3.fromRGB(0, 0, 0),
	[StyleKey.ToolbarButtonBackgroundColor] = Color3.fromRGB(39, 39, 39),

	[StyleKey.CategoryItem] = Color3.fromRGB(53, 53, 53),
	[StyleKey.CurrentMarker] = Colors.Gray,
	[StyleKey.CurrentMarkerSelected] = Color3.fromRGB(10, 90, 175),

	[StyleKey.DialogButton] = Colors.Gray,
	[StyleKey.DialogButtonBorder] = Colors.Gray,
	[StyleKey.DialogButtonHover] = Colors.Gray,
	[StyleKey.DialogButtonPressed] = Color3.fromRGB(53, 53, 53),
	[StyleKey.DialogButtonText] = Colors.Gray_Light,
	[StyleKey.DialogMainButton] = Colors.Blue,
	[StyleKey.DialogMainButtonDisabled] = Colors.Gray,
	[StyleKey.DialogMainButtonHover] = Colors.Blue_Light,
	[StyleKey.DialogMainButtonPressed] = Colors.Blue_Dark,
	[StyleKey.DialogMainButtonSelected] = Colors.Blue_Dark,
	[StyleKey.DialogMainButtonText] = Colors.White,
	[StyleKey.DialogMainButtonTextDisabled] = Color3.fromRGB(102, 102, 102),
	[StyleKey.DimmedText] = Colors.lighter(Colors.Black, 0.4),
	[StyleKey.Dropdown] = Colors.Slate,

	[StyleKey.ErrorText] = Color3.fromRGB(255, 68, 68),

	[StyleKey.InputFieldBackground] = Color3.fromRGB(37, 37, 37),
	[StyleKey.InputFieldBackgroundDisabled] = Color3.fromRGB(37, 37, 37),
	[StyleKey.InputFieldBorder] = Color3.fromRGB(26, 26, 26),
	[StyleKey.InputFieldBorderDisabled] = Color3.fromRGB(41, 41, 41),
	[StyleKey.InputFieldBorderHover] = Color3.fromRGB(58, 58, 58),
	[StyleKey.InputFieldBorderSelected] = Colors.Blue_Light,
	[StyleKey.Item] = Colors.Slate,
	[StyleKey.ItemHovered] = Colors.Gray,
	[StyleKey.ItemSelected] = Colors.Blue_Dark,

	[StyleKey.Light] = if FFlagEnablePublishPlaceAsStylizer then Color3.fromRGB(243, 243, 243) else nil,
	[StyleKey.LinkText] = Color3.fromRGB(60, 180, 255),

	[StyleKey.MainBackground] = Colors.Slate,
	[StyleKey.MainButton] = Colors.Blue,
	[StyleKey.MainText] = Colors.Gray_Light,
	[StyleKey.MainTextDisabled] = Color3.fromRGB(85, 85, 85),
	[StyleKey.MainTextHover] = Color3.fromRGB(66, 66, 66),
	[StyleKey.MainTextSelected] = Colors.White,
	[StyleKey.MenuBarBackground] = if FFlagEnablePublishPlaceAsStylizer or FFlagEnableGameSettingsStylizer then Color3.fromRGB(41, 41, 41) else nil,
	[StyleKey.MenuEntryHighlight] = if FFlagEnablePublishPlaceAsStylizer or FFlagEnableGameSettingsStylizer then Color3.fromRGB(11, 90, 175) else nil,
	[StyleKey.MenuEntryHover] = if FFlagEnablePublishPlaceAsStylizer or FFlagEnableGameSettingsStylizer then Colors.Gray else nil,
	[StyleKey.Mid] = Color3.fromRGB(34, 34, 34),
	[StyleKey.SubBackground] = Colors.Gray,
	[StyleKey.SubBackground2] = Colors.Carbon,

	[StyleKey.RadioButtonDisabledImage] = "rbxasset://textures/StudioSharedUI/radio_selected_disabled_dot_dark.png",
	[StyleKey.RibbonTab] = Color3.fromRGB(37, 37, 37),

	[StyleKey.ScrollBarBackground] = Color3.fromRGB(41, 41, 41),
	[StyleKey.ScrollBar] = Color3.fromRGB(56, 56, 56),
	[StyleKey.SliderKnobColor] = Color3.fromRGB(85, 85, 85),
	[StyleKey.SliderKnobImage] = "rbxasset://textures/DeveloperFramework/slider_knob.png",
	[StyleKey.SliderBackground] = Color3.fromRGB(37, 37, 37),
	[StyleKey.SubText] = Color3.fromRGB(170, 170, 170),

	[StyleKey.Tab] = if FFlagEnablePublishPlaceAsStylizer then Color3.fromRGB(53, 53, 53) else nil,
	[StyleKey.TabHovered] = if FFlagEnablePublishPlaceAsStylizer then Color3.fromRGB(37, 37, 37) else nil,
	[StyleKey.TabSelected] = if FFlagEnablePublishPlaceAsStylizer then Color3.fromRGB(42, 42, 42) else nil,

	[StyleKey.TableItem] = Colors.Slate,
	[StyleKey.TableItemSelected] = if FFlagEnablePublishPlaceAsStylizer then Color3.fromRGB(11, 90, 175) else nil,
	[StyleKey.Titlebar] = Color3.fromRGB(53, 53, 53),
	[StyleKey.TitlebarText] = Color3.fromRGB(204, 204, 204),
	[StyleKey.ToggleOnImage] = "rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png",
	[StyleKey.ToggleOffImage] = "rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png",
	[StyleKey.ToggleDisabledImage] = "rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png",

	[StyleKey.CheckboxUncheckedImage] = "rbxasset://textures/DeveloperFramework/checkbox_unchecked_dark.png",
	[StyleKey.CheckboxCheckedImage] = "rbxasset://textures/DeveloperFramework/checkbox_checked_dark.png",
	[StyleKey.CheckboxIndeterminateImage] = "rbxasset://textures/DeveloperFramework/checkbox_indeterminate_dark.png",
	[StyleKey.CheckboxDisabledImage] = "rbxasset://textures/DeveloperFramework/checkbox_unchecked_disabled_dark.png",

	[StyleKey.CheckedFieldBackgroundHover] = Color3.fromRGB(15, 15, 15),

	[StyleKey.WarningText] = Color3.fromRGB(255, 141, 60),

	Font = Enum.Font.SourceSans,
	TextSize = 18,
}
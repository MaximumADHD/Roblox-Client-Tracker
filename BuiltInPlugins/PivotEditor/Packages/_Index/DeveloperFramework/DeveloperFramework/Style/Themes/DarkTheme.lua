
local Framework = script.Parent.Parent.Parent
local Colors = require(Framework.Style.Colors)
local StyleKey = require(Framework.Style.StyleKey)

local StudioColorClasses = require(Framework.Style.ColorSystem.StudioColorClasses)

local THEME_NAME = "Dark"


local FFlagDevFrameworkUseStudioColorClasses = game:GetFastFlag("DevFrameworkUseStudioColorClasses")
local FFlagEnablePublishPlaceAsStylizer = game:GetFastFlag("EnablePublishPlaceAsStylizer")
local FFlagEnableGameSettingsStylizer = game:GetFastFlag("EnableGameSettingsStylizer")

return {
	-- Studio Color Classes
	[StyleKey.BackgroundPaper] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Background.Paper[THEME_NAME]
		else nil,
	[StyleKey.BackgroundDefault] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Background.Default[THEME_NAME]
		else nil,

	[StyleKey.ForegroundMain] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Foreground.Main[THEME_NAME]
		else nil,
	[StyleKey.ForegroundMuted] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Foreground.Muted[THEME_NAME]
		else nil,
	[StyleKey.ForegroundContrast] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Foreground.Contrast[THEME_NAME]
		else nil,

	[StyleKey.TextPrimary] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Text.Primary[THEME_NAME]
		else nil,
	[StyleKey.TextSecondary] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Text.Secondary[THEME_NAME]
		else nil,
	[StyleKey.TextContrast] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Text.Contrast[THEME_NAME]
		else nil,
	[StyleKey.TextLink] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Text.Link[THEME_NAME]
		else nil,
	[StyleKey.TextDisabled] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Text.Disabled[THEME_NAME]
		else nil,

	[StyleKey.ErrorMain] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Error.Main[THEME_NAME]
		else nil,
	[StyleKey.SuccessMain] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Success.Main[THEME_NAME]
		else nil,
	[StyleKey.WarningMain] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Warning.Main[THEME_NAME]
		else nil,

	[StyleKey.ActionHover] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Action.Hover[THEME_NAME]
		else nil,
	[StyleKey.ActionEnabled] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Action.Enabled[THEME_NAME]
		else nil,
	[StyleKey.ActionSelected] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Action.Selected[THEME_NAME]
		else nil,
	[StyleKey.ActionActivated] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Action.Activated[THEME_NAME]
		else nil,
	[StyleKey.ActionFocusBorder] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Action.FocusBorder[THEME_NAME]
		else nil,

	[StyleKey.PrimaryMain] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Primary.Main[THEME_NAME]
		else nil,

	[StyleKey.PrimaryStatesHoverBackground] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.PrimaryStates.HoverBackground[THEME_NAME]
		else nil,

	[StyleKey.SecondaryMain] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Secondary.Main[THEME_NAME]
		else nil,
	[StyleKey.SecondaryMuted] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Secondary.Muted[THEME_NAME]
		else nil,
	[StyleKey.SecondaryContrast] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Secondary.Contrast[THEME_NAME]
		else nil,

	[StyleKey.SecondaryStatesHoverBackground] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.SecondaryStates.HoverBackground[THEME_NAME]
		else nil,
	[StyleKey.SecondaryStatesHoverOutlineBorder] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.SecondaryStates.HoverOutlineBorder[THEME_NAME]
		else nil,
	[StyleKey.SecondaryStatesRestingOutlineBorder] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.SecondaryStates.RestingOutlineBorder[THEME_NAME]
		else nil,

	[StyleKey.OtherFilledInputBackground] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Other.FilledInputBackground[THEME_NAME]
		else nil,
	[StyleKey.OtherDivider] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Other.Divider[THEME_NAME]
		else nil,

	-- Old StyleKeys which have been updated to new system

	[StyleKey.ErrorText] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Error.Main[THEME_NAME]
		else Color3.fromRGB(255, 68, 68),
	[StyleKey.LinkText] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Text.Link[THEME_NAME]
		else Color3.fromRGB(60, 180, 255),
	[StyleKey.WarningText] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Warning.Main[THEME_NAME]
		else Color3.fromRGB(255, 141, 60),

	[StyleKey.MainText] = if FFlagDevFrameworkUseStudioColorClasses
		then StudioColorClasses.Text.Primary[THEME_NAME]
		else Colors.Gray_Light,

	-- WARNING: StyleKeys below this line have not been updated to new system

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

	[StyleKey.MainBackground] = Colors.Slate,
	[StyleKey.MainButton] = Colors.Blue,
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

	Font = Enum.Font.SourceSans,
	TextSize = 18,
}

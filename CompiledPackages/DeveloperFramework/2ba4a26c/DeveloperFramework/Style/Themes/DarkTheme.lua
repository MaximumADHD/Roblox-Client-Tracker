-- NOTE: CHANGING KEYS HERE?
-- Increment STUDIO_DESIGN_VERSION in src/Styling/registerPluginStyles.lua

local Framework = script:FindFirstAncestor("Style").Parent

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local ColorSystem = require(Framework.Style.ColorSystem)
local Colors = require(Framework.Style.Colors)
local StyleKey = require(Framework.Style.StyleKey)
local FoundationDark = require(Framework.Style.Themes.FoundationDark)
local foundationDarkTheme = FoundationDark(1)

local getStudioColorClassTheme = require(Framework.Style.ColorSystem.getStudioColorClassTheme)

local getFFlagDevFrameworkFixInputBackground = require(Framework.SharedFlags.getFFlagDevFrameworkFixInputBackground)

-- When getting colors for dark theme, using Studio Color Classes is preferred
local studioColorClassTheme = getStudioColorClassTheme("Dark")

-- Old UI doesn't support transparency on backgrounds, so derive approximate colors
--  based on blending the tokens color/transparency with the Surface_100 color.
local MUTED_ACTION = foundationDarkTheme.Color.ActionSoftEmphasis.Background.Color3:Lerp(
	foundationDarkTheme.DarkMode.Surface.Surface_100.Color3,
	foundationDarkTheme.Color.ActionSoftEmphasis.Background.Transparency
)
local SHIFT_200 = foundationDarkTheme.Color.Shift.Shift_200.Color3:Lerp(
	foundationDarkTheme.DarkMode.Surface.Surface_100.Color3,
	foundationDarkTheme.Color.Shift.Shift_200.Transparency
)

return join(studioColorClassTheme, {
	[StyleKey.Border] = ColorSystem.Gray[80],
	-- WARNING: StyleKeys below this line have not been updated to new system
	[StyleKey.BrightText] = Colors.White,
	[StyleKey.Button] = Colors.Gray,
	[StyleKey.ButtonText] = ColorSystem.Gray[10],
	[StyleKey.ButtonHover] = if getFFlagDevFrameworkFixInputBackground()
		then SHIFT_200
		else Colors.lighter(Colors.Gray, 0.26),
	[StyleKey.ButtonDisabled] = Colors.lighter(Colors.Black, 0.26),
	[StyleKey.ButtonTextDisabled] = ColorSystem.Gray[60],
	[StyleKey.ButtonPressed] = Colors.lighter(Colors.Black, 0.16),
	[StyleKey.ButtonSelected] = Colors.Blue,
	[StyleKey.ImageButtonBackground] = Colors.Gray_Mid,
	[StyleKey.ImageButtonHover] = Colors.lighter(Colors.Gray_Mid, 0.26),

	[StyleKey.Icon] = ColorSystem.Gray[60],
	[StyleKey.IconBackgroundColor] = ColorSystem.Gray[120],
	[StyleKey.IconImageColor] = ColorSystem.Gray[70],

	[StyleKey.ToolbarBackgroundColor] = ColorSystem.Black[0],
	[StyleKey.ToolbarButtonBackgroundColor] = ColorSystem.Gray[110],

	[StyleKey.CategoryItem] = ColorSystem.Gray[100],
	[StyleKey.CurrentMarker] = Colors.Gray,
	[StyleKey.CurrentMarkerSelected] = ColorSystem.Blue[70],

	[StyleKey.DialogButton] = Colors.Gray,
	[StyleKey.DialogButtonBorder] = Colors.Gray,
	[StyleKey.DialogButtonHover] = Colors.Gray,
	[StyleKey.DialogButtonPressed] = ColorSystem.Gray[10],
	[StyleKey.DialogButtonText] = ColorSystem.Gray[10],
	[StyleKey.DialogMainButton] = ColorSystem.Blue[70],
	[StyleKey.DialogMainButtonDisabled] = Colors.Gray,
	[StyleKey.DialogMainButtonHover] = ColorSystem.Blue[60],
	[StyleKey.DialogMainButtonPressed] = Colors.Blue_Dark,
	[StyleKey.DialogMainButtonSelected] = Colors.Blue_Dark,
	[StyleKey.DialogMainButtonText] = ColorSystem.Gray[10],
	[StyleKey.DialogMainButtonTextDisabled] = ColorSystem.Gray[60],
	[StyleKey.DimmedText] = Colors.lighter(Colors.Black, 0.6),
	[StyleKey.Dropdown] = Colors.Slate,

	[StyleKey.InputFieldBackground] = SHIFT_200, -- Effective foundation shift color (without transparency)
	[StyleKey.InputFieldBackgroundDisabled] = SHIFT_200, -- Effective foundation shift color (without transparency)
	[StyleKey.InputFieldBorder] = ColorSystem.Gray[110],
	[StyleKey.InputFieldBorderDisabled] = ColorSystem.Gray[100],
	[StyleKey.InputFieldBorderHover] = ColorSystem.Gray[80],
	[StyleKey.InputFieldBorderSelected] = ColorSystem.Blue[70],
	[StyleKey.Item] = Colors.Slate,
	[StyleKey.ItemHovered] = Colors.Gray,
	[StyleKey.ItemSelected] = Colors.Blue_Dark,

	[StyleKey.Light] = ColorSystem.White[0],

	[StyleKey.MainBackground] = ColorSystem.Gray[110],
	[StyleKey.MainButton] = Colors.Blue,
	[StyleKey.MainTextDisabled] = ColorSystem.Gray[70],
	[StyleKey.MainTextHover] = ColorSystem.Gray[60],
	[StyleKey.MainTextSelected] = Colors.White,
	[StyleKey.MenuBarBackground] = ColorSystem.Gray[100],
	[StyleKey.MenuEntryHighlight] = MUTED_ACTION,
	[StyleKey.MenuEntryHover] = ColorSystem.Gray[110],
	[StyleKey.Mid] = ColorSystem.Gray[110],
	[StyleKey.SubBackground] = Colors.Gray,
	[StyleKey.SubBackground2] = Colors.Carbon,

	[StyleKey.RadioButtonDisabledImage] = "rbxasset://textures/StudioSharedUI/radio_selected_disabled_dot_dark.png",
	[StyleKey.RibbonTab] = ColorSystem.Gray[120],

	[StyleKey.ScrollBarBackground] = ColorSystem.Gray[100],
	[StyleKey.ScrollBar] = ColorSystem.Gray[80],
	[StyleKey.SliderKnobColor] = ColorSystem.White[0],
	[StyleKey.SliderKnobImage] = "rbxasset://textures/DeveloperFramework/slider_knob.png",
	[StyleKey.SliderBackground] = ColorSystem.Gray[80],
	[StyleKey.SubText] = ColorSystem.Gray[40],

	[StyleKey.Tab] = ColorSystem.Gray[100],
	[StyleKey.TabHovered] = ColorSystem.Gray[120],
	[StyleKey.TabSelected] = ColorSystem.Gray[110],

	[StyleKey.TableItem] = Colors.Slate,
	[StyleKey.TableItemSelected] = ColorSystem.Blue[70],
	[StyleKey.Titlebar] = ColorSystem.Gray[100],
	[StyleKey.TitlebarText] = ColorSystem.Gray[30],
	[StyleKey.ToggleOnImage] = "rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png",
	[StyleKey.ToggleOffImage] = "rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png",
	[StyleKey.ToggleDisabledImage] = "rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png",
	[StyleKey.ToggleDisabledAndSelectedImage] = "rbxasset://textures/RoactStudioWidgets/toggle_on_disable_dark.png",

	[StyleKey.CheckboxUncheckedImage] = "rbxasset://textures/DeveloperFramework/checkbox_unchecked_dark.png",
	[StyleKey.CheckboxCheckedImage] = "rbxasset://textures/DeveloperFramework/checkbox_checked_dark.png",
	[StyleKey.CheckboxIndeterminateImage] = "rbxasset://textures/DeveloperFramework/checkbox_indeterminate_dark.png",
	[StyleKey.CheckboxDisabledImage] = "rbxasset://textures/DeveloperFramework/checkbox_unchecked_disabled_dark.png",

	[StyleKey.EyeIconOnImage] = "rbxasset://textures/DeveloperFramework/UIOn_dark.png",
	[StyleKey.EyeIconOffImage] = "rbxasset://textures/DeveloperFramework/UIOff_dark.png",

	[StyleKey.RadioOffImage] = "rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/RadioOff.png",
	[StyleKey.RadioOnImage] = "rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/RadioOn.png",

	[StyleKey.CheckedFieldBackgroundHover] = ColorSystem.Gray[110],

	[StyleKey.ShimmerStart] = Colors.Gray,
	[StyleKey.ShimmerEnd] = Colors.Gray,

	[StyleKey.ResetCameraImage] = "rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/CameraReset.png",

	Font = Enum.Font.SourceSans,
	TextSize = 18,

	[StyleKey.ActionSecondaryHoverTransparency] = 0.84,
	[StyleKey.ActionSecondaryHover] = ColorSystem.Gray[50],

	[StyleKey.DropdownMenuStateLayerBackground] = ColorSystem.Gray[90],
	[StyleKey.DropdownMenuStateLayerBorderColor] = ColorSystem.Gray[80],
})

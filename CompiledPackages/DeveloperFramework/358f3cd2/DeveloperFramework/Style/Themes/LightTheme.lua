-- NOTE: CHANGING KEYS HERE?
-- Increment STUDIO_DESIGN_VERSION in src/Styling/createStudioDesign.lua
type Keys = {
	Dark: Color3,
	Light: Color3,
}

local Framework = script:FindFirstAncestor("Style").Parent

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local FoundationLight = require(Framework.Style.Themes.FoundationLight)
local foundationLightTheme = FoundationLight(1)

local ColorSystem = require(Framework.Style.ColorSystem)
local Colors = require(Framework.Style.Colors)
local StyleKey = require(Framework.Style.StyleKey)

local getStudioColorClassTheme = require(Framework.Style.ColorSystem.getStudioColorClassTheme)

local getFFlagDevFrameworkFixInputBackground = require(Framework.SharedFlags.getFFlagDevFrameworkFixInputBackground)

-- When getting colors for light theme, using Studio Color Classes is preferred
local studioColorClassTheme = getStudioColorClassTheme("Light")

-- Old UI doesn't support transparency on backgrounds, so derive approximate colors
--  based on blending the tokens color/transparency with the Surface_100 color.
local MUTED_ACTION = foundationLightTheme.Color.ActionSoftEmphasis.Background.Color3:Lerp(
	foundationLightTheme.LightMode.Surface.Surface_100.Color3,
	foundationLightTheme.Color.ActionSoftEmphasis.Background.Transparency
)
local SHIFT_200 = foundationLightTheme.Color.Shift.Shift_200.Color3:Lerp(
	foundationLightTheme.LightMode.Surface.Surface_100.Color3,
	foundationLightTheme.Color.Shift.Shift_200.Transparency
)

return join(studioColorClassTheme, {
	-- WARNING: StyleKeys below this line have not been updated to new system
	[StyleKey.Border] = ColorSystem.Gray[50],
	[StyleKey.BrightText] = Colors.Black,
	[StyleKey.Button] = Colors.White,
	[StyleKey.ButtonText] = Colors.Black,
	[StyleKey.ButtonHover] = if getFFlagDevFrameworkFixInputBackground() then SHIFT_200 else ColorSystem.Gray[20],
	[StyleKey.ButtonDisabled] = Colors.White,
	[StyleKey.ButtonTextDisabled] = ColorSystem.Gray[60],
	[StyleKey.ButtonPressed] = ColorSystem.Gray[40],
	[StyleKey.ButtonSelected] = ColorSystem.Gray[20],
	[StyleKey.ImageButtonBackground] = ColorSystem.Gray[50],
	[StyleKey.ImageButtonHover] = Colors.lighter(ColorSystem.Gray[50], 0.26),

	[StyleKey.Icon] = ColorSystem.Gray[60],
	[StyleKey.IconBackgroundColor] = Colors.Gray_Lightest,
	[StyleKey.IconImageColor] = ColorSystem.Gray[50],

	[StyleKey.ToolbarBackgroundColor] = ColorSystem.Black[0],
	[StyleKey.ToolbarButtonBackgroundColor] = ColorSystem.Gray[100],

	[StyleKey.CategoryItem] = ColorSystem.Gray[30],
	[StyleKey.CurrentMarker] = Colors.Blue,
	[StyleKey.CurrentMarkerSelected] = Colors.Blue,

	[StyleKey.DialogButton] = Colors.White,
	[StyleKey.DialogButtonBorder] = Colors.Gray_Light,
	[StyleKey.DialogButtonHover] = Colors.Blue_Light,
	[StyleKey.DialogButtonPressed] = ColorSystem.Gray[40],
	[StyleKey.DialogButtonText] = Colors.Black,
	[StyleKey.DialogMainButton] = ColorSystem.Blue[70],
	[StyleKey.DialogMainButtonDisabled] = ColorSystem.Gray[40],
	[StyleKey.DialogMainButtonHover] = ColorSystem.Blue[60],
	[StyleKey.DialogMainButtonPressed] = Colors.Blue_Dark,
	[StyleKey.DialogMainButtonSelected] = Colors.Blue_Dark,
	[StyleKey.DialogMainButtonText] = Colors.White,
	[StyleKey.DialogMainButtonTextDisabled] = Colors.White,
	[StyleKey.DimmedText] = ColorSystem.Gray[60],
	[StyleKey.Dropdown] = Colors.White,
	[StyleKey.InputFieldBackground] = SHIFT_200,
	[StyleKey.InputFieldBackgroundDisabled] = SHIFT_200,
	[StyleKey.InputFieldBorder] = ColorSystem.Gray[40],
	[StyleKey.InputFieldBorderDisabled] = ColorSystem.Gray[50],
	[StyleKey.InputFieldBorderHover] = Colors.Blue,
	[StyleKey.InputFieldBorderSelected] = ColorSystem.Blue[70],
	[StyleKey.Item] = Colors.White,
	[StyleKey.ItemHovered] = Colors.Gray,
	[StyleKey.ItemSelected] = Colors.Blue_Dark,

	[StyleKey.Light] = ColorSystem.Gray[20],
	[StyleKey.MainBackground] = Colors.White,
	[StyleKey.MainButton] = ColorSystem.Blue[10],
	[StyleKey.MainTextDisabled] = ColorSystem.Gray[60],
	[StyleKey.MainTextHover] = Colors.Black,
	[StyleKey.MainTextSelected] = ColorSystem.Black[0],
	[StyleKey.MenuBarBackground] = Colors.Gray_Lightest,
	[StyleKey.MenuEntryHighlight] = MUTED_ACTION,
	[StyleKey.MenuEntryHover] = Colors.Gray_Light,
	[StyleKey.Mid] = ColorSystem.Gray[20],
	[StyleKey.SubBackground] = Colors.Gray_Lighter,
	[StyleKey.SubBackground2] = Colors.Gray_Lightest,

	[StyleKey.RadioButtonDisabledImage] = "rbxasset://textures/StudioSharedUI/radio_selected_disabled_dot.png",
	[StyleKey.RibbonTab] = ColorSystem.Gray[10],

	[StyleKey.ScrollBarBackground] = ColorSystem.Gray[20],
	[StyleKey.ScrollBar] = Colors.Gray_Light,
	[StyleKey.SliderKnobColor] = ColorSystem.Black[0],
	[StyleKey.SliderKnobImage] = "rbxasset://textures/DeveloperFramework/slider_knob.png",
	[StyleKey.SliderBackground] = ColorSystem.Gray[50],
	[StyleKey.SubText] = Colors.Gray_Mid,

	[StyleKey.Tab] = ColorSystem.Gray[10],
	[StyleKey.TabHovered] = Colors.White,
	[StyleKey.TabSelected] = ColorSystem.Blue[10],

	[StyleKey.TableItem] = Colors.Gray_Lightest,
	[StyleKey.TableItemSelected] = ColorSystem.Blue[50],
	[StyleKey.Titlebar] = ColorSystem.Gray[30],
	[StyleKey.TitlebarText] = Colors.Black,
	[StyleKey.ToggleOnImage] = "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png",
	[StyleKey.ToggleOffImage] = "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png",
	[StyleKey.ToggleDisabledImage] = "rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png",
	[StyleKey.ToggleDisabledAndSelectedImage] = "rbxasset://textures/RoactStudioWidgets/toggle_on_disable_light.png",

	[StyleKey.CheckboxUncheckedImage] = "rbxasset://textures/DeveloperFramework/checkbox_unchecked_light.png",
	[StyleKey.CheckboxCheckedImage] = "rbxasset://textures/DeveloperFramework/checkbox_checked_light.png",
	[StyleKey.CheckboxIndeterminateImage] = "rbxasset://textures/DeveloperFramework/checkbox_indeterminate_light.png",
	[StyleKey.CheckboxDisabledImage] = "rbxasset://textures/DeveloperFramework/checkbox_unchecked_disabled_light.png",

	[StyleKey.EyeIconOnImage] = "rbxasset://textures/DeveloperFramework/UIOn_light.png",
	[StyleKey.EyeIconOffImage] = "rbxasset://textures/DeveloperFramework/UIOff_light.png",

	[StyleKey.RadioOffImage] = "rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/RadioOff.png",
	[StyleKey.RadioOnImage] = "rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/RadioOn.png",

	[StyleKey.CheckedFieldBackgroundHover] = ColorSystem.Gray[70],

	[StyleKey.ShimmerStart] = Colors.Gray_Lighter,
	[StyleKey.ShimmerEnd] = Colors.Gray_Lighter,

	[StyleKey.ResetCameraImage] = "rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/CameraReset.png",

	Font = Enum.Font.SourceSans,
	TextSize = 18,
	[StyleKey.ActionSecondaryHoverTransparency] = 0.84,
	[StyleKey.ActionSecondaryHover] = ColorSystem.Gray[90],

	[StyleKey.DropdownMenuStateLayerBackground] = ColorSystem.White[0],
	[StyleKey.DropdownMenuStateLayerBorderColor] = ColorSystem.Gray[10],
})

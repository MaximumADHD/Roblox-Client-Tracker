local Framework = script.Parent.Parent
local FoundationLight = require(Framework.Style.Themes.FoundationLight)
local foundationLightTheme = FoundationLight(1)

local getFFlagDevFrameworkFixInputBackground = require(Framework.SharedFlags.getFFlagDevFrameworkFixInputBackground)

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
local SHIFT_300 = if getFFlagDevFrameworkFixInputBackground()
	then foundationLightTheme.Color.Shift.Shift_300.Color3:Lerp(
		foundationLightTheme.LightMode.Surface.Surface_100.Color3,
		foundationLightTheme.Color.Shift.Shift_300.Transparency
	)
	else nil

local tokens = {
	BackgroundDefault = "$Gray40",
	BackgroundPaper = "$Gray30",
	ForegroundMain = "$Gray20",
	ForegroundMuted = "$Gray10",
	ForegroundContrast = "$Gray40",
	TextPrimary = "$Gray110",
	TextSecondary = "$Gray80",
	TextContrast = "$White",
	TextLink = "$Blue80",
	TextLinkHover = "$Blue100",
	TextDisabled = "$Gray60",
	TextError = "$Red90",
	TextSuccess = "$Green100",
	TextWarning = "$Yellow100",
	ErrorMain = "$Red90",
	SuccessMain = "$Green80",
	WarningMain = "$Yellow90",
	ActionHover = if getFFlagDevFrameworkFixInputBackground() then SHIFT_200 else "$Gray40",
	ActionEnabled = "$Gray80",
	ActionSelected = MUTED_ACTION,
	ActionActivated = if getFFlagDevFrameworkFixInputBackground() then SHIFT_300 else "$Gray50",
	ActionFocusBorder = "$Blue70",
	PrimaryMain = "$Blue70",
	PrimaryHoverBackground = "$Blue50",
	SecondaryMain = "$Gray20",
	SecondaryMuted = "$White",
	SecondaryContrast = "$Gray70",
	SecondaryHoverBackground = "$Gray30",
	SecondaryHoverOutlineBorder = "$Gray60",
	SecondaryRestingOutlineBorder = "$Gray60",
	FilledInputBackground = SHIFT_200,
	Divider = "$Gray50",

	-- TODO (STUDIOPLAT-34128): Move these tokens to a component-specific layer;
	-- right now we can only add them here since we can't add themed tokens to
	-- DF components' styles.lua files. Avoid bloating this file with more
	-- component-specific image tokens!!!
	ArrowDownImage = "rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/ArrowDown.png",
	ArrowRightImage = "rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/ArrowRight.png",
	CheckboxUncheckedImage = "rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffDefaultSmall.png",
	CheckboxCheckedImage = "rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxCheckedDefaultSmall.png",
	CheckboxIndeterminateImage = "rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxMixDefaultSmall.png",
	CheckboxDisabledImage = "rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffDisabledSmall.png",
	SearchIcon = "rbxasset://studio_svg_textures/Lua/DeveloperFramework/Light/Standard/Search.png",
	ErrorLargeImage = "rbxasset://studio_svg_textures/Shared/Alerts/Light/Large/Error.png",
	InformationLargeImage = "rbxasset://studio_svg_textures/Shared/Alerts/Light/Large/Information.png",
	QuestionLargeImage = "rbxasset://studio_svg_textures/Shared/Alerts/Light/Large/Question.png",
	SuccessLargeImage = "rbxasset://studio_svg_textures/Shared/Alerts/Light/Large/Success.png",
	WarningLargeImage = "rbxasset://studio_svg_textures/Shared/Alerts/Light/Large/Warning.png",
	ListImage = "rbxasset://studio_svg_textures/Lua/MaterialPicker/Light/Standard/List.png",
	GridImage = "rbxasset://studio_svg_textures/Lua/MaterialPicker/Light/Standard/Grid.png",
	CopyImage = "rbxasset://studio_svg_textures/Shared/Clipboard/Light/Standard/Copy.png",

	TableRowEmphasisBackgroundTransparency = 0.92,
	TableRowEmphasisBackground = Color3.fromHex("#333B4C"),

	TableRowHoverBackgroundTransparency = 0.84,
	TableRowHoverBackground = Color3.fromHex("#000000"),

	TableHeaderBorderTransparency = 0.9,
	TableHeaderBorder = Color3.fromHex("#000000"),

	-- Modern table and dropdown styles
	Surface100 = Color3.fromHex("#FFFFFF"),
	ContentMuted = Color3.fromHex("#696A6D"),
	SelectInputHoverBorderColor = Color3.fromHex("#E0E0E0"),
	SelectInputHoverBackground = Color3.fromHex("#EBEBEB"),
	ScrollBarColor = Color3.fromHex("#BBBCBE"),

	SemanticColorContentMuted = Color3.fromHex("#696A6D"),
	SemanticColorContentStandardInverse = Color3.fromHex("#F9F9F9"),
	SemanticColorSurface300Inverse = Color3.fromHex("#2B2D33"),
	SemanticColorDivider = Color3.fromHex("#000000"),
}

return tokens

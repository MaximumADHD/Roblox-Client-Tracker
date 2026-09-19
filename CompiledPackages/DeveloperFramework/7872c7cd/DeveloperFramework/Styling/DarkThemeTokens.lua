local Framework = script.Parent.Parent

local FoundationDark = require(Framework.Style.Themes.FoundationDark)
local foundationDarkTheme = FoundationDark(1)

local FFlagDevFrameworkFixTextContrast = game:DefineFastFlag("DevFrameworkFixTextContrast", false)

local getFFlagDevFrameworkFixInputBackground = require(Framework.SharedFlags.getFFlagDevFrameworkFixInputBackground)

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
local SHIFT_300 = if getFFlagDevFrameworkFixInputBackground()
	then foundationDarkTheme.Color.Shift.Shift_300.Color3:Lerp(
		foundationDarkTheme.DarkMode.Surface.Surface_100.Color3,
		foundationDarkTheme.Color.Shift.Shift_300.Transparency
	)
	else nil

local tokens = {
	BackgroundDefault = "$Gray120",
	BackgroundPaper = "$Gray100",
	ForegroundMain = "$Gray90",
	ForegroundMuted = "$Gray110",
	ForegroundContrast = "$Gray80",
	TextPrimary = "$Gray40",
	TextSecondary = "$Gray60",
	TextContrast = if FFlagDevFrameworkFixTextContrast then "$Black" else "$White",
	TextLink = "$Blue50",
	TextLinkHover = "$Blue30",
	TextDisabled = "$Gray70",
	TextError = "$Red40",
	TextSuccess = "$Green50",
	TextWarning = "$Yellow70",
	ErrorMain = "$Red50",
	SuccessMain = "$Green60",
	WarningMain = "$Yellow65",
	ActionHover = if getFFlagDevFrameworkFixInputBackground() then SHIFT_200 else "$Gray70",
	ActionEnabled = "$Gray40",
	ActionSelected = MUTED_ACTION,
	ActionActivated = if getFFlagDevFrameworkFixInputBackground() then SHIFT_300 else "$Gray110",
	ActionFocusBorder = "$Blue70",
	PrimaryMain = "$Blue70",
	PrimaryHoverBackground = "$Blue50",
	SecondaryMain = "$Gray80",
	SecondaryMuted = "$Gray110",
	SecondaryContrast = "$Gray60",
	SecondaryHoverBackground = "$Gray70",
	SecondaryHoverOutlineBorder = "$Gray70",
	SecondaryRestingOutlineBorder = "$Gray120",
	FilledInputBackground = SHIFT_200,
	Divider = "$Gray120",

	-- TODO (STUDIOPLAT-34128): Move these tokens to a component-specific layer;
	-- right now we can only add them here since we can't add themed tokens to
	-- DF components' styles.lua files. Avoid bloating this file with more
	-- component-specific image tokens!!!
	ArrowDownImage = "rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png",
	ArrowRightImage = "rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowRight.png",
	CheckboxUncheckedImage = "rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffDefaultSmall.png",
	CheckboxCheckedImage = "rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxCheckedDefaultSmall.png",
	CheckboxIndeterminateImage = "rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxMixDefaultSmall.png",
	CheckboxDisabledImage = "rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffDisabledSmall.png",
	SearchIcon = "rbxasset://studio_svg_textures/Lua/DeveloperFramework/Dark/Standard/Search.png",
	ErrorLargeImage = "rbxasset://studio_svg_textures/Shared/Alerts/Dark/Large/Error.png",
	InformationLargeImage = "rbxasset://studio_svg_textures/Shared/Alerts/Dark/Large/Information.png",
	QuestionLargeImage = "rbxasset://studio_svg_textures/Shared/Alerts/Dark/Large/Question.png",
	SuccessLargeImage = "rbxasset://studio_svg_textures/Shared/Alerts/Dark/Large/Success.png",
	WarningLargeImage = "rbxasset://studio_svg_textures/Shared/Alerts/Dark/Large/Warning.png",
	ListImage = "rbxasset://studio_svg_textures/Lua/MaterialPicker/Dark/Standard/List.png",
	GridImage = "rbxasset://studio_svg_textures/Lua/MaterialPicker/Dark/Standard/Grid.png",
	CopyImage = "rbxasset://studio_svg_textures/Shared/Clipboard/Dark/Standard/Copy.png",

	TableRowEmphasisBackgroundTransparency = 0.84,
	TableRowEmphasisBackground = Color3.fromHex("#000000"),

	TableRowHoverBackgroundTransparency = 0.84,
	TableRowHoverBackground = Color3.fromHex("#BBC2D1"),

	TableHeaderBorderTransparency = 0.88,
	TableHeaderBorder = Color3.fromHex("#ffffff"),

	-- Modern table and dropdown styles
	Surface100 = Color3.fromHex("#1F2024"),
	ContentMuted = Color3.fromHex("#BBBCBE"),
	SelectInputHoverBorderColor = Color3.fromHex("#505257"),
	SelectInputHoverBackground = Color3.fromHex("#38393B"),
	ScrollBarColor = Color3.fromHex("#1F2024"),

	SemanticColorContentMuted = Color3.fromHex("#BBBCBE"),
	SemanticColorContentStandardInverse = Color3.fromHex("#111216"),
	SemanticColorSurface300Inverse = Color3.fromHex("#F2F2F3"),
	SemanticColorDivider = Color3.fromHex("#FFFFFF"),
}

return tokens

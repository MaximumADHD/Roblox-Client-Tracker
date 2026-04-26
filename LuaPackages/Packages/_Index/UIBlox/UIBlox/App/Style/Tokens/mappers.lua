local Tokens = script.Parent
local Style = Tokens.Parent
local Core = Style.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local Cryo = require(Packages.Cryo)

local UIBloxConfig = require(UIBlox.UIBloxConfig)

local Types = require(script.Parent.Types)
local StyleTypes = require(Style.StyleTypes)

type BaseTokens = Types.BaseTokens
type Tokens = Types.Tokens
type RbxDesignFoundationsV2Tokens = Types.RbxDesignFoundationsV2Tokens
type ColorToken = Types.ColorToken
type Theme = StyleTypes.Theme

local function mapColorTokensToFoundation(
	uibloxTokens: BaseTokens,
	foundationTokens: RbxDesignFoundationsV2Tokens
): BaseTokens
	uibloxTokens.Semantic.Color = Cryo.Dictionary.join(uibloxTokens.Semantic.Color, foundationTokens.Semantic.Color)
	uibloxTokens.Global.Color = Cryo.Dictionary.join(uibloxTokens.Global.Color, foundationTokens.Global.Color)
	uibloxTokens.Component = Cryo.Dictionary.join(uibloxTokens.Component, foundationTokens.Component)

	return uibloxTokens
end

local function getOnHoverColor(
	bgColor: ColorToken,
	foundationTokens: RbxDesignFoundationsV2Tokens,
	shouldUseColorTokens: boolean
): ColorToken
	local stateLayer = if shouldUseColorTokens
		then foundationTokens.Color.State.Hover
		else foundationTokens.Component.StateLayer.Standard.Hover.Color

	if stateLayer.Transparency == 1 then
		return {
			Color3 = bgColor.Color3,
			Transparency = bgColor.Transparency,
		}
	elseif bgColor.Color3 == nil or bgColor.Transparency == 1 then
		return {
			Color3 = stateLayer.Color3,
			Transparency = stateLayer.Transparency,
		}
	else
		return {
			Color3 = bgColor.Color3:Lerp(stateLayer.Color3, 1 - stateLayer.Transparency),
			Transparency = bgColor.Transparency,
		}
	end
end

local function mapThemeToFoundation(
	theme: Theme,
	foundationTokens: RbxDesignFoundationsV2Tokens,
	useColorTokens: boolean?
): Theme
	local mapping = {}

	local shouldUseColorTokens = if useColorTokens ~= nil
		then useColorTokens
		else UIBloxConfig.useColorTokensForThemeMapping
	if shouldUseColorTokens then
		-- Use Color tokens instead of deprecated Semantic.Color tokens
		mapping.BackgroundDefault = foundationTokens.Color.Surface.Surface_0
		mapping.BackgroundContrast = foundationTokens.Color.Surface.Surface_100
		mapping.BackgroundMuted = foundationTokens.Color.Surface.Surface_200
		mapping.BackgroundUIDefault = foundationTokens.Color.Surface.Surface_300
		mapping.BackgroundUIContrast = foundationTokens.Color.OverMedia.OverMedia_0
		mapping.BackgroundOnHover = foundationTokens.Color.State.Hover
		mapping.BackgroundOnPress = foundationTokens.Color.State.Press
		mapping.UIDefault = foundationTokens.Color.Shift.Shift_200
		mapping.UIMuted = foundationTokens.Color.Shift.Shift_100
		mapping.UIEmphasis = foundationTokens.Color.Shift.Shift_400
		mapping.ContextualPrimaryDefault = foundationTokens.Color.ActionEmphasis.Background
		mapping.ContextualPrimaryOnHover =
			getOnHoverColor(foundationTokens.Color.ActionEmphasis.Background, foundationTokens, shouldUseColorTokens)
		mapping.ContextualPrimaryContent = foundationTokens.Color.ActionEmphasis.Foreground
		mapping.SystemPrimaryDefault = foundationTokens.Color.ActionSubEmphasis.Background
		mapping.SystemPrimaryOnHover =
			getOnHoverColor(foundationTokens.Color.ActionSubEmphasis.Background, foundationTokens, shouldUseColorTokens)
		mapping.SystemPrimaryContent = foundationTokens.Color.ActionSubEmphasis.Foreground
		mapping.IconDefault = foundationTokens.Color.Content.Default
		mapping.IconEmphasis = foundationTokens.Color.Content.Emphasis
		mapping.IconOnHover = foundationTokens.Color.Content.Emphasis
		mapping.TextEmphasis = foundationTokens.Color.Content.Emphasis
		mapping.TextDefault = foundationTokens.Color.Content.Default
		mapping.TextMuted = foundationTokens.Color.Content.Muted
		mapping.TextLink = foundationTokens.Color.Content.Link
		mapping.Divider = foundationTokens.Color.Stroke.Emphasis
		mapping.Overlay = foundationTokens.Color.Common.Scrim
		mapping.DropShadow = foundationTokens.Color.Common.Shadow
		mapping.NavigationBar = foundationTokens.Color.Common.NavigationBar
		mapping.PlaceHolder = foundationTokens.Color.Common.Shimmer
		mapping.OnlineStatus = foundationTokens.Color.System.Success
		mapping.OfflineStatus = foundationTokens.Color.System.Neutral
		mapping.Success = foundationTokens.Color.System.Success
		mapping.Alert = foundationTokens.Color.System.Alert
		mapping.Badge = foundationTokens.Color.System.Contrast
		mapping.BadgeContent = foundationTokens.Inverse.Content.Emphasis
	else
		-- Legacy mapping using deprecated Semantic.Color tokens
		mapping.BackgroundDefault = foundationTokens.Semantic.Color.Background.Default
		mapping.BackgroundContrast = foundationTokens.Semantic.Color.Background.Contrast
		mapping.BackgroundMuted = foundationTokens.Semantic.Color.Background.Muted
		mapping.BackgroundUIDefault = foundationTokens.Semantic.Color.BackgroundUi.Default
		mapping.BackgroundUIContrast = foundationTokens.Semantic.Color.BackgroundUi.Contrast
		mapping.BackgroundOnHover = foundationTokens.Semantic.Color.Background.OnHover
		mapping.BackgroundOnPress = foundationTokens.Semantic.Color.Background.OnPress
		mapping.UIDefault = foundationTokens.Semantic.Color.Ui.Default
		mapping.UIMuted = foundationTokens.Semantic.Color.Ui.Muted
		mapping.UIEmphasis = foundationTokens.Semantic.Color.Ui.Emphasis
		mapping.ContextualPrimaryDefault = foundationTokens.Semantic.Color.Action.PrimaryBrand.Background
		mapping.ContextualPrimaryOnHover =
			getOnHoverColor(mapping.ContextualPrimaryDefault, foundationTokens, shouldUseColorTokens)
		mapping.ContextualPrimaryContent = foundationTokens.Semantic.Color.Action.PrimaryBrand.Content
		mapping.SystemPrimaryDefault = foundationTokens.Semantic.Color.Action.Primary.Background
		mapping.SystemPrimaryOnHover =
			getOnHoverColor(mapping.SystemPrimaryDefault, foundationTokens, shouldUseColorTokens)
		mapping.SystemPrimaryContent = foundationTokens.Semantic.Color.Action.Primary.Content
		mapping.IconDefault = foundationTokens.Semantic.Color.Icon.Default
		mapping.IconEmphasis = foundationTokens.Semantic.Color.Icon.Emphasis
		mapping.IconOnHover = foundationTokens.Semantic.Color.Icon.OnHover
		mapping.TextEmphasis = foundationTokens.Semantic.Color.Text.Emphasis
		mapping.TextDefault = foundationTokens.Semantic.Color.Text.Default
		mapping.TextMuted = foundationTokens.Semantic.Color.Text.Muted
		mapping.TextLink = foundationTokens.Semantic.Color.Text.Link
		mapping.Divider = foundationTokens.Semantic.Color.Common.Divider
		mapping.Overlay = foundationTokens.Semantic.Color.Common.Overlay
		mapping.DropShadow = foundationTokens.Semantic.Color.Common.DropShadow
		mapping.NavigationBar = foundationTokens.Semantic.Color.Common.NavigationBar
		mapping.PlaceHolder = foundationTokens.Semantic.Color.Common.Placeholder
		mapping.OnlineStatus = foundationTokens.Semantic.Color.Common.Online
		mapping.OfflineStatus = foundationTokens.Semantic.Color.Common.Offline
		mapping.Success = foundationTokens.Semantic.Color.Common.Success
		mapping.Alert = foundationTokens.Semantic.Color.Common.Alert
		mapping.Badge = foundationTokens.Semantic.Color.Common.Badge
		mapping.BadgeContent = foundationTokens.Semantic.Color.Common.BadgeContent
	end

	local mappedTheme = Cryo.Dictionary.join(
		theme,
		Cryo.Dictionary.map(mapping, function(colorValue)
			return {
				Color = colorValue.Color3,
				Transparency = colorValue.Transparency,
			}
		end)
	)

	return mappedTheme
end

local FOUNDATION_FLAT_KEYS = {
	"Color",
	"Config",
	"DarkMode",
	"Ease",
	"LightMode",
	"Inverse",
	-- "Semantic", Deprecated
	"Size",
	"Padding",
	"Margin",
	"Gap",
	"Gutter",
	"Radius",
	"Stroke",
	"LineHeight",
	"FontSize",
	"FontWeight",
	"Time",
	"Typography",
}

local function addFoundationFlatKeys(uibloxTokens: BaseTokens, foundationTokens: RbxDesignFoundationsV2Tokens): Tokens
	for _, key in FOUNDATION_FLAT_KEYS do
		uibloxTokens[key] = foundationTokens[key]
	end

	return uibloxTokens :: Tokens
end

return {
	mapColorTokensToFoundation = mapColorTokensToFoundation,
	mapThemeToFoundation = mapThemeToFoundation,
	addFoundationFlatKeys = addFoundationFlatKeys,
}

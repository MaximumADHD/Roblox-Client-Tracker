local Tokens = script.Parent
local Style = Tokens.Parent
local Core = Style.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local Cryo = require(Packages.Cryo)

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

local function getOnHoverColor(bgColor: ColorToken, foundationTokens: RbxDesignFoundationsV2Tokens): ColorToken
	local stateLayer = foundationTokens.Color.State.Hover

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

local function mapThemeToFoundation(theme: Theme, foundationTokens: RbxDesignFoundationsV2Tokens): Theme
	local mapping = {
		BackgroundDefault = foundationTokens.Color.Surface.Surface_0,
		BackgroundContrast = foundationTokens.Color.Surface.Surface_100,
		BackgroundMuted = foundationTokens.Color.Surface.Surface_200,
		BackgroundUIDefault = foundationTokens.Color.Surface.Surface_300,
		BackgroundUIContrast = foundationTokens.Color.OverMedia.OverMedia_0,
		BackgroundOnHover = foundationTokens.Color.State.Hover,
		BackgroundOnPress = foundationTokens.Color.State.Press,
		UIDefault = foundationTokens.Color.Shift.Shift_200,
		UIMuted = foundationTokens.Color.Shift.Shift_100,
		UIEmphasis = foundationTokens.Color.Shift.Shift_400,
		ContextualPrimaryDefault = foundationTokens.Color.ActionEmphasis.Background,
		ContextualPrimaryOnHover = getOnHoverColor(foundationTokens.Color.ActionEmphasis.Background, foundationTokens),
		ContextualPrimaryContent = foundationTokens.Color.ActionEmphasis.Foreground,
		SystemPrimaryDefault = foundationTokens.Color.ActionSubEmphasis.Background,
		SystemPrimaryOnHover = getOnHoverColor(foundationTokens.Color.ActionSubEmphasis.Background, foundationTokens),
		SystemPrimaryContent = foundationTokens.Color.ActionSubEmphasis.Foreground,
		IconDefault = foundationTokens.Color.Content.Default,
		IconEmphasis = foundationTokens.Color.Content.Emphasis,
		IconOnHover = foundationTokens.Color.Content.Emphasis,
		TextEmphasis = foundationTokens.Color.Content.Emphasis,
		TextDefault = foundationTokens.Color.Content.Default,
		TextMuted = foundationTokens.Color.Content.Muted,
		TextLink = foundationTokens.Color.Content.Link,
		Divider = foundationTokens.Color.Stroke.Emphasis,
		Overlay = foundationTokens.Color.Common.Scrim,
		DropShadow = foundationTokens.Color.Common.Shadow,
		NavigationBar = foundationTokens.Color.Common.NavigationBar,
		PlaceHolder = foundationTokens.Color.Common.Shimmer,
		OnlineStatus = foundationTokens.Color.System.Success,
		OfflineStatus = foundationTokens.Color.System.Neutral,
		Success = foundationTokens.Color.System.Success,
		Alert = foundationTokens.Color.System.Alert,
		Badge = foundationTokens.Color.System.Contrast,
		BadgeContent = foundationTokens.Inverse.Content.Emphasis,
	}

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

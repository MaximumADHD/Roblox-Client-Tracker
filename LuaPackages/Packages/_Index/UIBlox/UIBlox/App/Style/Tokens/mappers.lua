local Tokens = script.Parent
local Style = Tokens.Parent
local Core = Style.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local Cryo = require(Packages.Cryo)

local function mapColorTokensToFoundation(uibloxTokens, foundationTokens)
	uibloxTokens.Semantic.Color = Cryo.Dictionary.join(uibloxTokens.Semantic.Color, foundationTokens.Semantic.Color)
	uibloxTokens.Global.Color = Cryo.Dictionary.join(uibloxTokens.Global.Color, foundationTokens.Global.Color)
	uibloxTokens.Component = Cryo.Dictionary.join(uibloxTokens.Component, foundationTokens.Component)

	return uibloxTokens
end

local function getOnHoverColor(bgColor, foundationTokens)
	local stateLayer = foundationTokens.Component.StateLayer.Standard.Hover.Color

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

local function mapThemeToFoundation(theme, foundationTokens)
	local mapping = {}
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
	mapping.ContextualPrimaryOnHover = getOnHoverColor(mapping.ContextualPrimaryDefault, foundationTokens)
	mapping.ContextualPrimaryContent = foundationTokens.Semantic.Color.Action.PrimaryBrand.Content
	mapping.SystemPrimaryDefault = foundationTokens.Semantic.Color.Action.Primary.Background
	mapping.SystemPrimaryOnHover = getOnHoverColor(mapping.SystemPrimaryDefault, foundationTokens)
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

return {
	mapColorTokensToFoundation = mapColorTokensToFoundation,
	mapThemeToFoundation = mapThemeToFoundation,
}

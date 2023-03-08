--!strict
--[[
	The is a wrapper for the style provider for apps.
]]
local Style = script.Parent
local Core = Style.Parent
local UIBlox = Core.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)
-- Return early to avoid any potential risks
local AppStyleProvider_DEPRECATED = require(Style.AppStyleProvider_DEPRECATED)
if not UIBloxConfig.enableRoDSDesignTokenSupport then
	return AppStyleProvider_DEPRECATED
end

local Packages = UIBlox.Parent
local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local StyleProvider = require(UIBlox.Core.Style.StyleProvider)

local getThemeFromName = require(Style.Themes.getThemeFromName)
local getFontFromName = require(Style.Fonts.getFontFromName)
local Constants = require(Style.Constants)
local Themes = require(script.Parent.Themes)
local StyleTypes = require(script.Parent.StyleTypes)
local TokenPackage = require(script.Parent.Tokens)

local getTokens = TokenPackage.getTokens
local validateTokens = TokenPackage.validateTokens

type AppStyle = StyleTypes.AppStyle
type Tokens = StyleTypes.Tokens

local DEFAULT_FONT = Constants.FontName.Gotham
local FONT_MAP = {
	[Constants.FontName.Gotham] = require(script.Parent.Fonts.Gotham),
}
local DEFAULT_THEME = Constants.ThemeName.Light
local THEME_MAP = {
	[Constants.ThemeName.Dark] = Themes.DarkTheme,
	[Constants.ThemeName.Light] = Themes.LightTheme,
}
local DEFAULT_DEVICE_TYPE = Constants.DeviceType.Console

export type StyleProps = {
	themeName: string,
	fontName: string,
	deviceType: string?,
}

export type Props = {
	style: StyleProps,
	children: { [string]: React.ReactElement? }?,
}

local defaultProps: Props = {
	style = {
		themeName = DEFAULT_THEME,
		fontName = DEFAULT_FONT,
		deviceType = DEFAULT_DEVICE_TYPE,
	},
}

local function AppStyleProvider(props: Props)
	local style: StyleProps = Object.assign({}, defaultProps.style, props.style)
	local tokens: Tokens = getTokens(style.deviceType, style.themeName, DEFAULT_THEME) :: Tokens
	-- TODO: Add additional validation for tokens here to make it safe. We can remove the call after design token stuff is fully stable.
	assert(validateTokens(tokens), "Invalid tokens!")
	local appStyle: AppStyle = {
		Font = getFontFromName(style.fontName, DEFAULT_FONT, FONT_MAP),
		Theme = getThemeFromName(style.themeName, DEFAULT_THEME, THEME_MAP),
		Tokens = tokens,
	}
	-- `any` cast due to https://jira.rbx.com/browse/CLI-54682
	return React.createElement(StyleProvider, {
		style = appStyle,
	}, props.children :: any)
end

return AppStyleProvider

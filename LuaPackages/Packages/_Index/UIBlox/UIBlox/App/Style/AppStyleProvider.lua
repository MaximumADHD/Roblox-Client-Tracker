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
local Roact = require(Packages.Roact)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local getThemeFromName = require(Style.Themes.getThemeFromName)
local getFontFromName = require(Style.Fonts.getFontFromName)
local Constants = require(Style.Constants)
local Themes = require(script.Parent.Themes)
local StyleTypes = require(script.Parent.StyleTypes)
local TokenPackage = require(script.Parent.Tokens)
local StyleContext = require(UIBlox.Style.StyleContext)

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
	local themeName, setThemeName = React.useState(style.themeName)
	local tokens: Tokens = getTokens(style.deviceType, themeName, DEFAULT_THEME) :: Tokens
	-- TODO: Add additional validation for tokens here to make it safe. We can remove the call after design token stuff is fully stable.
	assert(validateTokens(tokens), "Invalid tokens!")
	local appStyle: AppStyle = {
		Font = getFontFromName(style.fontName, DEFAULT_FONT, FONT_MAP),
		Theme = getThemeFromName(themeName, DEFAULT_THEME, THEME_MAP),
		Tokens = tokens,
	}
	local isMountedRef = React.useRef(false)
	React.useEffect(function()
		isMountedRef.current = true
		setThemeName(style.themeName)
		return function()
			isMountedRef.current = false
		end
	end, { isMountedRef, style.themeName, setThemeName } :: { any })
	local handleThemeUpdate = React.useCallback(function(_self: any, newThemeName: string)
		if isMountedRef.current then
			setThemeName(newThemeName)
		end
	end, { isMountedRef, setThemeName } :: { any })
	return React.createElement(StyleContext.Provider, {
		value = {
			style = appStyle,
			updateTheme = handleThemeUpdate,
		},
	}, Roact.oneChild(props.children :: any))
end

return AppStyleProvider

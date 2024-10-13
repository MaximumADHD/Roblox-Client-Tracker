--[[
	The is a wrapper for the style provider for apps.
]]
local Style = script.Parent
local Core = Style.Parent
local UIBlox = Core.Parent
local getTextSizeOffset = require(UIBlox.Utility.getTextSizeOffset)

local Packages = UIBlox.Parent
local React = require(Packages.React)
local Roact = require(Packages.Roact)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local getThemeFromName = require(Style.Themes.getThemeFromName)
local getFontFromName = require(Style.Fonts.getFontFromName)
local Constants = require(Style.Constants)
local StyleTypes = require(script.Parent.StyleTypes)
local TokenPackage = require(script.Parent.Tokens)
local StyleContext = require(UIBlox.Core.Style.StyleContext)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local getTokens = TokenPackage.getTokens
local validateTokens = TokenPackage.validateTokens
local getFoundationTokens = TokenPackage.getFoundationTokens
local TokensMappers = TokenPackage.Mappers

type AppStyle = StyleTypes.AppStyle
type Tokens = StyleTypes.Tokens
type ThemeName = Constants.ThemeName
type FontName = Constants.FontName
type DeviceType = Constants.DeviceType
type Settings = StyleTypes.Settings

-- We accept both strings and enum values for theme and font name
-- in case there are any casing inconsistencies.
export type Props = {
	style: {
		themeName: ThemeName | string,
		fontName: FontName | string,
		deviceType: DeviceType?,
		settings: Settings?,
	},
	children: { [string]: React.ReactElement? }?,
}

-- After join, there are no optional values
type StyleProps = {
	themeName: ThemeName,
	fontName: FontName,
	deviceType: DeviceType,
	settings: Settings,
}

local defaultStyle: StyleProps = {
	themeName = Constants.DefaultThemeName :: ThemeName,
	fontName = Constants.DefaultFontName :: FontName,
	deviceType = Constants.DefaultDeviceType :: DeviceType,
	settings = Constants.DefaultSettings :: Settings,
}

local function AppStyleProvider(props: Props)
	local style: StyleProps = Object.assign({}, defaultStyle, props.style)
	local themeName, setThemeName = React.useState(style.themeName)
	local tokens: Tokens = getTokens(style.deviceType, themeName) :: Tokens
	local textSizeOffset, setTextSizeOffset = React.useState(0)
	local theme = getThemeFromName(themeName)

	if UIBloxConfig.useFoundationColors then
		local foundationTokens = getFoundationTokens(style.deviceType, themeName)
		tokens = TokensMappers.mapColorTokensToFoundation(tokens, foundationTokens)
		theme = TokensMappers.mapThemeToFoundation(theme, foundationTokens)
	end

	-- TODO: Add additional validation for tokens here to make it safe. We can remove the call after design token stuff is fully stable.
	assert(validateTokens(tokens), "Invalid tokens!")
	local appStyle: AppStyle = {
		Font = getFontFromName(style.fontName, tokens),
		Theme = theme,
		Tokens = tokens,
		Settings = if style.settings
			then {
				PreferredTransparency = style.settings.preferredTransparency,
				ReducedMotion = style.settings.reducedMotion,
				PreferredTextSize = style.settings.preferredTextSize,
			}
			else Constants.DefaultSettings,
	}

	local isMountedRef = React.useRef(false)
	React.useEffect(function()
		isMountedRef.current = true
		setThemeName(style.themeName)
		return function()
			isMountedRef.current = false
		end
	end, { isMountedRef, style.themeName, setThemeName } :: { any })

	React.useEffect(function()
		local success, newTextSizeOffset = getTextSizeOffset(tokens.Semantic.Typography.Body.Font)
		if success then
			setTextSizeOffset(newTextSizeOffset)
		end
	end, { style.settings.preferredTextSize })

	local handleThemeUpdate = React.useCallback(function(_self: any, newThemeName: ThemeName | string)
		if isMountedRef.current then
			setThemeName(newThemeName)
		end
	end, { isMountedRef, setThemeName } :: { any })

	local themeNameConstant = if UIBloxConfig.enableUseStyleMetadata
		then React.useMemo(function()
			if themeName:lower() == Constants.ThemeName.Dark:lower() then
				return Constants.ThemeName.Dark
			elseif themeName:lower() == Constants.ThemeName.Light:lower() then
				return Constants.ThemeName.Light
			else
				return Constants.DefaultThemeName
			end
		end, { themeName })
		else nil

	return React.createElement(StyleContext.Provider, {
		value = {
			style = appStyle,
			updateTheme = handleThemeUpdate,
			derivedValues = {
				textSizeOffset = textSizeOffset,
			},
			styleMetadata = if UIBloxConfig.enableUseStyleMetadata
				then {
					ThemeName = themeNameConstant,
				}
				else nil,
		},
	}, Roact.oneChild(props.children :: any))
end

return AppStyleProvider

--[[
	The is a wrapper for the style provider for apps.
]]
local Style = script.Parent
local Core = Style.Parent
local UIBlox = Core.Parent
local getTextSizeOffset = require(UIBlox.Utility.getTextSizeOffset)

local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local Roact = require(Packages.Roact)

local GlobalPackages = UIBlox:FindFirstAncestor("Packages") or UIBlox:FindFirstAncestor("CorePackages") :: any

local isJest = if GlobalPackages
		and GlobalPackages:FindFirstChild("Dev")
		and GlobalPackages.Dev:FindFirstChild("JestGlobals")
	then pcall(require, GlobalPackages.Dev.JestGlobals)
	else false

local Foundation = require(Packages.Foundation)
local FoundationProvider = Foundation.FoundationProvider

local useTokens = Foundation.Hooks.useTokens
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local getThemeFromName = require(Style.Themes.getThemeFromName)
local getFontFromName = require(Style.Fonts.getFontFromName)
local Constants = require(Style.Constants)
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local StyleTypes = require(script.Parent.StyleTypes)
local TokenPackage = require(script.Parent.Tokens)
local StyleContext = require(UIBlox.Core.Style.StyleContext)
local Logger = require(UIBlox.Logger)

local getTokens = TokenPackage.getTokens
local validateTokens = TokenPackage.validateTokens
local getFoundationTokens = TokenPackage.getFoundationTokens
local TokensMappers = TokenPackage.Mappers
local foundationSurfaceTokensDiffer = require(script.Parent.foundationSurfaceTokensDiffer)

type AppStyle = StyleTypes.AppStyle
type BaseTokens = StyleTypes.BaseTokens
type Tokens = StyleTypes.Tokens
type RbxDesignFoundationsV2Tokens = StyleTypes.RbxDesignFoundationsV2Tokens
type ThemeName = Constants.ThemeName
type FontName = Constants.FontName
type DeviceType = Constants.DeviceType
type Settings = StyleTypes.Settings

local FOUNDATION_THEME_MAP = {
	["dark"] = Foundation.Enums.Theme.Dark,
	["light"] = Foundation.Enums.Theme.Light,
}

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
	DO_NOT_USE_useFoundationButton: boolean?,
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
	local scale = style.settings and style.settings.scale
	local baseTokens: BaseTokens = getTokens(style.deviceType, themeName, scale)
	local textSizeOffset, setTextSizeOffset = React.useState(0)
	local theme = getThemeFromName(themeName)
	local contextTokens = useTokens()
	local foundationProviderPresent = contextTokens.Config ~= nil

	local foundationTokens: RbxDesignFoundationsV2Tokens = getFoundationTokens(style.deviceType, themeName)

	-- Merge foundationTokens with contextTokens: contextTokens has Color/Config with overrides,
	-- foundationTokens has Semantic/Global/Component that mapColorTokensToFoundation needs
	local mergedTokens = if UIBloxConfig.useColorTokensForThemeMapping and foundationProviderPresent
		then Cryo.Dictionary.join(foundationTokens, contextTokens)
		else foundationTokens
	baseTokens = TokensMappers.mapColorTokensToFoundation(baseTokens, mergedTokens)

	theme = TokensMappers.mapThemeToFoundation(
		theme,
		if UIBloxConfig.useColorTokensForThemeMapping and foundationProviderPresent
			then contextTokens
			else foundationTokens
	)
	assert(validateTokens(baseTokens), "Invalid tokens!")
	-- Use contextTokens (reactive with tokenOverrides) when FoundationProvider is present,
	-- otherwise fall back to static foundationTokens
	local tokens: Tokens = TokensMappers.addFoundationFlatKeys(
		baseTokens,
		if UIBloxConfig.useColorTokensForThemeMapping and foundationProviderPresent
			then contextTokens
			else foundationTokens
	)

	local appStyle: AppStyle = {
		Font = getFontFromName(style.fontName, tokens),
		Theme = theme,
		Tokens = tokens,
		Settings = if style.settings
			then {
				PreferredTransparency = style.settings.preferredTransparency,
				ReducedMotion = style.settings.reducedMotion,
				PreferredTextSize = style.settings.preferredTextSize,
				Scale = style.settings.scale,
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

	local themeNameConstant = React.useMemo(function()
		if themeName:lower() == Constants.ThemeName.Dark:lower() then
			return Constants.ThemeName.Dark
		elseif themeName:lower() == Constants.ThemeName.Light:lower() then
			return Constants.ThemeName.Light
		else
			return Constants.DefaultThemeName
		end
	end, { themeName })

	local styleProvider = React.createElement(StyleContext.Provider, {
		value = {
			style = appStyle,
			updateTheme = handleThemeUpdate,
			derivedValues = {
				textSizeOffset = textSizeOffset,
			},
			styleMetadata = {
				ThemeName = themeNameConstant,
				-- True when `Color.Surface` Surface_0/100/200/300 differ from static `getFoundationTokens`
				HasSurfaceOverrides = if UIBloxConfig.useTokensToColorThemedAssets and foundationProviderPresent
					then foundationSurfaceTokensDiffer(foundationTokens, contextTokens)
					else false,
			},
			useFoundationButton = props.DO_NOT_USE_useFoundationButton,
		},
	}, Roact.oneChild(props.children :: any))

	if not foundationProviderPresent then
		if not isJest and _G.__DEV__ then
			Logger:warning(
				debug.traceback(
					"FoundationProvider not found. Please ensure that the FoundationProvider is present in the component tree."
				)
			)
		end
		return React.createElement(FoundationProvider, {
			theme = FOUNDATION_THEME_MAP[themeName:lower()],
			device = style.deviceType,
			preferences = style.settings,
		}, styleProvider)
	else
		return styleProvider
	end
end

return AppStyleProvider

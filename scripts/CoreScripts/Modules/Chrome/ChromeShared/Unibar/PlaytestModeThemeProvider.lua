local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local StyleConstants = UIBlox.App.Style.Constants
local Style = require(CorePackages.Workspace.Packages.Style)
local UiModeStyleProvider = Style.UiModeStyleProvider
local ThemeContext = Style.ThemeContext

local useIsPlaytestMode = require(script.Parent.Parent.Hooks.useIsPlaytestMode)

type PlaytestModeThemeProviderProps = {
	children: React.ReactNode,
}

type ThemeSwitcherProps = {
	themeName: string,
	children: React.ReactNode,
}

local function ThemeSwitcher(props: ThemeSwitcherProps)
	local themeContext = React.useContext(ThemeContext)

	React.useLayoutEffect(function()
		themeContext.setTheme(props.themeName)
	end, { props.themeName, themeContext } :: { unknown })

	return React.createElement(React.Fragment, nil, props.children)
end

local function PlaytestModeThemeProvider(props: PlaytestModeThemeProviderProps)
	local isPlaytestMode = useIsPlaytestMode()
	local themeName = if isPlaytestMode then StyleConstants.ThemeName.Light else StyleConstants.ThemeName.Dark

	return React.createElement(UiModeStyleProvider, {
		style = {
			themeName = themeName,
			fontName = StyleConstants.FontName.Gotham,
		},
	}, {
		ThemeSwitcher = React.createElement(ThemeSwitcher, {
			themeName = themeName,
		}, props.children),
	})
end

return PlaytestModeThemeProvider

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local Style = require(CorePackages.Workspace.Packages.Style)
local StyleProviderWithDefaultTheme = Style.StyleProviderWithDefaultTheme

-- Shim layer between CoreScript components and the actual StyleProvider.
return function(children, config: Style.StyleProviderWithDefaultThemeConfig?)
	return React.createElement(StyleProviderWithDefaultTheme, {
		withUiModeSupport = if config then config.withUiModeSupport else false,
		withDarkTheme = if config then config.withDarkTheme else true,
	}, children)
end

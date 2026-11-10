local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local ThemeContext = require(script.Parent.ThemeContext)

local getStudioSettings = require(Main.Util.getStudioSettings)
local Types = require(Main.Types)

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)
local SharedPluginConstants = require(Packages.SharedPluginConstants)

local e = React.createElement

function getStudioThemeNameOrDefault(): Types.ThemeName
	local settings = getStudioSettings()

	return if settings then settings.Theme.Name else SharedPluginConstants.DEFAULT_STUDIO_THEME_NAME :: Types.ThemeName
end

--[=[
		Context that provides the current Studio theme to its children.
		Provides default - "Dark" - theme in test environment

		@param props -- props with childern to render under the context

		@see Hooks.useThemeName to get the value of the context
		@see Contexts.ThemeContext if you need to manually control which theme should be used.
]=]
local function StudioThemeContextProvider(props: {
	children: React.Node,
})
	local theme, setTheme = React.useState(getStudioThemeNameOrDefault)

	local settings = getStudioSettings()
	-- Tihis is a conditional hook call, but the condition stays stable inside one environment.
	if settings and settings.ThemeChanged then
		ReactUtils.useEventConnection(settings.ThemeChanged, function()
			setTheme(getStudioThemeNameOrDefault())
		end, {})
	end

	return e(ThemeContext.Provider, { value = theme }, props.children)
end

return StudioThemeContextProvider

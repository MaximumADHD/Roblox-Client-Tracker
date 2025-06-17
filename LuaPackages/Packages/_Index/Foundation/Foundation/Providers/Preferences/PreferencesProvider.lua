local Preferences = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local PreferencesContext = require(Preferences.PreferencesContext)

local withDefaults = require(Foundation.Utility.withDefaults)

type PreferencesFull = PreferencesContext.Preferences

export type PreferencesProps = {
	preferredTextSize: Enum.PreferredTextSize?,
	preferredTransparency: number?,
	reducedMotion: boolean?,
	scale: number?,
}

export type PreferencesProviderProps = {
	children: React.ReactNode,
} & PreferencesProps

local defaultPreferences = {
	preferredTextSize = Enum.PreferredTextSize.Medium,
	preferredTransparency = 1,
	reducedMotion = false,
	scale = 1,
}

local function PreferencesProvider(preferencesProviderProps: PreferencesProviderProps)
	local props = withDefaults({
		preferredTextSize = preferencesProviderProps.preferredTextSize,
		preferredTransparency = preferencesProviderProps.preferredTransparency,
		reducedMotion = preferencesProviderProps.reducedMotion,
	}, defaultPreferences)

	return React.createElement(PreferencesContext.Provider, {
		value = props,
	}, preferencesProviderProps.children)
end

return PreferencesProvider

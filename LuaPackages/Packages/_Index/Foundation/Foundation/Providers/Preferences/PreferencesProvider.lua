local Preferences = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local PreferencesContext = require(Preferences.PreferencesContext)

local withDefaults = require(Foundation.Utility.withDefaults)

type PreferencesFull = PreferencesContext.Preferences

export type PreferencesProps = {
	preferredTransparency: number?,
	reducedMotion: boolean?,
}

export type PreferencesProviderProps = {
	children: React.ReactNode,
} & PreferencesProps

local defaultPreferences = {
	preferredTransparency = 1,
	reducedMotion = false,
}

local function PreferencesProvider(preferencesProviderProps: PreferencesProviderProps)
	local props = withDefaults({
		preferredTransparency = preferencesProviderProps.preferredTransparency,
		reducedMotion = preferencesProviderProps.reducedMotion,
	}, defaultPreferences)

	return React.createElement(PreferencesContext.Provider, {
		value = props,
	}, preferencesProviderProps.children)
end

return PreferencesProvider

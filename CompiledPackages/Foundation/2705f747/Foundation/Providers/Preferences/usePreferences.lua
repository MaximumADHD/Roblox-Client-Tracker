local Preferences = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local PreferencesContext = require(Preferences.PreferencesContext)
type Preferences = PreferencesContext.Preferences
local React = require(Packages.React)

local function usePreferences(): Preferences
	local preferences = React.useContext(PreferencesContext)
	return preferences
end

return usePreferences

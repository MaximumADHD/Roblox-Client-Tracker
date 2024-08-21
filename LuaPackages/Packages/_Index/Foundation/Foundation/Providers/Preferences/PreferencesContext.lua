local PreferencesContext = script.Parent
local Foundation = PreferencesContext:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

export type Preferences = {
	preferredTransparency: number,
	reducedMotion: boolean,
}

local React = require(Packages.React)

return React.createContext({} :: Preferences) :: React.Context<Preferences>

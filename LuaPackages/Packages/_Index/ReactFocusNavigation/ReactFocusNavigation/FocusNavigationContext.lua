local Packages = script.Parent.Parent
local FocusNavigation = require(Packages.FocusNavigation)
local React = require(Packages.React)

return React.createContext(nil :: FocusNavigation.FocusNavigationService?)

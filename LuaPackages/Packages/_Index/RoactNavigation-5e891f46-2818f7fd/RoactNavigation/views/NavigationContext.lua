-- upstream https://github.com/react-navigation/react-navigation/blob/20e2625f351f90fadadbf98890270e43e744225b/packages/core/src/views/NavigationContext.ts

local Packages = script.Parent.Parent.Parent
local React = require(Packages.React)

local NavigationContext = React.createContext(nil)

return NavigationContext

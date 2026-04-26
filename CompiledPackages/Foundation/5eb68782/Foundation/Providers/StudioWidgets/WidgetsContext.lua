local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(script.Parent.Types)
type WidgetsContext = Types.WidgetsContext

local WidgetsContext = React.createContext(nil :: WidgetsContext?)
WidgetsContext.displayName = "WidgetsContext"

return WidgetsContext

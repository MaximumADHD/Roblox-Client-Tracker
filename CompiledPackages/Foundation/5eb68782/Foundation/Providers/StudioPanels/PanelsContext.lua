local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(script.Parent.Types)
type PanelsContext = Types.PanelsContext

local PanelsContext = React.createContext(nil :: PanelsContext?)
PanelsContext.displayName = "PanelsContext"

return PanelsContext

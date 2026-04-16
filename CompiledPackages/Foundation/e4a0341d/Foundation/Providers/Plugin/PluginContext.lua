local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local PluginContext = React.createContext(nil :: Plugin?)
PluginContext.displayName = "PluginContext"

return PluginContext

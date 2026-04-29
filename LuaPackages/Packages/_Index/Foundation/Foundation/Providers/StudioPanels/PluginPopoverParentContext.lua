local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

--[[
	Panel id (`PopoverManager` popover `id`) of the nearest ancestor plugin popover.
	Used so nested `ContentPlugin` instances pass `parentPopoverId` when registering.
]]
local PluginPopoverParentContext = React.createContext(nil :: string?)
PluginPopoverParentContext.displayName = "PluginPopoverParentContext"

return PluginPopoverParentContext

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)

export type PluginPopoverParentInfo = {
	id: string?,
	ready: boolean,
}

local DEFAULT: PluginPopoverParentInfo = {
	id = nil,
	ready = true,
}

--[[
	Panel id (`PopoverManager` popover `id`) of the nearest ancestor plugin popover,
	plus a readiness flag so nested popovers can wait until the parent panel has
	been fully reparented into its QWidget.
]]
local PluginPopoverParentContext =
	React.createContext(if Flags.FoundationPopoverPluginOverlayMeasurement then DEFAULT else nil :: never)
PluginPopoverParentContext.displayName = "PluginPopoverParentContext"

return PluginPopoverParentContext

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local BreakpointConfig = require(Foundation.Utility.Responsive.BreakpointConfig)
local GridConfig = require(Foundation.Utility.Responsive.GridConfig)

export type BreakpointConfig = typeof(BreakpointConfig)
export type GridConfig = typeof(GridConfig)

export type ResponsiveConfig = {
	breakpoint: BreakpointConfig,
	grid: GridConfig,
}

export type ResponsiveContext = {
	config: ResponsiveConfig,
}

return React.createContext({
	config = {
		breakpoint = BreakpointConfig,
		grid = GridConfig,
	},
} :: ResponsiveContext)

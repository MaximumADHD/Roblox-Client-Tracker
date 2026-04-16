local Foundation = script:FindFirstAncestor("Foundation")

local Breakpoint = require(Foundation.Enums.Breakpoint)
local BreakpointShortName = require(Foundation.Enums.BreakpointShortName)

type Breakpoint = Breakpoint.Breakpoint
type BreakpointShortName = BreakpointShortName.BreakpointShortName

local shortNames: { [Breakpoint]: BreakpointShortName } = {
	[Breakpoint.XSmall] = BreakpointShortName.xs,
	[Breakpoint.Small] = BreakpointShortName.sm,
	[Breakpoint.Medium] = BreakpointShortName.md,
	[Breakpoint.Large] = BreakpointShortName.lg,
	[Breakpoint.XLarge] = BreakpointShortName.xl,
	[Breakpoint.XXLarge] = BreakpointShortName.xxl,
}

local widths: { [Breakpoint]: number } = {
	[Breakpoint.XSmall] = 360,
	[Breakpoint.Small] = 600,
	[Breakpoint.Medium] = 1140,
	[Breakpoint.Large] = 1520,
	[Breakpoint.XLarge] = 1920,
	[Breakpoint.XXLarge] = math.huge,
}

local order: { Breakpoint } = {
	Breakpoint.XSmall,
	Breakpoint.Small,
	Breakpoint.Medium,
	Breakpoint.Large,
	Breakpoint.XLarge,
	Breakpoint.XXLarge,
}

return {
	shortNames = shortNames,
	widths = widths,
	order = order,
}

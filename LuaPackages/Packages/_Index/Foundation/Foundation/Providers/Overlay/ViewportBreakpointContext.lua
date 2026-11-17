local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Breakpoint = require(Foundation.Enums.Breakpoint)
local ResponsiveContext = require(Foundation.Providers.Responsive.ResponsiveContext)
type Breakpoint = Breakpoint.Breakpoint
type BreakpointConfig = ResponsiveContext.BreakpointConfig

export type ViewportBreakpoint = {
	-- Screen the breakpoint was measured from; consumers under a different screen measure their own.
	screen: GuiBase2d?,
	-- Config the breakpoint was resolved with; consumers under a nested ResponsiveProvider measure their own.
	breakpointConfig: BreakpointConfig,
	-- Only kept current while at least one consumer is registered.
	breakpoint: Breakpoint,
	-- Registers a consumer so the provider measures the screen. Returns the unregister function.
	register: () -> () -> (),
}

-- Breakpoint of the overlay screen, shared so every consumer switches on the same render.
-- Kept apart from OverlayContext so a breakpoint change only re-renders breakpoint consumers.
return React.createContext<<ViewportBreakpoint?>>(nil)

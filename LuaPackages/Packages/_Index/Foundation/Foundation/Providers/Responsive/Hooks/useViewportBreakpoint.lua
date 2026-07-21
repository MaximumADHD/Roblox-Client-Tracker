local Foundation = script:FindFirstAncestor("Foundation")

local Breakpoint = require(Foundation.Enums.Breakpoint)
local useBreakpoint = require(Foundation.Providers.Responsive.Hooks.useBreakpoint)
local useScreen = require(Foundation.Providers.Overlay.useScreen)

type Breakpoint = Breakpoint.Breakpoint

local function useViewportBreakpoint(): Breakpoint
	local screen = useScreen()
	local breakpoint: Breakpoint = useBreakpoint(screen)

	return breakpoint
end

return useViewportBreakpoint

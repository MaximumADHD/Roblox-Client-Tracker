local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Breakpoint = require(Foundation.Enums.Breakpoint)
local Flags = require(Foundation.Utility.Flags)
local ViewportBreakpointContext = require(Foundation.Providers.Overlay.ViewportBreakpointContext)
local useBreakpoint = require(Foundation.Providers.Responsive.Hooks.useBreakpoint)
local useResponsive = require(Foundation.Providers.Responsive.useResponsive)
local useScreen = require(Foundation.Providers.Overlay.useScreen)

type Breakpoint = Breakpoint.Breakpoint

local function useViewportBreakpoint(): Breakpoint
	local screen = useScreen()

	if Flags.FoundationSharedViewportBreakpoint then
		local context = React.useContext(ViewportBreakpointContext)
		local breakpointConfig = useResponsive().config.breakpoint
		local shared = if context
				and context.screen == screen
				and context.breakpointConfig == breakpointConfig
			then context
			else nil
		local register = if shared then shared.register else nil

		React.useLayoutEffect(function()
			return if register then register() else nil
		end, { register })

		-- Without a shared breakpoint for this screen and config, fall back to measuring here
		local localBreakpoint: Breakpoint = useBreakpoint(if shared then nil else screen)

		return if shared then shared.breakpoint else localBreakpoint
	else
		local breakpoint: Breakpoint = useBreakpoint(screen)

		return breakpoint
	end
end

return useViewportBreakpoint

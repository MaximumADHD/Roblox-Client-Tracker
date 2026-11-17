local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Breakpoint = require(Foundation.Enums.Breakpoint)
local ViewportBreakpointContext = require(script.Parent.ViewportBreakpointContext)
local useBreakpoint = require(Foundation.Providers.Responsive.Hooks.useBreakpoint)
local useResponsive = require(Foundation.Providers.Responsive.useResponsive)

type Breakpoint = Breakpoint.Breakpoint
type ViewportBreakpoint = ViewportBreakpointContext.ViewportBreakpoint

-- Measures the screen only while a consumer is registered, so overlay trees that never read the
-- breakpoint don't subscribe to the screen's size.
local function useSharedViewportBreakpoint(screen: GuiBase2d?): ViewportBreakpoint
	local hasConsumers, setHasConsumers = React.useState(false)
	local consumerCount = React.useRef(0)
	local breakpointConfig = useResponsive().config.breakpoint
	local breakpoint: Breakpoint = useBreakpoint(if hasConsumers then screen else nil)

	local register = React.useCallback(function()
		consumerCount.current += 1
		setHasConsumers(true)

		return function()
			consumerCount.current -= 1
			if consumerCount.current == 0 then
				setHasConsumers(false)
			end
		end
	end, {})

	return React.useMemo(function(): ViewportBreakpoint
		return {
			screen = screen,
			breakpointConfig = breakpointConfig,
			breakpoint = breakpoint,
			register = register,
		}
	end, { screen, breakpointConfig, breakpoint, register } :: { unknown })
end

return useSharedViewportBreakpoint

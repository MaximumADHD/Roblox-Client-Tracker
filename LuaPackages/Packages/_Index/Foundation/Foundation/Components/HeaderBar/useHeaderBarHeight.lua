local Foundation = script:FindFirstAncestor("Foundation")

local Breakpoint = require(Foundation.Enums.Breakpoint)
local constants = require(Foundation.Components.HeaderBar.constants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local useViewportBreakpoint = require(Foundation.Providers.Responsive.Hooks.useViewportBreakpoint)

type Breakpoint = Breakpoint.Breakpoint

local function useHeaderBarHeight(): number
	local tokens = useTokens()
	local breakpoint: Breakpoint = useViewportBreakpoint()

	return tokens.Size[`Size_{constants.SIZE_BY_BREAKPOINT[breakpoint]}`]
end

return useHeaderBarHeight

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)
local ReactUtils = require(Packages.ReactUtils)
local usePrevious = ReactUtils.usePrevious
local Wrappers = require(Foundation.Utility.Wrappers)
local Instance = Wrappers.Instance

local Breakpoint = require(Foundation.Enums.Breakpoint)
local useResponsive = require(Foundation.Providers.Responsive.useResponsive)
local ResponsiveContext = require(Foundation.Providers.Responsive.ResponsiveContext)
local withDefaults = require(Foundation.Utility.withDefaults)
local Constants = require(Foundation.Constants)

type BreakpointConfig = ResponsiveContext.BreakpointConfig
type Breakpoint = Breakpoint.Breakpoint

type UseBreakpointOptions = {
	-- Time to debounce the absolute size change in seconds
	throttleTime: number?,
}

-- Buffer applied in the direction of the breakpoint change to prevent flickering at breakpoint boundaries
local BUFFER = 5

local function calculateBreakpointFromWidth(breakpointConfig: BreakpointConfig, width: number): Breakpoint
	local currentBreakpoint: Breakpoint = breakpointConfig.order[#breakpointConfig.order]

	for _, breakpoint: Breakpoint in breakpointConfig.order do
		if width <= breakpointConfig.widths[breakpoint] then
			currentBreakpoint = breakpoint
			break
		end
	end

	return currentBreakpoint
end

local function getBreakpointIndex(breakpointConfig: BreakpointConfig, targetBreakpoint: Breakpoint): number?
	return Dash.findIndex(breakpointConfig.order, function(breakpoint)
		return breakpoint == targetBreakpoint
	end)
end

local function shouldChangeBreakpoint(
	breakpointConfig: BreakpointConfig,
	currentWidth: number,
	candidateBreakpoint: Breakpoint,
	previousBreakpoint: Breakpoint?
): boolean
	if not previousBreakpoint then
		return true
	end

	if candidateBreakpoint == previousBreakpoint then
		return false
	end

	local previousBreakpointIndex = getBreakpointIndex(breakpointConfig, previousBreakpoint)
	local candidateBreakpointIndex = getBreakpointIndex(breakpointConfig, candidateBreakpoint)

	-- Apply buffer when moving up, or moving down between breakpoints to prevent flickering
	if candidateBreakpointIndex > previousBreakpointIndex then
		local previousBreakpointWidth: number = breakpointConfig.widths[previousBreakpoint :: Breakpoint]
		return currentWidth > (previousBreakpointWidth + BUFFER)
	else
		local candidateBreakpointWidth: number = breakpointConfig.widths[candidateBreakpoint :: Breakpoint]
		return currentWidth < (candidateBreakpointWidth - BUFFER)
	end
end

local function useBreakpoint(instance: GuiObject?, options: UseBreakpointOptions?): (Breakpoint, Vector2)
	local resolvedOptions = withDefaults(options or {}, {
		throttleTime = Constants.DEFAULT_DELAY_TIME,
	})

	local breakpointConfig = useResponsive().config.breakpoint

	local absoluteSize, setAbsoluteSize = React.useState(Vector2.zero)
	local candidateBreakpoint: Breakpoint = calculateBreakpointFromWidth(breakpointConfig, absoluteSize.X)

	local stableBreakpoint, setStableBreakpoint = React.useState(candidateBreakpoint)
	local previousStableBreakpoint = usePrevious(stableBreakpoint)

	local debouncedSetAbsoluteSize = React.useMemo(function()
		return Dash.throttle(setAbsoluteSize, resolvedOptions.throttleTime, {
			leading = true,
			trailing = true,
		})
	end, { resolvedOptions.throttleTime })

	React.useEffect(function()
		local connection

		if instance then
			connection = Instance.GetPropertyChangedSignal(instance, "AbsoluteSize"):Connect(function()
				debouncedSetAbsoluteSize(instance.AbsoluteSize)
			end)
			setAbsoluteSize(instance.AbsoluteSize)
		end

		return function()
			if connection then
				connection:Disconnect()
			end
		end
	end, { instance })

	React.useEffect(function()
		if shouldChangeBreakpoint(breakpointConfig, absoluteSize.X, candidateBreakpoint, previousStableBreakpoint) then
			setStableBreakpoint(candidateBreakpoint)
		end
	end, { breakpointConfig, absoluteSize.X, candidateBreakpoint, previousStableBreakpoint } :: { unknown })

	return stableBreakpoint :: Breakpoint, absoluteSize :: Vector2
end

return useBreakpoint

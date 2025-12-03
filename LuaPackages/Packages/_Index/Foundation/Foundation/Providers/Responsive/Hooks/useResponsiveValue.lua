local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
local Breakpoint = require(Foundation.Enums.Breakpoint)
local ResponsiveContext = require(Foundation.Providers.Responsive.ResponsiveContext)
local useResponsive = require(Foundation.Providers.Responsive.useResponsive)
local useBreakpoint = require(script.Parent.useBreakpoint)

type ResponsiveConfig = ResponsiveContext.ResponsiveConfig
type Breakpoint = Breakpoint.Breakpoint

type ResponsiveValue<T> = Types.ResponsiveValue<T>

local function useResponsiveValue<T>(instance: GuiObject?, value: ResponsiveValue<T>): T
	local breakpoint: Breakpoint = useBreakpoint(instance)
	local responsive = useResponsive()
	local breakpointConfig = responsive.config.breakpoint
	local shortName = breakpointConfig.shortNames[breakpoint]

	return value[shortName]
end

return useResponsiveValue

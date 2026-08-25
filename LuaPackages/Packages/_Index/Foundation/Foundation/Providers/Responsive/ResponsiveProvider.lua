local Responsive = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local BreakpointConfig = require(Foundation.Utility.Responsive.BreakpointConfig)
local GridConfig = require(Foundation.Utility.Responsive.GridConfig)
local ResponsiveContext = require(Responsive.ResponsiveContext)

local Flags = require(Foundation.Utility.Flags)
local withDefaults = require(Foundation.Utility.withDefaults)

type ResponsiveConfig = ResponsiveContext.ResponsiveConfig

export type ResponsiveProviderProps = {
	config: ResponsiveConfig,
	children: React.ReactNode,
}

local defaultProps: ResponsiveProviderProps = {
	config = {
		breakpoint = BreakpointConfig,
		grid = GridConfig,
	},
}

local function ResponsiveProvider(providerProps: ResponsiveProviderProps)
	local props = if Flags.FoundationStableContextValues
		then nil :: never
		else withDefaults(providerProps, defaultProps)

	local value = if Flags.FoundationStableContextValues
		then React.useMemo(function()
			return { config = withDefaults(providerProps.config or {}, defaultProps.config) }
		end, { providerProps.config })
		else nil :: never

	return React.createElement(ResponsiveContext.Provider, {
		value = if Flags.FoundationStableContextValues then value else props,
	}, if Flags.FoundationStableContextValues then providerProps.children else props.children :: React.ReactNode)
end

return ResponsiveProvider

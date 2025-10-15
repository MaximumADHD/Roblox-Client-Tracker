local Responsive = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local ResponsiveContext = require(Responsive.ResponsiveContext)
local BreakpointConfig = require(Foundation.Utility.Responsive.BreakpointConfig)
local GridConfig = require(Foundation.Utility.Responsive.GridConfig)

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
	local props = withDefaults(providerProps, defaultProps)

	return React.createElement(ResponsiveContext.Provider, {
		value = props,
	}, props.children :: React.ReactNode)
end

return ResponsiveProvider

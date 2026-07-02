local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Breakpoint = require(Foundation.Enums.Breakpoint)
local HeaderBarContext = require(Foundation.Components.HeaderBar.HeaderBarContext)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useBreakpoint = require(Foundation.Providers.Responsive.Hooks.useBreakpoint)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

type Breakpoint = Breakpoint.Breakpoint

local SIZE_TAG_BY_BREAKPOINT: { [Breakpoint]: string } = {
	[Breakpoint.XSmall] = "size-full-1400",
	[Breakpoint.Small] = "size-full-1400",
	[Breakpoint.Medium] = "size-full-1600",
	[Breakpoint.Large] = "size-full-1600",
	[Breakpoint.XLarge] = "size-full-1800",
	[Breakpoint.XXLarge] = "size-full-1800",
}

export type HeaderBarProps = {
	hasBackground: boolean?,
	children: React.ReactNode,
} & Types.CommonProps

local defaultProps = {
	hasBackground = true,
	testId = "--foundation-header-bar",
}

local function HeaderBar(headerBarProps: HeaderBarProps): React.Node
	local props = withDefaults(headerBarProps, defaultProps)

	local container, setContainer = React.useState(nil :: Frame?)
	local breakpoint: Breakpoint = useBreakpoint(container)

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = {
				["row flex-between gap-small padding-medium"] = true,
				["bg-surface-0"] = props.hasBackground,
				[SIZE_TAG_BY_BREAKPOINT[breakpoint]] = true,
			},
			ref = setContainer,
		}),
		React.createElement(HeaderBarContext.Provider, {
			testId = props.testId,
		}, props.children)
	)
end

return React.memo(HeaderBar)

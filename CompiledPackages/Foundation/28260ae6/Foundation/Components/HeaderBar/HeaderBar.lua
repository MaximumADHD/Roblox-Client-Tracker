local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local HeaderBarContext = require(script.Parent.HeaderBarContext)
local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

export type HeaderBarProps = {
	isCompact: boolean?,
	hasBackground: boolean?,
	children: React.ReactNode,
} & Types.CommonProps

local defaultProps = {
	isCompact = false,
	hasBackground = true,
	testId = "--foundation-header-bar",
}

local function HeaderBar(headerBarProps: HeaderBarProps): React.Node
	local props = withDefaults(headerBarProps, defaultProps)

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = {
				["row flex-between gap-small padding-medium"] = true,
				["bg-surface-0"] = props.hasBackground,
				["size-full-1400"] = props.isCompact,
				["size-full-1600"] = not props.isCompact,
			},
		}),
		React.createElement(HeaderBarContext.Provider, {
			testId = props.testId,
		}, props.children)
	)
end

return React.memo(HeaderBar)

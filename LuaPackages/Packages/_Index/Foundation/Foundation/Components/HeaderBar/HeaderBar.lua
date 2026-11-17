local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Breakpoint = require(Foundation.Enums.Breakpoint)
local Flags = require(Foundation.Utility.Flags)
local HeaderBarContext = require(Foundation.Components.HeaderBar.HeaderBarContext)
local HeaderBarSlot = require(Foundation.Enums.HeaderBarSlot)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local constants = require(Foundation.Components.HeaderBar.constants)
local useViewportBreakpoint = require(Foundation.Providers.Responsive.Hooks.useViewportBreakpoint)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

type Breakpoint = Breakpoint.Breakpoint

export type HeaderBarProps = {
	-- When true, paints the header bar surface. Defaults to `true`.
	hasBackground: boolean?,
	-- HeaderBar.Leading, Content, Trailing, and Actions children.
	children: React.ReactNode,
} & Types.CommonProps

local defaultProps = {
	hasBackground = true,
	testId = "--foundation-header-bar",
}

type SideWidths = {
	leading: number,
	trailing: number,
}

local function HeaderBar(headerBarProps: HeaderBarProps): React.Node
	local props = withDefaults(headerBarProps, defaultProps)

	local breakpoint: Breakpoint = useViewportBreakpoint()

	if Flags.FoundationHeaderBarSlotSizing then
		local sideWidths, setSideWidths = React.useState({
			leading = 0,
			trailing = 0,
		})

		local onSideWidthChanged = React.useCallback(function(slot: HeaderBarSlot.HeaderBarSlot, width: number)
			setSideWidths(function(previous: SideWidths): SideWidths
				local leading = if slot == HeaderBarSlot.Leading then width else previous.leading
				local trailing = if slot == HeaderBarSlot.Trailing then width else previous.trailing

				if leading == previous.leading and trailing == previous.trailing then
					return previous
				end

				return {
					leading = leading,
					trailing = trailing,
				}
			end)
		end, {})

		return React.createElement(
			View,
			withCommonProps(props, {
				tag = {
					["padding-x-medium"] = true,
					["bg-surface-0"] = props.hasBackground,
					[`size-full-{constants.SIZE_BY_BREAKPOINT[breakpoint]}`] = true,
				},
			}),
			React.createElement(HeaderBarContext.Provider, {
				testId = props.testId,
				leadingWidth = sideWidths.leading,
				trailingWidth = sideWidths.trailing,
				onSideWidthChanged = onSideWidthChanged,
			}, props.children)
		)
	else
		return React.createElement(
			View,
			withCommonProps(props, {
				tag = {
					["row flex-between gap-small padding-medium"] = true,
					["bg-surface-0"] = props.hasBackground,
					[`size-full-{constants.SIZE_BY_BREAKPOINT[breakpoint]}`] = true,
				},
			}),
			React.createElement(HeaderBarContext.Provider, {
				testId = props.testId,
			}, props.children)
		)
	end
end

return React.memo(HeaderBar)

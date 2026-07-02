local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local HeaderBarContext = require(Foundation.Components.HeaderBar.HeaderBarContext)
local HeaderBarSlot = require(Foundation.Enums.HeaderBarSlot)
local View = require(Foundation.Components.View)
local constants = require(Foundation.Components.HeaderBar.constants)
local useHeaderBarContext = require(Foundation.Components.HeaderBar.useHeaderBarContext)

export type HeaderBarTrailingProps = {
	children: React.ReactNode?,
}

local function HeaderBarTrailing(props: HeaderBarTrailingProps)
	local headerBarContext = useHeaderBarContext()

	return React.createElement(
		HeaderBarContext.Provider,
		{
			testId = headerBarContext.testId,
			slot = HeaderBarSlot.Trailing,
		},
		React.createElement(View, {
			tag = "row align-x-right align-y-center shrink gap-small size-full",
			LayoutOrder = constants.TRAILING_LAYOUT_ORDER,
			testId = `{headerBarContext.testId}--trailing`,
		}, props.children)
	)
end

return HeaderBarTrailing

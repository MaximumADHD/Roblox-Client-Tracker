local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local HeaderBarContext = require(Foundation.Components.HeaderBar.HeaderBarContext)
local HeaderBarSlot = require(Foundation.Enums.HeaderBarSlot)
local View = require(Foundation.Components.View)
local constants = require(Foundation.Components.HeaderBar.constants)
local useHeaderBarContext = require(Foundation.Components.HeaderBar.useHeaderBarContext)

export type HeaderBarLeadingProps = {
	children: React.ReactNode?,
}

local function HeaderBarLeading(props: HeaderBarLeadingProps)
	local headerBarContext = useHeaderBarContext()

	return React.createElement(
		HeaderBarContext.Provider,
		{
			testId = headerBarContext.testId,
			slot = HeaderBarSlot.Leading,
		},
		React.createElement(View, {
			tag = "row align-y-center shrink gap-small size-full",
			LayoutOrder = constants.LEADING_LAYOUT_ORDER,
			testId = `{headerBarContext.testId}--leading`,
		}, props.children)
	)
end

return HeaderBarLeading

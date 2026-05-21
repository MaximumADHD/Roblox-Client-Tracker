local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local useHeaderBarContext = require(Foundation.Components.HeaderBar.useHeaderBarContext)

export type HeaderBarTrailingProps = {
	children: React.ReactNode?,
}

local function HeaderBarTrailing(props: HeaderBarTrailingProps)
	local headerBarContext = useHeaderBarContext()

	return React.createElement(View, {
		tag = "row align-x-right align-y-center shrink gap-small size-full",
		testId = `{headerBarContext.testId}--trailing`,
	}, props.children)
end

return HeaderBarTrailing

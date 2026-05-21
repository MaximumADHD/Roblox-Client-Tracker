local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local useHeaderBarContext = require(Foundation.Components.HeaderBar.useHeaderBarContext)

export type HeaderBarLeadingProps = {
	children: React.ReactNode?,
}

local function HeaderBarLeading(props: HeaderBarLeadingProps)
	local headerBarContext = useHeaderBarContext()

	return React.createElement(View, {
		tag = "row align-y-center shrink gap-small size-full",
		testId = `{headerBarContext.testId}--leading`,
	}, props.children)
end

return HeaderBarLeading

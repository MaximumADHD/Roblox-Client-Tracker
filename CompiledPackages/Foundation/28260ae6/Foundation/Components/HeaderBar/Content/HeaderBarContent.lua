local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local useHeaderBarContext = require(Foundation.Components.HeaderBar.useHeaderBarContext)

export type HeaderBarContentProps = {
	children: React.ReactNode?,
}

local function HeaderBarContent(props: HeaderBarContentProps)
	local headerBarContext = useHeaderBarContext()

	return React.createElement(View, {
		tag = "align-y-center grow size-0-full auto-x",
		testId = `{headerBarContext.testId}--content`,
	}, props.children)
end

return HeaderBarContent

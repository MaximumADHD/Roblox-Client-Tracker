local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local HeaderBarContext = require(Foundation.Components.HeaderBar.HeaderBarContext)
local HeaderBarSlot = require(Foundation.Enums.HeaderBarSlot)
local View = require(Foundation.Components.View)
local constants = require(Foundation.Components.HeaderBar.constants)
local useHeaderBarContext = require(Foundation.Components.HeaderBar.useHeaderBarContext)

export type HeaderBarContentProps = {
	children: React.ReactNode?,
}

local function HeaderBarContent(props: HeaderBarContentProps)
	local headerBarContext = useHeaderBarContext()

	return React.createElement(
		HeaderBarContext.Provider,
		{
			testId = headerBarContext.testId,
			slot = HeaderBarSlot.Content,
		},
		React.createElement(View, {
			tag = "align-y-center grow size-0-full auto-x",
			LayoutOrder = constants.CONTENT_LAYOUT_ORDER,
			testId = `{headerBarContext.testId}--content`,
		}, props.children)
	)
end

return HeaderBarContent

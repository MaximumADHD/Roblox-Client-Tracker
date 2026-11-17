local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local HeaderBarContext = require(Foundation.Components.HeaderBar.HeaderBarContext)
local HeaderBarSlot = require(Foundation.Enums.HeaderBarSlot)
local View = require(Foundation.Components.View)
local constants = require(Foundation.Components.HeaderBar.constants)
local useHeaderBarContext = require(Foundation.Components.HeaderBar.useHeaderBarContext)

export type HeaderBarLeadingProps = {
	-- Leading slot content of the header bar.
	children: React.ReactNode?,
}

local function HeaderBarLeading(props: HeaderBarLeadingProps): React.ReactNode
	local headerBarContext = useHeaderBarContext()

	if Flags.FoundationHeaderBarSlotSizing then
		local onSideWidthChanged = headerBarContext.onSideWidthChanged

		React.useLayoutEffect(function()
			return function()
				if onSideWidthChanged then
					onSideWidthChanged(HeaderBarSlot.Leading, 0)
				end
			end
		end, { onSideWidthChanged })

		return React.createElement(
			HeaderBarContext.Provider,
			{
				testId = headerBarContext.testId,
				slot = HeaderBarSlot.Leading,
				leadingWidth = headerBarContext.leadingWidth,
				trailingWidth = headerBarContext.trailingWidth,
				onSideWidthChanged = onSideWidthChanged,
			},
			React.createElement(View, {
				tag = "row align-x-left align-y-center size-full",
				LayoutOrder = constants.LEADING_LAYOUT_ORDER,
				ZIndex = 2,
				testId = `{headerBarContext.testId}--leading`,
			}, {
				Content = React.createElement(View, {
					tag = "row align-y-center gap-small size-0-full auto-x",
					LayoutOrder = 1,
					onAbsoluteSizeChanged = function(instance)
						if onSideWidthChanged then
							onSideWidthChanged(HeaderBarSlot.Leading, instance.AbsoluteSize.X)
						end
					end,
					testId = `{headerBarContext.testId}--leading--content`,
				}, props.children),
			})
		)
	else
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
end

return HeaderBarLeading

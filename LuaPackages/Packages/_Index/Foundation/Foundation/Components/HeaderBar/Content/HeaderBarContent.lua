local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Constants = require(Foundation.Constants)
local Flags = require(Foundation.Utility.Flags)
local HeaderBarContext = require(Foundation.Components.HeaderBar.HeaderBarContext)
local HeaderBarSlot = require(Foundation.Enums.HeaderBarSlot)
local View = require(Foundation.Components.View)
local constants = require(Foundation.Components.HeaderBar.constants)
local useHeaderBarContext = require(Foundation.Components.HeaderBar.useHeaderBarContext)
local useTokens = require(Foundation.Providers.Style.useTokens)

export type HeaderBarContentProps = {
	-- Center content of the header bar.
	children: React.ReactNode?,
}

local function HeaderBarContent(props: HeaderBarContentProps): React.ReactNode
	local headerBarContext = useHeaderBarContext()

	if Flags.FoundationHeaderBarSlotSizing then
		local tokens = useTokens()
		local leadingWidth = headerBarContext.leadingWidth or 0
		local trailingWidth = headerBarContext.trailingWidth or 0
		local leadingInset = if leadingWidth > 0 then leadingWidth + tokens.Gap.Small else 0
		local trailingInset = if trailingWidth > 0 then trailingWidth + tokens.Gap.Small else 0
		-- Room past the children so a focus stroke drawn outside an input is not clipped
		local clipOutset = tokens.Padding.XSmall
		-- A shrinking spacer on the narrower side pulls children back to the bar's center, then
		-- gives up its width when children need more room than a centered position allows
		local centeringOffset = trailingInset - leadingInset

		return React.createElement(
			HeaderBarContext.Provider,
			{
				testId = headerBarContext.testId,
				slot = HeaderBarSlot.Content,
				leadingWidth = headerBarContext.leadingWidth,
				trailingWidth = headerBarContext.trailingWidth,
				onSideWidthChanged = headerBarContext.onSideWidthChanged,
			},
			React.createElement(View, {
				tag = "size-full",
				LayoutOrder = constants.CONTENT_LAYOUT_ORDER,
				ZIndex = 1,
				testId = `{headerBarContext.testId}--content`,
			}, {
				Content = React.createElement(View, {
					tag = "row align-x-center align-y-center padding-x-xsmall clip",
					Position = UDim2.fromOffset(leadingInset - clipOutset, 0),
					Size = UDim2.new(1, 2 * clipOutset - leadingInset - trailingInset, 1, 0),
					LayoutOrder = 1,
					testId = `{headerBarContext.testId}--content--content`,
				}, {
					CenteringSpacer = React.createElement(View, {
						tag = "shrink",
						Size = UDim2.fromOffset(math.abs(centeringOffset), 0),
						LayoutOrder = if centeringOffset > 0
							then Constants.MIN_LAYOUT_ORDER
							else Constants.MAX_LAYOUT_ORDER - 1,
					}),
					Children = React.createElement(React.Fragment, nil, props.children),
				}),
			})
		)
	else
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
end

return HeaderBarContent

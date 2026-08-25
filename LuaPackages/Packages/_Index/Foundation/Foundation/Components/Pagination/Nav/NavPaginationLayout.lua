local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local PaginationDirection = require(Foundation.Enums.PaginationDirection)
type PaginationDirection = PaginationDirection.PaginationDirection
local PaginationSize = require(Foundation.Enums.PaginationSize)
type PaginationSize = PaginationSize.PaginationSize

local withCommonProps = require(Foundation.Utility.withCommonProps)

local NavControls = require(script.Parent.NavControls)
local usePaginationSelectionChain = require(script.Parent.Parent.usePaginationSelectionChain)

type PaginationSelectionChain = usePaginationSelectionChain.PaginationSelectionChain

export type NavPaginationLayoutSpecificProps = {
	size: PaginationSize,
	testId: string,
	hasFirstLastButtons: boolean,
	isFirstDisabled: boolean,
	isBackDisabled: boolean,
	isForwardDisabled: boolean,
	isLastDisabled: boolean,
	onDirectionActivated: (direction: PaginationDirection) -> (),
	pageContent: React.ReactNode?,
	selection: PaginationSelectionChain,
}

export type NavPaginationLayoutProps = NavPaginationLayoutSpecificProps & Types.CommonProps

local function NavPaginationLayout(props: NavPaginationLayoutProps, ref: React.Ref<GuiObject>?)
	return React.createElement(
		View,
		withCommonProps(props, {
			tag = "row align-y-center gap-small auto-xy",
			ref = ref,
		}),
		{
			LeftNav = React.createElement(NavControls, {
				side = "start",
				size = props.size,
				LayoutOrder = 1,
				isFirstDisabled = props.isFirstDisabled,
				isBackDisabled = props.isBackDisabled,
				isForwardDisabled = props.isForwardDisabled,
				isLastDisabled = props.isLastDisabled,
				onDirectionActivated = props.onDirectionActivated,
				hasFirstLastButtons = props.hasFirstLastButtons,
				testId = props.testId,
				selection = props.selection,
			}),
			PageContent = props.pageContent,
			RightNav = React.createElement(NavControls, {
				side = "end",
				size = props.size,
				LayoutOrder = if props.pageContent then 3 else 2,
				isFirstDisabled = props.isFirstDisabled,
				isBackDisabled = props.isBackDisabled,
				isForwardDisabled = props.isForwardDisabled,
				isLastDisabled = props.isLastDisabled,
				onDirectionActivated = props.onDirectionActivated,
				hasFirstLastButtons = props.hasFirstLastButtons,
				testId = props.testId,
				selection = props.selection,
			}),
		}
	)
end

return React.memo(React.forwardRef(NavPaginationLayout))

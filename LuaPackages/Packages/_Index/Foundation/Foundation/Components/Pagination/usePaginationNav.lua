--[[
	Shared nav shell for MultiPage and Directional pagination variants: gamepad
	selection order, directional button callbacks, and NavPaginationLayout wiring.
]]
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local FoundationTypes = require(Foundation.Components.Types)

local PaginationDirection = require(Foundation.Enums.PaginationDirection)
type PaginationDirection = PaginationDirection.PaginationDirection
local PaginationSize = require(Foundation.Enums.PaginationSize)
type PaginationSize = PaginationSize.PaginationSize

local withCommonProps = require(Foundation.Utility.withCommonProps)

local NavPaginationLayout = require(script.Parent.Nav.NavPaginationLayout)
type NavPaginationLayoutSpecificProps = NavPaginationLayout.NavPaginationLayoutSpecificProps
type NavPaginationLayoutProps = NavPaginationLayout.NavPaginationLayoutProps

local paginationSlotsUtils = require(script.Parent.paginationSlotsUtils)
type PageSlot = paginationSlotsUtils.PageSlot

local usePaginationSelectionChain = require(script.Parent.usePaginationSelectionChain)
type PaginationSelectionChain = usePaginationSelectionChain.PaginationSelectionChain

type PaginationNavInputProps = {
	page: number,
	count: number?,
	onActivated: (page: number) -> (),
	size: PaginationSize,
	testId: string,
} & FoundationTypes.CommonProps & FoundationTypes.SelectionProps

type PaginationNavDisabledState = {
	isBackDisabled: boolean,
	isFirstDisabled: boolean,
	isForwardDisabled: boolean,
	isLastDisabled: boolean,
}

type UsePaginationNavConfig = {
	hasFirstLastButtons: boolean,
	currentPage: number,
	pageSlots: { PageSlot }?,
	disabledState: PaginationNavDisabledState,
}

type PaginationNav = {
	selection: PaginationSelectionChain,
	createLayout: (pageContent: React.ReactNode?, ref: React.Ref<GuiObject>?) -> React.ReactNode,
}

type NavPaginationLayoutCreateProps = NavPaginationLayoutProps & {
	ref: React.Ref<GuiObject>?,
}

local function useNavCallbacks(
	props: PaginationNavInputProps,
	disabledState: { isBackDisabled: boolean, isFirstDisabled: boolean }
)
	local onDirectionActivated = React.useCallback(function(direction: PaginationDirection)
		if direction == PaginationDirection.First then
			props.onActivated(1)
		elseif direction == PaginationDirection.Last then
			if props.count ~= nil then
				props.onActivated(props.count)
			end
		elseif direction == PaginationDirection.Backward then
			props.onActivated(props.page - 1)
		else
			props.onActivated(props.page + 1)
		end
	end, { props.count, props.onActivated, props.page } :: { unknown })

	return {
		onDirectionActivated = onDirectionActivated,
		-- First is redundant when back is disabled (already on page 1).
		isFirstDisabled = disabledState.isFirstDisabled or disabledState.isBackDisabled,
	}
end

local function mergeNavPaginationLayoutProps(
	commonProps: FoundationTypes.CommonProps,
	layoutProps: NavPaginationLayoutSpecificProps,
	ref: React.Ref<GuiObject>?
): NavPaginationLayoutCreateProps
	local merged = withCommonProps(commonProps, layoutProps) :: NavPaginationLayoutCreateProps
	merged.ref = ref
	return merged
end

local function usePaginationNav(
	props: PaginationNavInputProps,
	config: UsePaginationNavConfig,
	onFirstSlotChanged: ((GuiObject?) -> ())?
): PaginationNav
	local disabledState = config.disabledState

	local slotOrder = React.useMemo(
		function()
			return paginationSlotsUtils.getPaginationSelectableSlotOrder({
				hasFirstLastButtons = config.hasFirstLastButtons,
				isFirstDisabled = disabledState.isFirstDisabled,
				isBackDisabled = disabledState.isBackDisabled,
				isForwardDisabled = disabledState.isForwardDisabled,
				isLastDisabled = disabledState.isLastDisabled,
				pageSlots = config.pageSlots,
				currentPage = config.currentPage,
			})
		end,
		{
			config.hasFirstLastButtons,
			config.currentPage,
			config.pageSlots,
			disabledState.isBackDisabled,
			disabledState.isFirstDisabled,
			disabledState.isForwardDisabled,
			disabledState.isLastDisabled,
		} :: { unknown }
	)

	local selection = usePaginationSelectionChain(slotOrder, {
		NextSelectionUp = props.NextSelectionUp,
		NextSelectionDown = props.NextSelectionDown,
	}, onFirstSlotChanged)

	local navCallbacks = useNavCallbacks(props, {
		isBackDisabled = disabledState.isBackDisabled,
		isFirstDisabled = disabledState.isFirstDisabled,
	})

	local createLayout = React.useCallback(
		function(pageContent: React.ReactNode?, ref: React.Ref<GuiObject>?): React.ReactNode
			return React.createElement(
				NavPaginationLayout,
				mergeNavPaginationLayoutProps(props, {
					pageContent = pageContent,
					size = props.size,
					isBackDisabled = disabledState.isBackDisabled,
					isFirstDisabled = navCallbacks.isFirstDisabled,
					isForwardDisabled = disabledState.isForwardDisabled,
					isLastDisabled = disabledState.isLastDisabled,
					onDirectionActivated = navCallbacks.onDirectionActivated,
					selection = selection,
					hasFirstLastButtons = config.hasFirstLastButtons,
					testId = props.testId,
				}, ref)
			)
		end,
		{
			config.hasFirstLastButtons,
			disabledState.isBackDisabled,
			disabledState.isForwardDisabled,
			disabledState.isLastDisabled,
			navCallbacks.isFirstDisabled,
			navCallbacks.onDirectionActivated,
			props,
			selection,
		} :: { unknown }
	)

	return {
		selection = selection,
		createLayout = createLayout,
	}
end

return usePaginationNav

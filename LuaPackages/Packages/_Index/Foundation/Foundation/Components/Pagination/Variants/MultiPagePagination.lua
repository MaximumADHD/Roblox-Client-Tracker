local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local FoundationTypes = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useChipVariants = require(Foundation.Components.Chip.useChipVariants)

local ChipSize = require(Foundation.Enums.ChipSize)
type ChipSize = ChipSize.ChipSize
local ChipVariant = require(Foundation.Enums.ChipVariant)
local PaginationSize = require(Foundation.Enums.PaginationSize)
type PaginationSize = PaginationSize.PaginationSize

local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)

local Ellipsis = require(script.Parent.Parent.Nav.Ellipsis)
local PageNumberSlot = require(script.Parent.Parent.Nav.PageNumberSlot)
local paginationSlotsUtils = require(script.Parent.Parent.paginationSlotsUtils)
local paginationUtils = require(script.Parent.Parent.paginationUtils)
local usePaginationAnimatedHighlight = require(script.Parent.Parent.usePaginationAnimatedHighlight)
local usePaginationNav = require(script.Parent.Parent.usePaginationNav)

export type PaginationCommonProps = {
	size: PaginationSize?,
} & FoundationTypes.SelectionProps & FoundationTypes.CommonProps

export type MultiPagePaginationProps = {
	variant: "MultiPage"?,
	count: number,
	page: number,
	onActivated: (page: number) -> (),
	hasFirstLastButtons: boolean?,
} & PaginationCommonProps

local defaultProps = {
	size = PaginationSize.Medium,
	hasFirstLastButtons = false,
	testId = "--foundation-pagination",
}

local function MultiPagePagination(multiPageProps: MultiPagePaginationProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(multiPageProps, defaultProps)
	local slotSize: PaginationSize = props.size
	local tokens = useTokens()

	local isFirstDisabled = props.page <= 1
	local isForwardDisabled = props.page >= props.count

	local pageSlots = React.useMemo(function()
		return paginationSlotsUtils.getVisiblePageSlots(props.page, props.count)
	end, { props.page, props.count })

	local firstSlotInstance, setFirstSlotInstance = React.useState(nil :: GuiObject?)

	local paginationNav = usePaginationNav(props, {
		hasFirstLastButtons = props.hasFirstLastButtons,
		currentPage = props.page,
		pageSlots = pageSlots,
		disabledState = {
			isBackDisabled = isFirstDisabled,
			isFirstDisabled = isFirstDisabled,
			isForwardDisabled = isForwardDisabled,
			isLastDisabled = isForwardDisabled,
		},
	}, setFirstSlotInstance)

	React.useImperativeHandle(ref, function()
		return firstSlotInstance
	end, { firstSlotInstance })

	local pagesContainerRef = React.useRef(nil :: GuiObject?)

	local pageItemRefs = React.useMemo(function()
		local refs: { [string]: React.RefObject<GuiObject?> } = {}
		for _, slot in pageSlots do
			if slot ~= "ellipsis" then
				local slotId = paginationSlotsUtils.getPageSlotId(slot :: number)
				refs[slotId] = paginationNav.selection.getSlotBindings(slotId).ref
			end
		end
		return refs
	end, { pageSlots, paginationNav.selection } :: { unknown })

	local activeItemId = paginationSlotsUtils.getPageSlotId(props.page)
	local highlight = usePaginationAnimatedHighlight(activeItemId, pagesContainerRef, pageItemRefs, slotSize, pageSlots)

	local chipSize: ChipSize = if slotSize == PaginationSize.Small then ChipSize.Small else ChipSize.Medium
	local checkedVariantProps = useChipVariants(tokens, chipSize, ChipVariant.Utility, true, false, false)

	local pageSlotChildren = React.useMemo(
		function()
			local children: { [string]: React.ReactNode } = {}

			for index, slot in pageSlots do
				if slot == "ellipsis" then
					children[if index == 2 then "ellipsis-leading" else "ellipsis-trailing"] =
						React.createElement(Ellipsis, {
							slotSize = slotSize,
							LayoutOrder = index,
							testId = `{props.testId}--ellipsis-{index}`,
						})
				else
					local pageNumber = slot :: number
					local slotId = paginationSlotsUtils.getPageSlotId(pageNumber)
					local slotBindings = paginationNav.selection.getSlotBindings(slotId)
					children[`Page-{pageNumber}`] = React.createElement(PageNumberSlot, {
						slotSize = slotSize,
						isChecked = pageNumber == props.page,
						LayoutOrder = index,
						onPageActivated = props.onActivated,
						page = pageNumber,
						testId = `{props.testId}--page-{pageNumber}`,
						ref = paginationNav.selection.getSlotRef(slotId),
						Selectable = slotBindings.Selectable,
						NextSelectionLeft = slotBindings.NextSelectionLeft,
						NextSelectionRight = slotBindings.NextSelectionRight,
						NextSelectionUp = slotBindings.NextSelectionUp,
						NextSelectionDown = slotBindings.NextSelectionDown,
					})
				end
			end

			return children
		end,
		{
			pageSlots,
			props.page,
			slotSize,
			props.testId,
			props.onActivated,
			paginationNav.selection,
		} :: { unknown }
	)

	local onPagesRowLayoutChanged = React.useCallback(function()
		local activeItemRef = pageItemRefs[activeItemId]
		if activeItemRef and activeItemRef.current and pagesContainerRef.current then
			highlight.updateHighlight(activeItemRef, true)
		end
	end, { activeItemId, pageItemRefs, highlight.updateHighlight } :: { unknown })

	return paginationNav.createLayout(
		React.createElement(View, {
			LayoutOrder = 2,
			tag = "auto-xy",
			testId = `{props.testId}--pages`,
			ref = pagesContainerRef,
		}, {
			ActivePageHighlight = if not paginationUtils.needsWidePageSlot(props.page)
				then React.createElement(View, {
					Active = false,
					backgroundStyle = checkedVariantProps.chip.backgroundStyle,
					tag = "radius-circle clip",
					Size = React.joinBindings({ highlight.highlightWidth, highlight.activeItemHeight })
						:map(function(size)
							return UDim2.fromOffset(size[1], size[2])
						end),
					Position = highlight.highlightPosition:map(function(x: number)
						return UDim2.fromOffset(x, 0)
					end),
					Visible = highlight.isVisible,
					ZIndex = 1,
					selection = {
						Selectable = false,
					},
					testId = `{props.testId}--active-page-highlight`,
				})
				else nil,
			PagesRow = React.createElement(View, {
				tag = "row gap-xsmall auto-xy",
				LayoutOrder = 1,
				ZIndex = 2,
				onAbsoluteSizeChanged = onPagesRowLayoutChanged,
			}, pageSlotChildren),
		}),
		nil
	)
end

return React.memo(React.forwardRef(MultiPagePagination))

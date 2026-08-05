local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Chip = require(Foundation.Components.Chip)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local ChipSize = require(Foundation.Enums.ChipSize)
local ChipVariant = require(Foundation.Enums.ChipVariant)
local PaginationSize = require(Foundation.Enums.PaginationSize)
type PaginationSize = PaginationSize.PaginationSize
local PaginationVariant = require(Foundation.Enums.PaginationVariant)

local withDefaults = require(Foundation.Utility.withDefaults)

local MultiPagePaginationModule = require(script.Parent.MultiPagePagination)
local paginationUtils = require(script.Parent.Parent.paginationUtils)
local usePaginationNav = require(script.Parent.Parent.usePaginationNav)

export type DirectionalPaginationProps = {
	variant: "SinglePage" | "NoPage",
	page: number,
	onActivated: (page: number) -> (),
	count: number?,
	hasNextPage: boolean?,
	hasPreviousPage: boolean?,
	hasFirstLastButtons: boolean?,
} & MultiPagePaginationModule.PaginationCommonProps

local defaultProps = {
	size = PaginationSize.Medium,
	testId = "--foundation-pagination",
}

local function DirectionalPagination(directionalProps: DirectionalPaginationProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(directionalProps, defaultProps)
	local slotSize: PaginationSize = props.size

	local count = props.count
	local hasFirstLastButtons = count ~= nil and props.hasFirstLastButtons == true
	local showPageLabel = props.variant == PaginationVariant.SinglePage

	local isBackDisabled = if props.hasPreviousPage ~= nil then props.hasPreviousPage ~= true else props.page <= 1
	local isForwardDisabled = if count ~= nil
		then props.page >= count
		elseif props.hasNextPage ~= nil then props.hasNextPage ~= true
		else true

	local firstSlotInstance, setFirstSlotInstance = React.useState(nil :: GuiObject?)

	local paginationNav = usePaginationNav(props, {
		hasFirstLastButtons = hasFirstLastButtons,
		currentPage = props.page,
		disabledState = {
			isBackDisabled = isBackDisabled,
			isFirstDisabled = isBackDisabled,
			isForwardDisabled = isForwardDisabled,
			isLastDisabled = isForwardDisabled,
		},
	}, setFirstSlotInstance)

	React.useImperativeHandle(ref, function()
		return firstSlotInstance
	end, { firstSlotInstance })

	local pageContent = React.useMemo(function(): React.ReactNode?
		if not showPageLabel then
			return nil
		end

		local pageLabelText = tostring(props.page)

		if paginationUtils.needsWidePageSlot(props.page) then
			return React.createElement(Chip, {
				LayoutOrder = 2,
				isChecked = false,
				isDisabled = true,
				onActivated = function() end,
				size = if slotSize == PaginationSize.Small then ChipSize.Small else ChipSize.Medium,
				testId = `{props.testId}--page-label`,
				text = pageLabelText,
				variant = ChipVariant.Utility,
			})
		end

		return React.createElement(View, {
			LayoutOrder = 2,
			tag = paginationUtils.getCircularSlotTag(slotSize),
			testId = `{props.testId}--page-label`,
		}, {
			Text = React.createElement(Text, {
				Text = pageLabelText,
				tag = paginationUtils.getPageLabelTag(slotSize),
				LayoutOrder = 1,
			}),
		})
	end, { showPageLabel, props.page, slotSize, props.testId } :: { unknown })

	return paginationNav.createLayout(pageContent)
end

return React.memo(React.forwardRef(DirectionalPagination))

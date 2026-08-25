local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)

local PaginationSize = require(Foundation.Enums.PaginationSize)
type PaginationSize = PaginationSize.PaginationSize

local PaginationDirection = require(Foundation.Enums.PaginationDirection)
type PaginationDirection = PaginationDirection.PaginationDirection

local NavButton = require(script.Parent.NavButton)
local paginationSlotsUtils = require(script.Parent.Parent.paginationSlotsUtils)
local usePaginationSelectionChain = require(script.Parent.Parent.usePaginationSelectionChain)

type PaginationSelectionChain = usePaginationSelectionChain.PaginationSelectionChain

type NavControlsSide = "start" | "end"

type NavControlsProps = {
	side: NavControlsSide,
	size: PaginationSize,
	LayoutOrder: number,
	isFirstDisabled: boolean,
	isBackDisabled: boolean,
	isForwardDisabled: boolean,
	isLastDisabled: boolean,
	onDirectionActivated: (direction: PaginationDirection) -> (),
	hasFirstLastButtons: boolean,
	testId: string,
	selection: PaginationSelectionChain,
}

local START_DIRECTIONS = {
	PaginationDirection.First,
	PaginationDirection.Backward,
} :: { PaginationDirection }

local END_DIRECTIONS = {
	PaginationDirection.Forward,
	PaginationDirection.Last,
} :: { PaginationDirection }

local SIDE_DIRECTIONS: { [NavControlsSide]: { PaginationDirection } } = {
	start = START_DIRECTIONS,
	["end"] = END_DIRECTIONS,
}

local SIDE_TEST_ID: { [NavControlsSide]: string } = {
	start = "left-nav",
	["end"] = "right-nav",
}

local function shouldShowNavButton(direction: PaginationDirection, props: NavControlsProps): boolean
	if direction == PaginationDirection.First or direction == PaginationDirection.Last then
		return props.hasFirstLastButtons
	else
		return true
	end
end

local function getIsDisabled(direction: PaginationDirection, props: NavControlsProps): boolean
	if direction == PaginationDirection.First then
		return props.isFirstDisabled
	elseif direction == PaginationDirection.Backward then
		return props.isBackDisabled
	elseif direction == PaginationDirection.Forward then
		return props.isForwardDisabled
	else
		return props.isLastDisabled
	end
end

local function NavControls(props: NavControlsProps)
	local directions = SIDE_DIRECTIONS[props.side]

	local children: { [string]: React.ReactNode } = {}
	local LayoutOrder = 0

	for index = 1, #directions do
		local paginationDirection: PaginationDirection = directions[index]
		if shouldShowNavButton(paginationDirection, props) then
			LayoutOrder += 1
			local slotId = paginationSlotsUtils.NAV_SLOT_IDS[paginationDirection]
			local slotBindings = props.selection.getSlotBindings(slotId)
			children[paginationDirection] = React.createElement(NavButton, {
				baseTestId = props.testId,
				slotSize = props.size,
				direction = paginationDirection,
				isDisabled = getIsDisabled(paginationDirection, props),
				LayoutOrder = LayoutOrder,
				onDirectionActivated = props.onDirectionActivated,
				ref = props.selection.getSlotRef(slotId),
				Selectable = slotBindings.Selectable,
				NextSelectionLeft = slotBindings.NextSelectionLeft,
				NextSelectionRight = slotBindings.NextSelectionRight,
				NextSelectionUp = slotBindings.NextSelectionUp,
				NextSelectionDown = slotBindings.NextSelectionDown,
			})
		end
	end

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		tag = "row gap-xsmall auto-xy",
		testId = `{props.testId}--{SIDE_TEST_ID[props.side]}`,
	}, children)
end

return React.memo(NavControls)

local Foundation = script:FindFirstAncestor("Foundation")

local PaginationDirection = require(Foundation.Enums.PaginationDirection)
type PaginationDirection = PaginationDirection.PaginationDirection

export type PageSlot = number | "ellipsis"

export type PaginationSelectableSlotOrderParams = {
	hasFirstLastButtons: boolean,
	isFirstDisabled: boolean,
	isBackDisabled: boolean,
	isForwardDisabled: boolean,
	isLastDisabled: boolean,
	pageSlots: { PageSlot }?,
	currentPage: number,
}

-- Max page numbers shown before truncating with ellipses (first and last are always kept when truncated).
local MAX_VISIBLE_SLOTS = 7
local SIBLING_COUNT = 1

local NAV_SLOT_IDS = {
	[PaginationDirection.First] = "first",
	[PaginationDirection.Backward] = "back",
	[PaginationDirection.Forward] = "forward",
	[PaginationDirection.Last] = "last",
} :: { [PaginationDirection]: string }

-- Returns an ordered list of what to render in the page row. Each entry is either a page number or the string "ellipsis" for "...".
local function getVisiblePageSlots(currentPage: number, totalPages: number): { PageSlot }
	-- Few enough pages to show every number: build { 1, 2, 3, ... totalPages }.
	if totalPages <= MAX_VISIBLE_SLOTS then
		local slots: { PageSlot } = {}
		for page = 1, totalPages do
			table.insert(slots, page)
		end
		return slots
	end

	local slots: { PageSlot } = {}
	local boundaryThreshold = SIBLING_COUNT + 3

	-- Near the start (e.g. page 1 of 10): { 1, 2, 3, 4, 5, "ellipsis", 10 }
	if currentPage <= boundaryThreshold then
		for page = 1, MAX_VISIBLE_SLOTS - 2 do
			table.insert(slots, page)
		end
		table.insert(slots, "ellipsis")
		table.insert(slots, totalPages)
	-- Near the end (e.g. page 18 of 20): { 1, "ellipsis", 16, 17, 18, 19, 20 }
	elseif currentPage >= totalPages - boundaryThreshold + 1 then
		table.insert(slots, 1)
		table.insert(slots, "ellipsis")
		for page = totalPages - (MAX_VISIBLE_SLOTS - 3), totalPages do
			table.insert(slots, page)
		end
	-- In the middle (e.g. page 5 of 10): { 1, "ellipsis", 4, 5, 6, "ellipsis", 10 }
	else
		table.insert(slots, 1)
		table.insert(slots, "ellipsis")
		for page = currentPage - SIBLING_COUNT, currentPage + SIBLING_COUNT do
			table.insert(slots, page)
		end
		table.insert(slots, "ellipsis")
		table.insert(slots, totalPages)
	end

	return slots
end

local function getPageSlotId(page: number): string
	return `page-{page}`
end

-- Left-to-right gamepad selection order for nav buttons and page slots; skips the current page and ellipses.
local function getPaginationSelectableSlotOrder(params: PaginationSelectableSlotOrderParams): { string }
	local order: { string } = {}

	if params.hasFirstLastButtons and not params.isFirstDisabled then
		table.insert(order, NAV_SLOT_IDS[PaginationDirection.First])
	end

	if not params.isBackDisabled then
		table.insert(order, NAV_SLOT_IDS[PaginationDirection.Backward])
	end

	if params.pageSlots then
		for _, slot in params.pageSlots do
			if slot ~= "ellipsis" and slot ~= params.currentPage then
				table.insert(order, getPageSlotId(slot :: number))
			end
		end
	end

	if not params.isForwardDisabled then
		table.insert(order, NAV_SLOT_IDS[PaginationDirection.Forward])
	end

	if params.hasFirstLastButtons and not params.isLastDisabled then
		table.insert(order, NAV_SLOT_IDS[PaginationDirection.Last])
	end

	return order
end

return {
	NAV_SLOT_IDS = NAV_SLOT_IDS,
	getPageSlotId = getPageSlotId,
	getPaginationSelectableSlotOrder = getPaginationSelectableSlotOrder,
	getVisiblePageSlots = getVisiblePageSlots,
}

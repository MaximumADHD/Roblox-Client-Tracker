local Foundation = script:FindFirstAncestor("Foundation")

local PaginationSize = require(Foundation.Enums.PaginationSize)
type PaginationSize = PaginationSize.PaginationSize

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local MAX_CIRCULAR_PAGE_NUMBER = 999

local PAGINATION_SLOT_TAG: { [PaginationSize]: string } = {
	[PaginationSize.Small] = "row align-x-center align-y-center radius-circle size-600-600",
	[PaginationSize.Medium] = "row align-x-center align-y-center radius-circle size-800-800",
}

local PAGINATION_LABEL_TEXT_TAG: { [PaginationSize]: string } = {
	[PaginationSize.Small] = "text-label-small",
	[PaginationSize.Medium] = "text-label-medium",
}

local function getCircularSlotTag(slotSize: PaginationSize): string
	return PAGINATION_SLOT_TAG[slotSize]
end

local function getPageLabelTag(slotSize: PaginationSize): string
	return `auto-xy {PAGINATION_LABEL_TEXT_TAG[slotSize]} content-default text-align-x-center text-align-y-center`
end

local function getPageLabelTextTag(slotSize: PaginationSize): string
	return `auto-xy {PAGINATION_LABEL_TEXT_TAG[slotSize]} text-align-x-center text-align-y-center`
end

local function needsWidePageSlot(page: number): boolean
	return page > MAX_CIRCULAR_PAGE_NUMBER
end

local function getSlotCursor(tokens: Tokens)
	local cursorBorderWidth = math.floor(tokens.Stroke.Thicker)
	return {
		radius = UDim.new(0, tokens.Radius.Circle),
		offset = tokens.Size.Size_150,
		borderWidth = cursorBorderWidth,
	}
end

return {
	getCircularSlotTag = getCircularSlotTag,
	getPageLabelTag = getPageLabelTag,
	getPageLabelTextTag = getPageLabelTextTag,
	getSlotCursor = getSlotCursor,
	needsWidePageSlot = needsWidePageSlot,
}

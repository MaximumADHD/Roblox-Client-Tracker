-- Scroll-axis geometry of one list: scroll offset, viewport size, Content
-- metrics, and the visible and mounted ranges they select from the Layout.
local Src = script:FindFirstAncestor("ViewRecycler")

local Layout = require(Src.Core.Layout)
local ReachedThreshold = require(Src.Core.ViewportBehavior.ReachedThreshold)
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)
local Types = require(Src.Core.Types)

local EMPTY_RANGE = table.freeze({ firstIndex = 1, lastIndex = 0 })
local DEFAULT_OVERSCAN = 1

export type Options = {
	layout: Layout.Runtime,
	overscan: number?,
	contentAlignment: ScrollAlignment.ScrollAlignment?,
	endThreshold: ReachedThreshold.ReachedThreshold?,
}

export type Viewport = {
	setLayout: (layout: Layout.Runtime) -> (),
	getLayout: () -> Layout.Runtime,
	setScrollOffset: (offset: number) -> boolean,
	scrollTo: (offset: number) -> number,
	scrollBy: (delta: number) -> number,
	clamp: (offset: number) -> number,
	setSize: (scrollAxisLength: number, crossAxisLength: number) -> boolean,
	setOverscan: (overscan: number?) -> (),
	setContentAlignment: (alignment: ScrollAlignment.ScrollAlignment?) -> boolean,
	getContentAlignment: () -> ScrollAlignment.ScrollAlignment,
	setInsets: (startInset: number, endInset: number) -> boolean,
	setEndThreshold: (threshold: ReachedThreshold.ReachedThreshold?) -> (),
	refresh: () -> (),
	updateRanges: () -> (boolean, boolean),
	getScrollOffset: () -> number,
	getLength: () -> number,
	getCrossAxisLength: () -> number,
	getContentLength: () -> number,
	getContentStartOffset: () -> number,
	getVisibleRange: () -> Types.IndexRange,
	getMountedRange: () -> Types.IndexRange,
	visibleRangeAt: (startOffset: number, endOffset: number) -> Types.IndexRange,
	placedItemLayout: (index: number) -> Types.ItemLayout,
	offsetForItem: (index: number, alignment: ScrollAlignment.ScrollAlignment?) -> number,
	scrollState: (previous: Types.ScrollState?) -> Types.ScrollState,
}

local function resolveOverscan(value: number?): number
	local overscan = value or DEFAULT_OVERSCAN
	assert(overscan >= 0 and overscan % 1 == 0, "Virtualizer: overscan must be a non-negative integer")
	return overscan
end

local function validateAlignment(alignment: ScrollAlignment.ScrollAlignment)
	assert(
		alignment == ScrollAlignment.Start or alignment == ScrollAlignment.Center or alignment == ScrollAlignment.End,
		"Virtualizer: invalid content alignment"
	)
end

local function validateInset(value: number)
	assert(value >= 0 and value < math.huge, "Virtualizer: content insets must be finite non-negative numbers")
end

local function sameRange(left: Types.IndexRange, right: Types.IndexRange): boolean
	return left.firstIndex == right.firstIndex and left.lastIndex == right.lastIndex
end

local function createViewport(options: Options): Viewport
	local layout = options.layout
	local overscan = resolveOverscan(options.overscan)
	local contentAlignment = options.contentAlignment or ScrollAlignment.Start
	local endThreshold = options.endThreshold
	validateAlignment(contentAlignment)
	if endThreshold ~= nil then
		ReachedThreshold.validate(endThreshold, "Virtualizer: end threshold")
	end
	local insetStart = 0
	local insetEnd = 0
	local scrollOffset = 0
	local scrollAxisLength = 0
	local crossAxisLength = 0
	local contentLength = 0
	local contentStartOffset = 0
	local visibleRange: Types.IndexRange = EMPTY_RANGE
	local mountedRange: Types.IndexRange = EMPTY_RANGE

	local function metrics(): (number, number)
		local layoutLength = layout.getContentLength()
		local remaining = math.max(0, scrollAxisLength - insetStart - insetEnd - layoutLength)
		local alignmentOffset = if contentAlignment == ScrollAlignment.End
			then remaining
			elseif contentAlignment == ScrollAlignment.Center then remaining / 2
			else 0
		return insetStart + layoutLength + insetEnd, insetStart + alignmentOffset
	end

	local function refresh()
		contentLength, contentStartOffset = metrics()
	end

	local function clamp(offset: number): number
		local length = metrics()
		return math.clamp(offset, 0, math.max(0, length - scrollAxisLength))
	end

	local function scrollTo(offset: number): number
		assert(math.abs(offset) < math.huge, "Virtualizer: scroll offset must be finite")
		scrollOffset = clamp(offset)
		return scrollOffset
	end

	local function visibleRangeAt(startOffset: number, endOffset: number): Types.IndexRange
		local viewportStart = startOffset + insetStart - contentStartOffset
		local viewportEnd = math.max(viewportStart, endOffset - insetEnd - contentStartOffset)
		return layout.getIntersectingIndexRange(viewportStart, viewportEnd)
	end

	refresh()

	return {
		setLayout = function(nextLayout)
			layout = nextLayout
			refresh()
		end,
		getLayout = function()
			return layout
		end,
		setScrollOffset = function(offset)
			if scrollOffset == offset then
				return false
			end
			scrollOffset = offset
			return true
		end,
		scrollTo = scrollTo,
		scrollBy = function(delta)
			assert(math.abs(delta) < math.huge, "Virtualizer: scroll delta must be finite")
			return scrollTo(scrollOffset + delta)
		end,
		clamp = clamp,
		setSize = function(nextScrollAxisLength, nextCrossAxisLength)
			if scrollAxisLength == nextScrollAxisLength and crossAxisLength == nextCrossAxisLength then
				return false
			end
			scrollAxisLength = nextScrollAxisLength
			crossAxisLength = nextCrossAxisLength
			refresh()
			return true
		end,
		setOverscan = function(value)
			overscan = resolveOverscan(value)
		end,
		setContentAlignment = function(alignment)
			local resolved = alignment or ScrollAlignment.Start
			validateAlignment(resolved)
			if contentAlignment == resolved then
				return false
			end
			contentAlignment = resolved
			refresh()
			return true
		end,
		getContentAlignment = function()
			return contentAlignment
		end,
		setInsets = function(startInset, endInset)
			validateInset(startInset)
			validateInset(endInset)
			if insetStart == startInset and insetEnd == endInset then
				return false
			end
			insetStart = startInset
			insetEnd = endInset
			refresh()
			return true
		end,
		setEndThreshold = function(threshold)
			if threshold ~= nil then
				ReachedThreshold.validate(threshold, "Virtualizer: end threshold")
			end
			endThreshold = threshold
		end,
		refresh = refresh,
		-- Keeps each committed range record while its value is unchanged.
		updateRanges = function()
			local nextVisible = visibleRangeAt(scrollOffset, scrollOffset + scrollAxisLength)
			local nextMounted = if Types.isIndexRangeEmpty(nextVisible)
				then EMPTY_RANGE
				else layout.expandIndexRange(nextVisible, overscan, overscan)
			local visibleChanged = not sameRange(visibleRange, nextVisible)
			local mountedChanged = not sameRange(mountedRange, nextMounted)
			if visibleChanged then
				visibleRange = table.freeze({ firstIndex = nextVisible.firstIndex, lastIndex = nextVisible.lastIndex })
			end
			if mountedChanged then
				mountedRange = table.freeze({ firstIndex = nextMounted.firstIndex, lastIndex = nextMounted.lastIndex })
			end
			return visibleChanged, mountedChanged
		end,
		getScrollOffset = function()
			return scrollOffset
		end,
		getLength = function()
			return scrollAxisLength
		end,
		getCrossAxisLength = function()
			return crossAxisLength
		end,
		getContentLength = function()
			return contentLength
		end,
		getContentStartOffset = function()
			return contentStartOffset
		end,
		getVisibleRange = function()
			return visibleRange
		end,
		getMountedRange = function()
			return mountedRange
		end,
		visibleRangeAt = visibleRangeAt,
		placedItemLayout = function(index)
			local itemLayout = layout.getItemLayout(index)
			return {
				startOffset = itemLayout.startOffset + contentStartOffset,
				length = itemLayout.length,
				crossAxisIndex = itemLayout.crossAxisIndex,
				crossAxisCount = itemLayout.crossAxisCount,
			}
		end,
		offsetForItem = function(index, alignment)
			local count = layout.getItemCount()
			if count == 0 then
				return 0
			end
			local itemLayout = layout.getItemLayout(math.clamp(index, 1, count))
			local length, placementOffset = metrics()
			local available = math.max(0, scrollAxisLength - insetStart - insetEnd)
			local target = if alignment == ScrollAlignment.Center
				then placementOffset + itemLayout.startOffset + itemLayout.length / 2 - insetStart - available / 2
				elseif alignment == ScrollAlignment.End then placementOffset
					+ itemLayout.startOffset
					+ itemLayout.length
					- scrollAxisLength
					+ insetEnd
				else placementOffset + itemLayout.startOffset - insetStart
			return math.clamp(target, 0, math.max(0, length - scrollAxisLength))
		end,
		-- Returns `previous` when it still describes the current state;
		-- otherwise a new frozen state.
		scrollState = function(previous)
			local distanceFromEnd = math.max(0, contentLength - scrollAxisLength - scrollOffset)
			local atStart = scrollOffset <= 0
			local atEnd = distanceFromEnd <= ReachedThreshold.resolve(endThreshold, scrollAxisLength, 1)
			if
				previous ~= nil
				and previous.scrollOffset == scrollOffset
				and previous.viewportLength == scrollAxisLength
				and previous.contentLength == contentLength
				and previous.distanceFromEnd == distanceFromEnd
				and previous.atStart == atStart
				and previous.atEnd == atEnd
			then
				return previous
			end
			return table.freeze({
				scrollOffset = scrollOffset,
				viewportLength = scrollAxisLength,
				contentLength = contentLength,
				distanceFromEnd = distanceFromEnd,
				atStart = atStart,
				atEnd = atEnd,
			})
		end,
	}
end

return createViewport

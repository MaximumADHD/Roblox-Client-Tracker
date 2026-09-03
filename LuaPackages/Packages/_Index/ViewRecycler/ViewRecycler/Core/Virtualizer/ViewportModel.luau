local Src = script:FindFirstAncestor("ViewRecycler")

local Layout = require(Src.Core.Layout)
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)
local ScrollDirection = require(Src.Core.Enums.ScrollDirection)
local Signals = require(Src.Parent.Signals)
local Types = require(Src.Core.Types)

export type Options = {
	getLayout: () -> Layout.Runtime,
	contentAlignment: ScrollAlignment.ScrollAlignment?,
	contentInsetStart: number?,
	contentInsetEnd: number?,
	endThreshold: number?,
}

export type ViewportModel = {
	setScrollOffset: (offset: number) -> boolean,
	clampScrollOffset: (offset: number) -> number,
	scrollToOffset: (offset: number) -> number,
	scrollBy: (delta: number) -> number,
	setViewportSize: (scrollAxisLength: number, crossAxisLength: number) -> boolean,
	setContentAlignment: (alignment: ScrollAlignment.ScrollAlignment?) -> boolean,
	setContentInsets: (startInset: number, endInset: number) -> boolean,
	setEndThreshold: (threshold: number?) -> (),
	refreshContentMetrics: () -> (),
	getScrollOffset: () -> number,
	getScrollDirection: () -> ScrollDirection.ScrollDirection,
	getScrollAxisLength: () -> number,
	getCrossAxisLength: () -> number,
	getContentInsets: () -> { start: number, finish: number },
	getLayoutViewport: (startOffset: number?, endOffset: number?) -> (number, number),
	getVisibleRange: (startOffset: number?, endOffset: number?) -> Types.IndexRange,
	getPlacedItemLayout: (index: number) -> Types.ItemLayout,
	getScrollState: () -> Types.ScrollState,
	getScrollOffsetForItem: (index: number, alignment: ScrollAlignment.ScrollAlignment?) -> number,
	contentLength: Signals.getter<number>,
	contentStartOffset: Signals.getter<number>,
}

local function validateAlignment(alignment: ScrollAlignment.ScrollAlignment)
	assert(
		alignment == ScrollAlignment.Start or alignment == ScrollAlignment.Center or alignment == ScrollAlignment.End,
		"ViewportModel: invalid content alignment"
	)
end

local function validateInset(value: number)
	assert(value >= 0 and value < math.huge, "ViewportModel: content insets must be finite non-negative numbers")
end

local function validateEndThreshold(value: number)
	assert(value >= 0 and value < math.huge, "ViewportModel: end threshold must be a finite non-negative number")
end

local function createViewportModel(options: Options): ViewportModel
	local contentAlignment = options.contentAlignment or ScrollAlignment.Start
	local contentInsetStart = options.contentInsetStart or 0
	local contentInsetEnd = options.contentInsetEnd or 0
	local endThreshold = options.endThreshold or 1
	validateAlignment(contentAlignment)
	validateInset(contentInsetStart)
	validateInset(contentInsetEnd)
	validateEndThreshold(endThreshold)

	local scrollOffset = 0
	local scrollAxisLength = 0
	local crossAxisLength = 0
	local scrollDirection: ScrollDirection.ScrollDirection = ScrollDirection.None
	local contentLength, setContentLength = Signals.createSignal(0)
	local contentStartOffset, setContentStartOffset = Signals.createSignal(0)

	local function getCurrentContentMetrics(): (number, number)
		local layoutContentLength = options.getLayout().getContentLength()
		local currentContentLength = contentInsetStart + layoutContentLength + contentInsetEnd
		local remainingLength =
			math.max(0, scrollAxisLength - contentInsetStart - contentInsetEnd - layoutContentLength)
		local alignmentOffset = if contentAlignment == ScrollAlignment.End
			then remainingLength
			elseif contentAlignment == ScrollAlignment.Center then remainingLength / 2
			else 0
		return currentContentLength, contentInsetStart + alignmentOffset
	end

	local function refreshContentMetrics()
		local currentContentLength, currentContentStartOffset = getCurrentContentMetrics()
		setContentLength(currentContentLength)
		setContentStartOffset(currentContentStartOffset)
	end

	local function setScrollOffset(offset: number): boolean
		if scrollOffset == offset then
			return false
		end
		scrollDirection = if offset > scrollOffset then ScrollDirection.Forward else ScrollDirection.Backward
		scrollOffset = offset
		return true
	end

	local function clampScrollOffset(offset: number): number
		local currentContentLength = getCurrentContentMetrics()
		return math.clamp(offset, 0, math.max(0, currentContentLength - scrollAxisLength))
	end

	local function scrollToOffset(offset: number): number
		assert(math.abs(offset) < math.huge, "ViewportModel: scroll offset must be finite")
		local appliedOffset = clampScrollOffset(offset)
		setScrollOffset(appliedOffset)
		return appliedOffset
	end

	local function setViewportSize(newScrollAxisLength: number, newCrossAxisLength: number): boolean
		if scrollAxisLength == newScrollAxisLength and crossAxisLength == newCrossAxisLength then
			return false
		end
		scrollAxisLength = newScrollAxisLength
		crossAxisLength = newCrossAxisLength
		refreshContentMetrics()
		return true
	end

	local function setContentAlignment(newAlignment: ScrollAlignment.ScrollAlignment?): boolean
		local resolved = newAlignment or ScrollAlignment.Start
		validateAlignment(resolved)
		if contentAlignment == resolved then
			return false
		end
		contentAlignment = resolved
		refreshContentMetrics()
		return true
	end

	local function setContentInsets(startInset: number, endInset: number): boolean
		validateInset(startInset)
		validateInset(endInset)
		if contentInsetStart == startInset and contentInsetEnd == endInset then
			return false
		end
		contentInsetStart = startInset
		contentInsetEnd = endInset
		refreshContentMetrics()
		return true
	end

	local function getLayoutViewport(startOffset: number?, endOffset: number?): (number, number)
		local canvasStart = startOffset or scrollOffset
		local canvasEnd = endOffset or (canvasStart + scrollAxisLength)
		local placementOffset = contentStartOffset(false)
		local viewportStart = canvasStart + contentInsetStart - placementOffset
		return viewportStart, math.max(viewportStart, canvasEnd - contentInsetEnd - placementOffset)
	end

	local function getVisibleRange(startOffset: number?, endOffset: number?): Types.IndexRange
		local viewportStart, viewportEnd = getLayoutViewport(startOffset, endOffset)
		return options.getLayout().getIntersectingIndexRange(viewportStart, viewportEnd)
	end

	local function getPlacedItemLayout(index: number): Types.ItemLayout
		local itemLayout = options.getLayout().getItemLayout(index)
		return {
			startOffset = itemLayout.startOffset + contentStartOffset(false),
			length = itemLayout.length,
			crossAxisIndex = itemLayout.crossAxisIndex,
			crossAxisCount = itemLayout.crossAxisCount,
		}
	end

	local function getScrollState(): Types.ScrollState
		local currentContentLength = contentLength(false)
		local distanceFromEnd = math.max(0, currentContentLength - scrollAxisLength - scrollOffset)
		return {
			scrollOffset = scrollOffset,
			viewportLength = scrollAxisLength,
			contentLength = currentContentLength,
			distanceFromEnd = distanceFromEnd,
			atStart = scrollOffset <= 0,
			atEnd = distanceFromEnd <= endThreshold,
		}
	end

	local function getScrollOffsetForItem(index: number, alignment: ScrollAlignment.ScrollAlignment?): number
		local layout = options.getLayout()
		local count = layout.getItemCount()
		if count == 0 then
			return 0
		end
		local itemLayout = layout.getItemLayout(math.clamp(index, 1, count))
		local currentContentLength, placementOffset = getCurrentContentMetrics()
		local availableViewportLength = math.max(0, scrollAxisLength - contentInsetStart - contentInsetEnd)
		local target = if alignment == ScrollAlignment.Center
			then placementOffset
				+ itemLayout.startOffset
				+ itemLayout.length / 2
				- contentInsetStart
				- availableViewportLength / 2
			elseif alignment == ScrollAlignment.End then placementOffset
				+ itemLayout.startOffset
				+ itemLayout.length
				- scrollAxisLength
				+ contentInsetEnd
			else placementOffset + itemLayout.startOffset - contentInsetStart
		return math.clamp(target, 0, math.max(0, currentContentLength - scrollAxisLength))
	end

	refreshContentMetrics()

	return {
		setScrollOffset = setScrollOffset,
		clampScrollOffset = clampScrollOffset,
		scrollToOffset = scrollToOffset,
		scrollBy = function(delta)
			assert(math.abs(delta) < math.huge, "ViewportModel: scroll delta must be finite")
			return scrollToOffset(scrollOffset + delta)
		end,
		setViewportSize = setViewportSize,
		setContentAlignment = setContentAlignment,
		setContentInsets = setContentInsets,
		setEndThreshold = function(threshold)
			local resolved = threshold or 1
			validateEndThreshold(resolved)
			endThreshold = resolved
		end,
		refreshContentMetrics = refreshContentMetrics,
		getScrollOffset = function()
			return scrollOffset
		end,
		getScrollDirection = function()
			return scrollDirection
		end,
		getScrollAxisLength = function()
			return scrollAxisLength
		end,
		getCrossAxisLength = function()
			return crossAxisLength
		end,
		getContentInsets = function()
			return {
				start = contentInsetStart,
				finish = contentInsetEnd,
			}
		end,
		getLayoutViewport = getLayoutViewport,
		getVisibleRange = getVisibleRange,
		getPlacedItemLayout = getPlacedItemLayout,
		getScrollState = getScrollState,
		getScrollOffsetForItem = getScrollOffsetForItem,
		contentLength = contentLength,
		contentStartOffset = contentStartOffset,
	}
end

return createViewportModel

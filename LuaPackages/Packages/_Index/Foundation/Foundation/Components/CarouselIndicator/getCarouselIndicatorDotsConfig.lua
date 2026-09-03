export type CarouselIndicatorDot = {
	isActive: boolean,
	page: number,
	size: number,
}

export type CarouselIndicatorDotsConfig = {
	activeVisibleIndex: number,
	page: number,
	dots: { CarouselIndicatorDot },
	count: number,
}

local DEFAULT_DOT_COUNT = 5

local function getOverflowWindowStart(page: number): number
	return math.max(page - 2, 1)
end

local function getDefaultDots(activePage: number, count: number, maxDotSize: number)
	local dots: { CarouselIndicatorDot } = {}

	for page = 1, count do
		table.insert(dots, {
			isActive = page == activePage,
			page = page,
			size = maxDotSize,
		})
	end

	return dots
end

local function getOverflowDots(
	activePage: number,
	count: number,
	windowStart: number,
	maxDotSize: number,
	smallDotSize: number
)
	local dots: { CarouselIndicatorDot } = {}
	local windowEnd = math.min(activePage + 2, count)

	for page = windowStart, windowEnd do
		table.insert(dots, {
			isActive = page == activePage,
			page = page,
			size = if math.abs(page - activePage) == 2 then smallDotSize else maxDotSize,
		})
	end

	return dots
end

local function getCarouselIndicatorDotsConfig(
	maxDotSize: number,
	smallDotSize: number,
	page: number,
	count: number
): CarouselIndicatorDotsConfig
	local clampedCount = math.max(math.floor(count), 1)
	local clampedPage = math.clamp(math.floor(page), 1, clampedCount)
	local visibleDotCount = math.min(clampedCount, DEFAULT_DOT_COUNT)
	local isOverflow = clampedCount > DEFAULT_DOT_COUNT
	local windowStart = if isOverflow then getOverflowWindowStart(clampedPage) else 1
	local activeVisibleIndex = clampedPage - windowStart + 1
	local dots = if isOverflow
		then getOverflowDots(clampedPage, clampedCount, windowStart, maxDotSize, smallDotSize)
		else getDefaultDots(clampedPage, visibleDotCount, maxDotSize)

	return {
		activeVisibleIndex = activeVisibleIndex,
		page = clampedPage,
		dots = dots,
		count = clampedCount,
	}
end

return getCarouselIndicatorDotsConfig

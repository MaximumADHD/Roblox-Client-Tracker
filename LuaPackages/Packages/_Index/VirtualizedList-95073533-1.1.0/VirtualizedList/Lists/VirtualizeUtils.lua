-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Lists/VirtualizeUtils.js
--[[
	Copyright (c) Meta Platforms, Inc. and affiliates.

  This source code is licensed under the MIT license found in the
  LICENSE file in the root directory of this source tree.
]]

local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error
type Object = LuauPolyfill.Object

local HttpService = game:GetService("HttpService")

type Array<T> = LuauPolyfill.Array<T>
local exports = {}
local invariant = require(srcWorkspace.jsUtils.invariant)

--[[*
 * Used to find the indices of the frames that overlap the given offsets. Useful for finding the
 * items that bound different windows of content, such as the visible area or the buffered overscan
 * area.
 ]]
local function elementsThatOverlapOffsets(
	offsets: Array<number>,
	itemCount: number,
	getFrameMetrics: (index: number) -> Object & { length: number, offset: number }
): Array<number>
	local out = {}
	local outLength = 0
	for ii = 1, itemCount do
		local frame = getFrameMetrics(ii)
		local trailingOffset = frame.offset + frame.length
		for kk = 1, #offsets do
			if out[kk] == nil and trailingOffset >= offsets[kk] then
				out[kk] = ii
				outLength += 1
				if kk == #offsets then
					-- ROBLOX deviation START: Avoid excess HttpService:JSONEncode calls
					if outLength ~= #offsets then
						invariant(
							outLength == #offsets,
							"bad offsets input, should be in increasing order: %s",
							HttpService:JSONEncode(offsets)
						)
					end
					-- ROBLOX deviation END
					return out
				end
			end
		end
	end
	return out
end
exports.elementsThatOverlapOffsets = elementsThatOverlapOffsets

--[[*
 * Computes the number of elements in the `next` range that are new compared to the `prev` range.
 * Handy for calculating how many new items will be rendered when the render window changes so we
 * can restrict the number of new items render at once so that content can appear on the screen
 * faster.
 ]]
local function newRangeCount(
	prev: Object & { first: number, last: number },
	next: Object & { first: number, last: number }
): number
	return next.last
		- next.first
		+ 1
		- math.max(0, 1 + math.min(next.last, prev.last) - math.max(next.first, prev.first))
end
exports.newRangeCount = newRangeCount

--[[*
 * Custom logic for determining which items should be rendered given the current frame and scroll
 * metrics, as well as the previous render state. The algorithm may evolve over time, but generally
 * prioritizes the visible area first, then expands that with overscan regions ahead and behind,
 * biased in the direction of scroll.
 ]]
local function computeWindowedRenderLimits(
	data: any,
	getItemCount: (data: any) -> number,
	maxToRenderPerBatch: number,
	windowSize: number,
	prev: { first: number, last: number }, -- ROBLOX deviation: narrow type
	getFrameMetricsApprox: (index: number) -> { length: number, offset: number }, -- ROBLOX deviation: narrow return type
	scrollMetrics: Object & {
		dt: number,
		offset: number,
		velocity: number,
		visibleLength: number,
	}
): { first: number, last: number } --ROBLOX deviation: narrow type
	local itemCount = getItemCount(data)
	if itemCount == 0 then
		return prev
	end
	local offset, velocity, visibleLength = scrollMetrics.offset, scrollMetrics.velocity, scrollMetrics.visibleLength

	-- Start with visible area, then compute maximum overscan region by expanding from there, biased
	-- in the direction of scroll. Total overscan area is capped, which should cap memory consumption
	-- too.
	local visibleBegin = math.max(0, offset)
	local visibleEnd = visibleBegin + visibleLength
	local overscanLength = (windowSize - 1) * visibleLength

	-- Considering velocity seems to introduce more churn than it's worth.
	local leadFactor = 0.5 -- Math.max(0, Math.min(1, velocity / 25 + 0.5));

	-- ROBLOX FIXME Luau: needs normalization - velocity is known to be of type `number`
	local fillPreference = if (velocity :: number) > 1
		then "after"
		else if (velocity :: number) < -1 then "before" else "none"
	local overscanBegin = math.max(0, visibleBegin - (1 - leadFactor) * overscanLength)
	local overscanEnd = math.max(0, visibleEnd + leadFactor * overscanLength)
	local lastItemOffset = getFrameMetricsApprox(itemCount).offset -- ROBLOX deviation: index start at 1

	-- ROBLOX FIXME Luau: needs normalization - lastItemOffset is known to be of type `number`
	if lastItemOffset < overscanBegin then
		-- Entire list is before our overscan window
		return { first = math.max(1, itemCount - maxToRenderPerBatch), last = itemCount } -- ROBLOX deviation: index starts at 1
	end

	-- Find the indices that correspond to the items at the render boundaries we're targeting.
	local overscanFirst, first, last, overscanLast = table.unpack(
		elementsThatOverlapOffsets(
			{ overscanBegin, visibleBegin, visibleEnd, overscanEnd },
			itemCount,
			getFrameMetricsApprox
		),
		1,
		4
	)

	overscanFirst = if overscanFirst == nil then 1 else overscanFirst -- ROBLOX deviation: index starts at 1
	first = if first == nil then math.max(1, overscanFirst) else first -- ROBLOX deviation: index starts at 1

	overscanLast = if overscanLast == nil then itemCount else overscanLast -- ROBLOX deviation: index start at 1
	last = if last == nil then math.min(overscanLast, first + maxToRenderPerBatch - 1) else last

	local visible = { first = first, last = last }

	-- We want to limit the number of new cells we're rendering per batch so that we can fill thezat once, the user
	-- could be staring at white space for a long time waiting for a bunch of offscreen content to
	-- render.
	local newCellCount = newRangeCount(prev, visible)
	while true do
		if first <= overscanFirst and last >= overscanLast then
			-- If we fill the entire overscan range, we're done.
			break
		end

		local maxNewCells = newCellCount >= maxToRenderPerBatch
		local firstWillAddMore = first <= prev.first or first > prev.last
		local firstShouldIncrement = first > overscanFirst and (not maxNewCells or not firstWillAddMore)
		local lastWillAddMore = last >= prev.last or last < prev.first
		local lastShouldIncrement = last < overscanLast and (not maxNewCells or not lastWillAddMore)
		if maxNewCells and not firstShouldIncrement and not lastShouldIncrement then
			-- We only want to stop if we've hit maxNewCells AND we cannot increment first or last
			-- without rendering new items. This let's us preserve as many already rendered items as
			-- possible, reducing render churn and keeping the rendered overscan range as large as
			-- possible.
			break
		end
		if firstShouldIncrement and not (fillPreference == "after" and lastShouldIncrement and lastWillAddMore) then
			if firstWillAddMore then
				newCellCount += 1
			end
			first -= 1
		end
		if lastShouldIncrement and not (fillPreference == "before" and firstShouldIncrement and firstWillAddMore) then
			if lastWillAddMore then
				newCellCount += 1
			end
			last += 1
		end
	end
	if
		not (
			last >= first
			and first >= 1
			and last <= itemCount -- ROBLOX deviation: index start at 1
			and first >= overscanFirst
			and last <= overscanLast
			and first <= visible.first
			and last >= visible.last
		)
	then
		error(Error.new("Bad window calculation " .. HttpService:JSONEncode({
			first = first,
			last = last,
			itemCount = itemCount,
			overscanFirst = overscanFirst,
			overscanLast = overscanLast,
			visible = visible,
		})))
	end
	return { first = first, last = last }
end
exports.computeWindowedRenderLimits = computeWindowedRenderLimits

local function keyExtractor(item: any, index: number): string
	if typeof(item) == "table" and item.key ~= nil then
		return item.key
	end
	if typeof(item) == "table" and item.id ~= nil then
		return item.id
	end
	return tostring(index)
end
exports.keyExtractor = keyExtractor
return exports

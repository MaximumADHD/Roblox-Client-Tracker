-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Lists/ViewabilityHelper.js
--[[*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @flow
 * @format
 ]]
local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Map = LuauPolyfill.Map
local Set = LuauPolyfill.Set
local Object = LuauPolyfill.Object
local console = LuauPolyfill.console
local setTimeout = LuauPolyfill.setTimeout
local clearTimeout = LuauPolyfill.clearTimeout
local invariant = require(srcWorkspace.jsUtils.invariant)

type Timeout = LuauPolyfill.Timeout
type Object = LuauPolyfill.Object
type Set<T> = LuauPolyfill.Set<T>
type Map<T, V> = LuauPolyfill.Map<T, V>
type Array<T> = LuauPolyfill.Array<T>
export type ViewToken = Object & {
	item: any,
	key: string,
	index: number?,
	isViewable: boolean,
	section: any?,
}

export type ViewabilityConfigCallbackPair = Object & {
	viewabilityConfig: ViewabilityConfig,
	onViewableItemsChanged: (
		info: Object & {
			viewableItems: Array<ViewToken>,
			changed: Array<ViewToken>,
		}
	) -> (),
}

export type ViewabilityConfig = {
	--[[
		Minimum amount of time (in milliseconds) that an item must be physically viewable before the
		viewability callback will be fired. A high number means that scrolling through content without
		stopping will not mark the content as viewable.
   	]]
	minimumViewTime: number?,

	--[[
		Percent of viewport that must be covered for a partially occluded item to count as
		"viewable", 0-100. Fully visible items are always considered viewable. A value of 0 means
		that a single pixel in the viewport makes the item viewable, and a value of 100 means that
		an item must be either entirely visible or cover the entire viewport to count as viewable.
	]]
	viewAreaCoveragePercentThreshold: number?,

	--[[
		Similar to `viewAreaPercentThreshold`, but considers the percent of the item that is visible,
		rather than the fraction of the viewable area it covers.
	]]
	itemVisiblePercentThreshold: number?,

	--[[
		Nothing is considered viewable until the user scrolls or `recordInteraction` is called after
		render.
	]]
	waitForInteraction: boolean?,
}
-- ROBLOX DEVIATION: Declare Metrics type for reuse later
type Metrics = Object & {
	length: number,
	offset: number,
}

-- ROBLOX DEVIATION: predeclare functions
local _isEntirelyVisible
local _getPixelsVisible
local _isViewable

--[[*
 * A Utility class for calculating viewable items based on current metrics like scroll position and
 * layout.
 *
 * An item is said to be in a "viewable" state when any of the following
 * is true for longer than `minimumViewTime` milliseconds (after an interaction if `waitForInteraction`
 * is true):
 *
 * - Occupying >= `viewAreaCoveragePercentThreshold` of the view area XOR fraction of the item
 *   visible in the view area >= `itemVisiblePercentThreshold`.
 * - Entirely visible on screen
 ]]
export type ViewabilityHelper = {
	_config: ViewabilityConfig,
	_hasInteracted: boolean,
	_timers: Set<Timeout>,
	_viewableIndices: Array<number>,
	_viewableItems: Map<string, ViewToken>,
	dispose: (self: ViewabilityHelper) -> (),
	computeViewableItems: (
		self: ViewabilityHelper,
		itemCount: number,
		scrollOffset: number,
		viewportHeight: number,
		getFrameMetrics: (index: number) -> Metrics?,
		renderRange: (Object & {
			first: number,
			last: number,
		})?
	) -> Array<number>,
	onUpdate: (
		self: ViewabilityHelper,
		itemCount: number,
		scrollOffset: number,
		viewportHeight: number,
		getFrameMetrics: (index: number) -> Metrics?,
		createViewToken: (index: number, isViewable: boolean) -> ViewToken,
		onViewableItemsChanged: (Object & {
			viewableItems: Array<ViewToken>,
			changed: Array<ViewToken>,
		}) -> (), -- Optional optimization to reduce the scan size
		renderRange: (Object & {
			first: number,
			last: number,
		})?
	) -> (),
	resetViewableIndices: (self: ViewabilityHelper) -> (),
	recordInteraction: (self: ViewabilityHelper) -> (),
	_onUpdateSync: (
		self: ViewabilityHelper,
		viewableIndices: Array<number>,
		onViewableItemsChanged: (Object & {
			viewableItems: Array<ViewToken>,
			changed: Array<ViewToken>,
		}) -> (),
		createViewToken: (index: number, isViewable: boolean) -> ViewToken
	) -> (),
}

local ViewabilityHelper = {}
ViewabilityHelper.__index = ViewabilityHelper
function ViewabilityHelper.new(config: ViewabilityConfig?): ViewabilityHelper
	local self = setmetatable({}, ViewabilityHelper)
	if config == nil then
		config = { viewAreaCoveragePercentThreshold = 0 }
	end
	self._hasInteracted = false
	self._timers = Set.new() :: Set<Timeout>
	self._viewableIndices = {} :: Array<number>
	self._viewableItems = Map.new() :: Map<string, ViewToken>
	self._config = config
	return (self :: any) :: ViewabilityHelper
end

function ViewabilityHelper:dispose()
	--[[ $FlowFixMe[incompatible-call] (>=0.63.0 site=react_native_fb) This
     * comment suppresses an error found when Flow v0.63 was deployed. To see
     * the error delete this comment and run Flow. ]]
	self._timers:forEach(function(value)
		clearTimeout(value)
	end)
end

function ViewabilityHelper:computeViewableItems(
	itemCount: number,
	scrollOffset: number,
	viewportHeight: number,
	getFrameMetrics: (index: number) -> Metrics?,
	renderRange: (Object & {
		first: number,
		last: number,
	})?
): Array<number>
	local itemVisiblePercentThreshold, viewAreaCoveragePercentThreshold =
		self._config.itemVisiblePercentThreshold, self._config.viewAreaCoveragePercentThreshold
	local viewAreaMode = viewAreaCoveragePercentThreshold ~= nil
	local viewablePercentThreshold = if viewAreaMode
		then viewAreaCoveragePercentThreshold
		else itemVisiblePercentThreshold
	invariant(
		viewablePercentThreshold ~= nil
			and (itemVisiblePercentThreshold ~= nil) ~= (viewAreaCoveragePercentThreshold ~= nil),
		"Must set exactly one of itemVisiblePercentThreshold or viewAreaCoveragePercentThreshold"
	)
	local viewableIndices = {}
	if itemCount == 0 then
		return viewableIndices
	end
	local firstVisible = 0
	local first, last
	do
		local ref = if renderRange then renderRange else { first = 1, last = itemCount }
		first, last = ref.first :: number, ref.last :: number
	end
	if last > itemCount then
		console.warn(
			"Invalid render range computing viewability { renderRange = "
				.. tostring(renderRange)
				.. ", itemCount = "
				.. tostring(itemCount)
				.. " }"
		)
		return {}
	end
	local idx_ = first
	while idx_ <= last do
		local idx = idx_
		local metrics = getFrameMetrics(idx)
		if not metrics then
			idx_ += 1
			continue
		end
		local top = (metrics :: Metrics).offset - scrollOffset
		local bottom = top + (metrics :: Metrics).length
		if top < viewportHeight and bottom > 0 then
			firstVisible = idx
			if
				_isViewable(
					viewAreaMode,
					viewablePercentThreshold,
					top,
					bottom,
					viewportHeight,
					(metrics :: Metrics).length
				)
			then
				table.insert(viewableIndices, idx)
			end
		elseif firstVisible >= 1 then
			break
		end
		idx_ += 1
	end
	return viewableIndices
end

--[[*
 * Figures out which items are viewable and how that has changed from before and calls
 * `onViewableItemsChanged` as appropriate.
 ]]
function ViewabilityHelper:onUpdate(
	itemCount: number,
	scrollOffset: number,
	viewportHeight: number,
	getFrameMetrics: (index: number) -> Metrics?,
	createViewToken: (index: number, isViewable: boolean) -> ViewToken,
	onViewableItemsChanged: (
		Object & {
			viewableItems: Array<ViewToken>,
			changed: Array<ViewToken>,
		}
	) -> (), -- Optional optimization to reduce the scan size
	renderRange: (Object & {
		first: number,
		last: number,
	})?
)
	if (self._config.waitForInteraction and not self._hasInteracted) or itemCount == 0 or not getFrameMetrics(1) then
		return
	end

	local viewableIndices = {} :: Array<number>
	if itemCount then
		viewableIndices =
			self:computeViewableItems(itemCount, scrollOffset, viewportHeight, getFrameMetrics, renderRange)
	end
	if
		#self._viewableIndices == #viewableIndices
		and Array.every(self._viewableIndices, function(v, ii)
			return v == viewableIndices[ii]
		end)
	then
		-- We might get a lot of scroll events where visibility doesn't change and we don't want to do
		-- extra work in those cases.
		return
	end
	self._viewableIndices = viewableIndices
	if self._config.minimumViewTime then
		local handle
		handle = setTimeout(function()
			--[[ $FlowFixMe[incompatible-call] (>=0.63.0 site=react_native_fb) This
         * comment suppresses an error found when Flow v0.63 was deployed. To
         * see the error delete this comment and run Flow. ]]
			self._timers:delete(handle)
			self:_onUpdateSync(viewableIndices, onViewableItemsChanged, createViewToken)
		end, self._config.minimumViewTime)
		--[[ $FlowFixMe[incompatible-call] (>=0.63.0 site=react_native_fb) This
       * comment suppresses an error found when Flow v0.63 was deployed. To see
       * the error delete this comment and run Flow. ]]
		self._timers:add(handle)
	else
		self:_onUpdateSync(viewableIndices, onViewableItemsChanged, createViewToken)
	end
end

function ViewabilityHelper:resetViewableIndices()
	self._viewableIndices = {}
end

function ViewabilityHelper:recordInteraction()
	self._hasInteracted = true
end

function ViewabilityHelper:_onUpdateSync(viewableIndicesToCheck, onViewableItemsChanged, createViewToken)
	-- Filter out indices that have gone out of view since this call was scheduled.
	viewableIndicesToCheck = Array.filter(viewableIndicesToCheck, function(ii)
		return Array.includes(self._viewableIndices, ii)
	end)
	local prevItems = self._viewableItems
	local nextItems = Map.new(Array.map(viewableIndicesToCheck, function(ii)
		local viewable = createViewToken(ii, true)
		return { viewable.key, viewable }
	end))
	local changed = {}
	for _, key in ipairs(nextItems:keys()) do
		if not prevItems:has(key) then
			table.insert(changed, nextItems:get(key))
		end
	end
	for _, key in ipairs(prevItems:keys()) do
		if not nextItems:has(key) then
			local viewable = prevItems:get(key)
			table.insert(changed, Object.assign({}, viewable, { isViewable = false }))
		end
	end
	if #changed > 0 then
		self._viewableItems = nextItems
		onViewableItemsChanged({
			viewableItems = Array.from(nextItems:values()),
			changed = changed,
			viewabilityConfig = self._config,
		})
	end
end

function _isViewable(
	viewAreaMode: boolean,
	viewablePercentThreshold: number,
	top: number,
	bottom: number,
	viewportHeight: number,
	itemLength: number
): boolean
	if _isEntirelyVisible(top, bottom, viewportHeight) then
		return true
	else
		local pixels = _getPixelsVisible(top, bottom, viewportHeight)
		local percent = 100 * if viewAreaMode then pixels / viewportHeight else pixels / itemLength
		return percent >= viewablePercentThreshold
	end
end

function _getPixelsVisible(top: number, bottom: number, viewportHeight: number): number
	local visibleHeight = math.min(bottom, viewportHeight) - math.max(top, 0)
	return math.max(0, visibleHeight)
end

function _isEntirelyVisible(top: number, bottom: number, viewportHeight: number): boolean
	return top >= 0 and bottom <= viewportHeight and bottom > top
end

return ViewabilityHelper

-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Lists/FillRateHelper.js
--[[**
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @flow
 * @format
 *]]
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local console = LuauPolyfill.console
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>

export type FillRateInfo = Info
type Info = {
	any_blank_count: number,
	any_blank_ms: number,
	any_blank_speed_sum: number,
	mostly_blank_count: number,
	mostly_blank_ms: number,
	pixels_blank: number,
	pixels_sampled: number,
	pixels_scrolled: number,
	total_time_spent: number,
	sample_count: number,
}

local Info = {}
Info.__index = Info
function Info.new(): Info
	local self = (setmetatable({}, Info) :: any) :: Info
	self.any_blank_count = 0
	self.any_blank_ms = 0
	self.any_blank_speed_sum = 0
	self.mostly_blank_count = 0
	self.mostly_blank_ms = 0
	self.pixels_blank = 0
	self.pixels_sampled = 0
	self.pixels_scrolled = 0
	self.total_time_spent = 0
	self.sample_count = 0
	return self
end

type FrameMetrics = {
	inLayout: boolean?,
	length: number,
	offset: number,
}
local DEBUG = false
local _listeners: Array<(Info) -> ()> = {}
local _minSampleCount = 10
local _sampleRate = if DEBUG then 1 else nil
--[[*
 * A helper class for detecting when the maximem fill rate of `VirtualizedList` is exceeded.
 * By default the sampling rate is set to zero and this will do nothing. If you want to collect
 * samples (e.g. to log them), make sure to call `FillRateHelper.setSampleRate(0.0-1.0)`.
 *
 * Listeners and sample rate are global for all `VirtualizedList`s - typical usage will combine with
 * `SceneTracker.getActiveScene` to determine the context of the events.
 ]]
export type FillRateHelper = {
	_anyBlankStartTime: number?,
	_enabled: boolean,
	_getFrameMetrics: (index: number) -> FrameMetrics?,
	_info: Info,
	_mostlyBlankStartTime: number?,
	_samplesStartTime: number?,
	activate: (self: FillRateHelper) -> (),
	deactivateAndFlush: (self: FillRateHelper) -> (),
	computeBlankness: (
		self: FillRateHelper,
		props: {
			data: any,
			getItemCount: (data: any) -> number,
		},
		state: {
			first: number,
			last: number,
		},
		scrollMetrics: {
			dOffset: number,
			offset: number,
			velocity: number,
			visibleLength: number,
		}
	) -> number,
	enabled: (self: FillRateHelper) -> boolean,
	_resetData: (self: FillRateHelper) -> (),
}
local FillRateHelper = {}
FillRateHelper.__index = FillRateHelper

function FillRateHelper.new(getFrameMetrics: (index: number) -> FrameMetrics?): FillRateHelper
	local self = (setmetatable({}, FillRateHelper) :: any) :: FillRateHelper
	self._anyBlankStartTime = nil
	self._enabled = false
	self._info = Info.new()
	self._mostlyBlankStartTime = nil
	self._samplesStartTime = nil
	self._getFrameMetrics = getFrameMetrics
	if _sampleRate then
		self._enabled = _sampleRate > math.random()
	else
		self._enabled = 0 > math.random()
	end
	self:_resetData()
	return self
end

function FillRateHelper.addListener(callback: (FillRateInfo) -> ())
	if _sampleRate == nil then
		console.warn("Call `FillRateHelper.setSampleRate` before `addListener`.")
	end
	table.insert(_listeners, callback)
	return {
		remove = function()
			_listeners = Array.filter(_listeners, function(listener)
				return callback ~= listener
			end)
		end,
	}
end

function FillRateHelper.setSampleRate(sampleRate: number)
	_sampleRate = sampleRate
end

function FillRateHelper.setMinSampleCount(minSampleCount: number)
	_minSampleCount = minSampleCount
end

function FillRateHelper:activate()
	if self._enabled and self._samplesStartTime == nil then
		if DEBUG then
			console.debug("FillRateHelper: activate")
		end
		self._samplesStartTime = os.clock()
	end
end

function FillRateHelper.deactivateAndFlush(self: FillRateHelper)
	if not self._enabled then
		return
	end
	local start = self._samplesStartTime -- const for flow
	if start == nil then
		if DEBUG then
			console.debug("FillRateHelper: bail on deactivate with no start time")
		end
		return
	end
	if self._info.sample_count < _minSampleCount then
		-- Don't bother with under-sampled events.
		self:_resetData()
		return
	end
	local total_time_spent = os.clock() - (start :: number)
	local info: any = Object.assign({}, self._info, { total_time_spent = total_time_spent })
	if DEBUG then
		local derived = {
			avg_blankness = self._info.pixels_blank / self._info.pixels_sampled,
			avg_speed = self._info.pixels_scrolled / (total_time_spent / 1000),
			avg_speed_when_any_blank = self._info.any_blank_speed_sum / self._info.any_blank_count,
			any_blank_per_min = self._info.any_blank_count / (total_time_spent / 1000 / 60),
			any_blank_time_frac = self._info.any_blank_ms / total_time_spent,
			mostly_blank_per_min = self._info.mostly_blank_count / (total_time_spent / 1000 / 60),
			mostly_blank_time_frac = self._info.mostly_blank_ms / total_time_spent,
		}
		for key, _ in pairs(derived) do
			derived[key] = math.round(1000 * derived[key]) / 1000
		end
		console.debug("FillRateHelper deactivateAndFlush: ", { derived = derived, info = info })
	end
	Array.forEach(_listeners, function(listener)
		return listener(info)
	end)
	self:_resetData()
end

function FillRateHelper.computeBlankness(
	self: FillRateHelper,
	props: {
		data: any,
		getItemCount: (data: any) -> number,
		initialNumToRender: number?,
	},
	state: {
		first: number,
		last: number,
	},
	scrollMetrics: {
		dOffset: number,
		offset: number,
		velocity: number,
		visibleLength: number,
	}
): number
	if not self._enabled or props.getItemCount(props.data) == 0 or self._samplesStartTime == nil then
		return 0
	end
	local dOffset, offset, velocity, visibleLength =
		scrollMetrics.dOffset, scrollMetrics.offset, scrollMetrics.velocity, scrollMetrics.visibleLength

	-- Denominator metrics that we track for all events - most of the time there is no blankness and
	-- we want to capture that.
	self._info.sample_count += 1
	self._info.pixels_sampled += math.round(visibleLength)
	self._info.pixels_scrolled += math.round(math.abs(dOffset or 0))
	local scrollSpeed = math.round(math.abs(velocity or 0) * 1000) -- px / sec

	-- Whether blank now or not, record the elapsed time blank if we were blank last time.
	local now = os.clock() * 1000
	if self._anyBlankStartTime ~= nil then
		self._info.any_blank_ms += now - self._anyBlankStartTime
	end
	self._anyBlankStartTime = nil
	if self._mostlyBlankStartTime ~= nil then
		self._info.mostly_blank_ms += now - self._mostlyBlankStartTime
	end
	self._mostlyBlankStartTime = nil

	local blankTop = 0
	-- ROBLOX FIXME Luau: needs normalization - state.first is known to be of type `number`
	local first: number = state.first
	local firstFrame = self._getFrameMetrics(first)
	while first <= state.last and (not firstFrame or not firstFrame.inLayout) do
		firstFrame = self._getFrameMetrics(first)
		first += 1
	end
	-- Only count blankTop if we aren't rendering the first item, otherwise we will count the header
	-- as blank.
	if firstFrame and first > 1 then
		blankTop = math.min(visibleLength, math.max(0, firstFrame.offset - offset))
	end
	local blankBottom = 0
	-- ROBLOX FIXME Luau: needs normalization - state.last is known to be of type `number`
	local last: number = state.last
	local lastFrame = self._getFrameMetrics(last)
	while last >= state.first and (not lastFrame or not lastFrame.inLayout) do
		lastFrame = self._getFrameMetrics(last)
		last -= 1
	end
	-- Only count blankBottom if we aren't rendering the last item, otherwise we will count the
	-- footer as blank.
	if lastFrame and last < props.getItemCount(props.data) then --ROBLOX deviation: index starts at 1
		local bottomEdge = lastFrame.offset + lastFrame.length
		blankBottom = math.min(visibleLength, math.max(0, offset + visibleLength - bottomEdge))
	end
	local pixels_blank = math.round(blankTop + blankBottom)
	local blankness = pixels_blank / visibleLength
	if blankness > 0 then
		self._anyBlankStartTime = now
		self._info.any_blank_speed_sum += scrollSpeed
		self._info.any_blank_count += 1
		self._info.pixels_blank += pixels_blank
		if blankness > 0.5 then
			self._mostlyBlankStartTime = now
			self._info.mostly_blank_count += 1
		end
	elseif scrollSpeed < 0.01 or math.abs(dOffset or 0) < 1 then
		self:deactivateAndFlush()
	end
	return blankness
end

function FillRateHelper:enabled()
	return self._enabled
end

function FillRateHelper:_resetData()
	self._anyBlankStartTime = nil
	self._info = Info.new()
	self._mostlyBlankStartTime = nil
	self._samplesStartTime = nil
end

return FillRateHelper

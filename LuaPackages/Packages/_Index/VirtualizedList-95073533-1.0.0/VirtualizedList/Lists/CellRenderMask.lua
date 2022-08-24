-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Lists/CellRenderMask.js
--[[*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @flow strict
 * @format
 ]]
local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local exports = {}

type Array<T> = LuauPolyfill.Array<T>
local invariant = require(srcWorkspace.jsUtils.invariant)
export type CellRegion = {
	first: number,
	last: number,
	isSpacer: boolean,
}
export type CellRenderMask = {
	_numCells: number,
	_regions: Array<CellRegion>,
	enumerateRegions: (self: CellRenderMask) -> Array<CellRegion>,
	addCells: (self: CellRenderMask, cells: { first: number, last: number }) -> (),
	equals: (self: CellRenderMask, other: CellRenderMask) -> boolean,
	_findRegion: (self: CellRenderMask, cellIdx: number) -> (CellRegion?, number?),
}
local CellRenderMask = {}
CellRenderMask.__index = CellRenderMask

function CellRenderMask.new(numCells: number): CellRenderMask
	local self = (setmetatable({}, CellRenderMask) :: any) :: CellRenderMask
	invariant(numCells >= 0, "CellRenderMask must contain a non-negative number os cells")
	self._numCells = numCells
	if numCells == 0 then
		self._regions = {}
	else
		self._regions = { { first = 0, last = numCells - 1, isSpacer = true } }
	end
	return self
end
function CellRenderMask:enumerateRegions(): Array<CellRegion>
	return self._regions
end
function CellRenderMask:addCells(cells: {
	first: number,
	last: number,
})
	invariant(
		cells.first >= 0
			and cells.first < self._numCells
			and cells.last >= 0
			and cells.last < self._numCells
			and cells.last >= cells.first,
		"CellRenderMask.addCells called with invalid cell range"
	)
	local firstIntersect: CellRegion, firstIntersectIdx: number = self:_findRegion(cells.first)
	local lastIntersect: CellRegion, lastIntersectIdx: number = self:_findRegion(cells.last)
	-- Fast-path if the cells to add are already all present in the mask. We
	-- will otherwise need to do some mutation.
	if firstIntersectIdx == lastIntersectIdx and not firstIntersect.isSpacer then
		return
	end
	-- We need to replace the existing covered regions with 1-3 new regions
	-- depending whether we need to split spacers out of overlapping regions.
	local newLeadRegion: Array<CellRegion> = {}
	local newTailRegion: Array<CellRegion> = {}
	local newMainRegion: CellRegion = Object.assign({}, cells, { isSpacer = false })
	if firstIntersect.first < newMainRegion.first then
		if firstIntersect.isSpacer then
			table.insert(
				newLeadRegion,
				{ first = firstIntersect.first, last = newMainRegion.first - 1, isSpacer = true }
			)
		else
			newMainRegion.first = firstIntersect.first
		end
	end
	if lastIntersect.last > newMainRegion.last then
		if lastIntersect.isSpacer then
			table.insert(newTailRegion, { first = newMainRegion.last + 1, last = lastIntersect.last, isSpacer = true })
		else
			newMainRegion.last = lastIntersect.last
		end
	end
	local replacementRegions: Array<CellRegion> = Array.concat(newLeadRegion, { newMainRegion }, newTailRegion)
	local numRegionsToDelete = lastIntersectIdx - firstIntersectIdx + 1
	Array.splice(self._regions, firstIntersectIdx, numRegionsToDelete, table.unpack(replacementRegions))
end
function CellRenderMask:equals(other: CellRenderMask): boolean
	return self._numCells == other._numCells
		and #self._regions == #other._regions
		and Array.every(self._regions, function(region, i)
			return region.first == other._regions[i].first
				and region.last == other._regions[i].last
				and region.isSpacer == other._regions[i].isSpacer
		end)
end
-- ROBLOX DEVIATION: return two values instead of an array of two values to allow better typing
function CellRenderMask:_findRegion(cellIdx: number): (CellRegion?, number?)
	local firstIdx = 1
	local lastIdx = #self._regions
	while firstIdx <= lastIdx do
		local middleIdx = math.floor((firstIdx + lastIdx) / 2)
		local middleRegion = self._regions[middleIdx]
		if cellIdx >= middleRegion.first and cellIdx <= middleRegion.last then
			return middleRegion, middleIdx
		elseif cellIdx < middleRegion.first then
			lastIdx = middleIdx - 1
		elseif cellIdx > middleRegion.last then
			firstIdx = middleIdx + 1
		end
	end
	invariant(false, string.format("A region was not found containing cellIdx %s", tostring(cellIdx)))
	return nil, nil
end
exports.CellRenderMask = CellRenderMask
return exports

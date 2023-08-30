--!nonstrict
-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/diff-sequences/src/index.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  *
--  */
local CurrentModule = script
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Number = LuauPolyfill.Number
type Array<T> = LuauPolyfill.Array<T>

-- This diff-sequences package implements the linear space variation in
-- An O(ND) Difference Algorithm and Its Variations by Eugene W. Myers

-- Relationship in notation between Myers paper and this package:
-- A is a
-- N is aLength, aEnd - aStart, and so on
-- x is aIndex, aFirst, aLast, and so on
-- B is b
-- M is bLength, bEnd - bStart, and so on
-- y is bIndex, bFirst, bLast, and so on
-- Δ = N - M is negative of baDeltaLength = bLength - aLength
-- D is d
-- k is kF
-- k + Δ is kF = kR - baDeltaLength
-- V is aIndexesF or aIndexesR (see comment below about Indexes type)
-- index intervals [1, N] and [1, M] are [0, aLength) and [0, bLength)
-- starting point in forward direction (0, 0) is (-1, -1)
-- starting point in reverse direction (N + 1, M + 1) is (aLength, bLength)

-- The “edit graph” for sequences a and b corresponds to items:
-- in a on the horizontal axis
-- in b on the vertical axis
--
-- Given a-coordinate of a point in a diagonal, you can compute b-coordinate.
--
-- Forward diagonals kF:
-- zero diagonal intersects top left corner
-- positive diagonals intersect top edge
-- negative diagonals insersect left edge
--
-- Reverse diagonals kR:
-- zero diagonal intersects bottom right corner
-- positive diagonals intersect right edge
-- negative diagonals intersect bottom edge

-- The graph contains a directed acyclic graph of edges:
-- horizontal: delete an item from a
-- vertical: insert an item from b
-- diagonal: common item in a and b
--
-- The algorithm solves dual problems in the graph analogy:
-- Find longest common subsequence: path with maximum number of diagonal edges
-- Find shortest edit script: path with minimum number of non-diagonal edges

-- Input callback function compares items at indexes in the sequences.
type IsCommon = (
	number, -- caller can assume: 0 <= aIndex && aIndex < aLength
	number -- caller can assume: 0 <= bIndex && bIndex < bLength
) -> boolean

-- Output callback function receives the number of adjacent items
-- and starting indexes of each common subsequence.
type FoundSubsequence = (
	number, -- caller can assume: 0 < nCommon
	number, -- caller can assume: 0 <= aCommon && aCommon < aLength
	number -- caller can assume: 0 <= bCommon && bCommon < bLength
) -> ()

-- ROBLOX deviation: omitted since Luau doesn't have mixed type arrays
-- Either original functions or wrapped to swap indexes if graph is transposed.
-- export type Callbacks = {
-- 	FoundSubsequence;
-- 	IsCommon;
-- };
export type Callbacks = Array<any>

-- Indexes in sequence a of last point of forward or reverse paths in graph.
-- Myers algorithm indexes by diagonal k which for negative is bad deopt in V8.
-- This package indexes by iF and iR which are greater than or equal to zero.
-- and also updates the index arrays in place to cut memory in half.
-- kF = 2 * iF - d
-- kR = d - 2 * iR
type Indexes = Array<number>

-- Division of index intervals in sequences a and b at the middle change.
-- Invariant: intervals do not have common items at the start or end.
type Division = {
	-- The end of interval preceding division is open like array slice method.
	nChangePreceding: number, -- number of change items
	aEndPreceding: number,
	bEndPreceding: number,

	nCommonPreceding: number, -- 0 if no common items preceding middle change
	aCommonPreceding: number, -- ignore prop value if nCommonPreceding === 0
	bCommonPreceding: number, -- ignore prop value if nCommonPreceding === 0

	nCommonFollowing: number, -- 0 if no common items following middle change
	aCommonFollowing: number, -- ignore prop value if nCommonFollowing === 0
	bCommonFollowing: number, -- ignore prop value if nCommonFollowing === 0

	-- The start of interval following division is closed like array slice method.
	nChangeFollowing: number, -- number of change items
	aStartFollowing: number,
	bStartFollowing: number,
}

local pkg = "diff-sequences" -- for error messages
local NOT_YET_SET = 0 -- small int instead of undefined to avoid deopt in V8

-- Return the number of common items that follow in forward direction.
-- The length of what Myers paper calls a “snake” in a forward path.
local function countCommonItemsF(aIndex: number, aEnd: number, bIndex: number, bEnd: number, isCommon: IsCommon): number
	local nCommon = 0
	while aIndex < aEnd and bIndex < bEnd and isCommon(aIndex, bIndex) do
		aIndex += 1
		bIndex += 1
		nCommon += 1
	end
	return nCommon
end

-- Return the number of common items that precede in reverse direction.
-- The length of what Myers paper calls a “snake” in a reverse path.
local function countCommonItemsR(
	aStart: number,
	aIndex: number,
	bStart: number,
	bIndex: number,
	isCommon: IsCommon
): number
	local nCommon = 0
	while aStart <= aIndex and bStart <= bIndex and isCommon(aIndex, bIndex) do
		aIndex = aIndex - 1
		bIndex = bIndex - 1
		nCommon = nCommon + 1
	end
	return nCommon
end

-- A simple function to extend forward paths from (d - 1) to d changes
-- when forward and reverse paths cannot yet overlap.
local function extendPathsF(
	d: number,
	aEnd: number,
	bEnd: number,
	bF: number,
	isCommon: IsCommon,
	aIndexesF: Indexes,
	iMaxF: number
): number
	-- Unroll the first iteration.
	local iF = 0
	local kF = -d -- kF = 2 * iF - d
	-- ROBLOX FIXME? should the values inserted into aIndexesF be 1-based so we don't have to adjust in several places here?
	local aFirst = aIndexesF[iF + 1] -- in first iteration always insert
	local aIndexPrev1 = aFirst -- prev value of [iF - 1] in next iteration
	aIndexesF[iF + 1] += countCommonItemsF(aFirst + 1, aEnd, bF + aFirst - kF + 1, bEnd, isCommon)

	-- Optimization: skip diagonals in which paths cannot ever overlap.
	local nF = d < iMaxF and d or iMaxF

	-- The diagonals kF are odd when d is odd and even when d is even.
	iF += 1
	kF += 2
	while iF <= nF do
		-- To get first point of path segment, move one change in forward direction
		-- from last point of previous path segment in an adjacent diagonal.
		-- In last possible iteration when iF === d and kF === d always delete.
		-- ROBLOX deviation: add one to index for Lua 1-based arrays
		if iF ~= d and aIndexPrev1 < aIndexesF[iF + 1] then
			aFirst = aIndexesF[iF + 1] -- vertical to insert from b
		else
			aFirst = aIndexPrev1 + 1 -- horizontal to delete from a

			if aEnd <= aFirst then
				-- Optimization: delete moved past right of graph.
				return iF - 1
			end
		end

		-- To get last point of path segment, move along diagonal of common items.
		-- ROBLOX deviation: add one to index for Lua 1-based arrays
		aIndexPrev1 = aIndexesF[iF + 1]
		aIndexesF[iF + 1] = aFirst + countCommonItemsF(aFirst + 1, aEnd, bF + aFirst - kF + 1, bEnd, isCommon)

		iF += 1
		kF += 2
	end

	return iMaxF
end

-- A simple function to extend reverse paths from (d - 1) to d changes
-- when reverse and forward paths cannot yet overlap.
local function extendPathsR(
	d: number,
	aStart: number,
	bStart: number,
	bR: number,
	isCommon: IsCommon,
	aIndexesR: Indexes,
	iMaxR: number
): number
	-- Unroll the first iteration.
	local iR = 0
	local kR = d -- kR = d - 2 * iR
	-- ROBLOX FIXME? should the values inserted into aIndexesR be 1-based so we don't have to adjust in several places here?
	local aFirst = aIndexesR[iR + 1] -- in first iteration always insert
	local aIndexPrev1 = aFirst -- prev value of [iR - 1] in next iteration
	aIndexesR[iR + 1] -= countCommonItemsR(aStart, aFirst - 1, bStart, bR + aFirst - kR - 1, isCommon)

	-- Optimization: skip diagonals in which paths cannot ever overlap.
	local nR = d < iMaxR and d or iMaxR

	-- The diagonals kR are odd when d is odd and even when d is even.
	iR += 1
	kR -= 2
	while iR <= nR do
		-- To get first point of path segment, move one change in reverse direction
		-- from last point of previous path segment in an adjacent diagonal.
		-- In last possible iteration when iR === d and kR === -d always delete.
		if iR ~= d and aIndexesR[iR + 1] < aIndexPrev1 then
			aFirst = aIndexesR[iR + 1] -- vertical to insert from b
		else
			aFirst = aIndexPrev1 - 1 -- horizontal to delete from a

			if aFirst < aStart then
				-- Optimization: delete moved past left of graph.
				return iR - 1
			end
		end

		-- To get last point of path segment, move along diagonal of common items.
		aIndexPrev1 = aIndexesR[iR + 1]
		aIndexesR[iR + 1] = aFirst - countCommonItemsR(aStart, aFirst - 1, bStart, bR + aFirst - kR - 1, isCommon)
		iR += 1
		kR -= 2
	end

	return iMaxR
end

-- A complete function to extend forward paths from (d - 1) to d changes.
-- Return true if a path overlaps reverse path of (d - 1) changes in its diagonal.
local function extendOverlappablePathsF(
	d: number,
	aStart: number,
	aEnd: number,
	bStart: number,
	bEnd: number,
	isCommon: IsCommon,
	aIndexesF: Indexes, -- update indexes in sequence a of paths in diagonals kF
	iMaxF: number,
	aIndexesR: Indexes,
	iMaxR: number,
	division: Division -- update prop values if return true
): boolean
	local bF = bStart - aStart -- bIndex = bF + aIndex - kF
	local aLength = aEnd - aStart
	local bLength = bEnd - bStart
	local baDeltaLength = bLength - aLength -- kF = kR + baDeltaLength

	-- Range of diagonals in which forward and reverse paths might overlap.
	local kMinOverlapF = -baDeltaLength - (d - 1) -- -(d - 1) <= kR
	local kMaxOverlapF = -baDeltaLength + (d - 1) -- kR <= (d - 1)

	local aIndexPrev1 = 0 -- prev value of [iF - 1] in next iteration

	-- Optimization: skip diagonals in which paths cannot ever overlap.
	local nF = d < iMaxF and d or iMaxF

	-- The diagonals kF = 2 * iF - d are odd when d is odd and even when d is even.
	-- ROBLOX FIXME? why aren't we just starting iF at 1?
	local iF = 0
	local kF: number = -d
	while iF <= nF do
		-- To get first point of path segment, move one change in forward direction
		-- from last point of previous path segment in an adjacent diagonal.
		-- In first iteration when iF === 0 and kF === -d always insert.
		-- In last possible iteration when iF === d and kF === d always delete.
		local insert = iF == 0 or (iF ~= d and aIndexPrev1 < aIndexesF[iF + 1])
		-- ROBLOX FIXME? should the values inserted into aIndexesF be 1-based so we don't have to adjust in several places here?
		local aLastPrev = insert and aIndexesF[iF + 1] or aIndexPrev1
		local aFirst: number = insert and aLastPrev -- vertical to insert from b
			or aLastPrev + 1 -- horizontal to delete from a

		-- To get last point of path segment, move along diagonal of common items.
		local bFirst = bF + aFirst - kF
		local nCommonF = countCommonItemsF(aFirst + 1, aEnd, bFirst + 1, bEnd, isCommon)
		local aLast = aFirst + nCommonF

		aIndexPrev1 = aIndexesF[iF + 1]
		aIndexesF[iF + 1] = aLast

		if kMinOverlapF <= kF and kF <= kMaxOverlapF then
			-- Solve for iR of reverse path with (d - 1) changes in diagonal kF:
			-- kR = kF + baDeltaLength
			-- kR = (d - 1) - 2 * iR
			local iR = (d - 1 - (kF + baDeltaLength)) / 2

			-- If this forward path overlaps the reverse path in this diagonal,
			-- then this is the middle change of the index intervals.
			if iR <= iMaxR and aIndexesR[iR + 1] - 1 <= aLast then
				-- Unlike the Myers algorithm which finds only the middle “snake”
				-- this package can find two common subsequences per division.
				-- Last point of previous path segment is on an adjacent diagonal.
				local bLastPrev = bF + aLastPrev - (insert and kF + 1 or kF - 1)

				-- Because of invariant that intervals preceding the middle change
				-- cannot have common items at the end,
				-- move in reverse direction along a diagonal of common items.
				local nCommonR = countCommonItemsR(aStart, aLastPrev, bStart, bLastPrev, isCommon)

				local aIndexPrevFirst = aLastPrev - nCommonR
				local bIndexPrevFirst = bLastPrev - nCommonR

				local aEndPreceding = aIndexPrevFirst + 1
				local bEndPreceding = bIndexPrevFirst + 1

				division.nChangePreceding = d - 1
				if d - 1 == aEndPreceding + bEndPreceding - aStart - bStart then
					-- Optimization: number of changes in reverse direction
					-- is equal to number of items in preceding interval,
					-- therefore it cannot contain any common items.
					division.aEndPreceding = aStart
					division.bEndPreceding = bStart
				else
					division.aEndPreceding = aEndPreceding
					division.bEndPreceding = bEndPreceding
				end

				division.nCommonPreceding = nCommonR
				if nCommonR ~= 0 then
					division.aCommonPreceding = aEndPreceding
					division.bCommonPreceding = bEndPreceding
				end

				division.nCommonFollowing = nCommonF
				if nCommonF ~= 0 then
					division.aCommonFollowing = aFirst + 1
					division.bCommonFollowing = bFirst + 1
				end

				local aStartFollowing = aLast + 1
				local bStartFollowing = bFirst + nCommonF + 1

				division.nChangeFollowing = d - 1
				if d - 1 == aEnd + bEnd - aStartFollowing - bStartFollowing then
					-- Optimization: number of changes in reverse direction
					-- is equal to number of items in following interval,
					-- therefore it cannot contain any common items.
					division.aStartFollowing = aEnd
					division.bStartFollowing = bEnd
				else
					division.aStartFollowing = aStartFollowing
					division.bStartFollowing = bStartFollowing
				end

				return true
			end
		end
		iF = iF + 1
		kF = kF + 2
	end

	return false
end

-- A complete function to extend reverse paths from (d - 1) to d changes.
-- Return true if a path overlaps forward path of d changes in its diagonal.
local function extendOverlappablePathsR(
	d: number,
	aStart: number,
	aEnd: number,
	bStart: number,
	bEnd: number,
	isCommon: IsCommon,
	aIndexesF: Indexes,
	iMaxF: number,
	aIndexesR: Indexes, -- update indexes in sequence a of paths in diagonals kR
	iMaxR: number,
	division: Division -- update prop values if return true
): boolean
	local bR = bEnd - aEnd -- bIndex = bR + aIndex - kR
	local aLength = aEnd - aStart
	local bLength = bEnd - bStart
	local baDeltaLength = bLength - aLength -- kR = kF + baDeltaLength

	-- Range of diagonals in which forward and reverse paths might overlap.
	local kMinOverlapR = baDeltaLength - d -- -d <= kF
	local kMaxOverlapR = baDeltaLength + d -- kF <= d

	local aIndexPrev1 = NOT_YET_SET -- prev value of [iR - 1] in next iteration

	-- Optimization: skip diagonals in which paths cannot ever overlap.
	local nR = d < iMaxR and d or iMaxR

	-- The diagonals kR = d - 2 * iR are odd when d is odd and even when d is even.
	local iR = 0
	local kR = d
	while iR <= nR do
		-- To get first point of path segment, move one change in reverse direction
		-- from last point of previous path segment in an adjacent diagonal.
		-- In first iteration when iR === 0 and kR === d always insert.
		-- In last possible iteration when iR === d and kR === -d always delete.
		-- ROBLOX FIXME? should the values inserted into aIndexesF be 1-based so we don't have to adjust in several places here?
		local insert = iR == 0 or (iR ~= d and aIndexesR[iR + 1] < aIndexPrev1)
		local aLastPrev = insert and aIndexesR[iR + 1] or aIndexPrev1
		local aFirst: number = insert and aLastPrev -- vertical to insert from b
			or aLastPrev - 1 -- horizontal to delete from a

		-- To get last point of path segment, move along diagonal of common items.
		local bFirst = bR + aFirst - kR
		local nCommonR = countCommonItemsR(aStart, aFirst - 1, bStart, bFirst - 1, isCommon)
		local aLast = aFirst - nCommonR

		aIndexPrev1 = aIndexesR[iR + 1]
		aIndexesR[iR + 1] = aLast

		if kMinOverlapR <= kR and kR <= kMaxOverlapR then
			-- Solve for iF of forward path with d changes in diagonal kR:
			-- kF = kR - baDeltaLength
			-- kF = 2 * iF - d
			local iF = (d + (kR - baDeltaLength)) / 2

			-- If this reverse path overlaps the forward path in this diagonal,
			-- then this is a middle change of the index intervals.
			if iF <= iMaxF and aLast - 1 <= aIndexesF[iF + 1] then
				local bLast = bFirst - nCommonR

				division.nChangePreceding = d
				if d == aLast + bLast - aStart - bStart then
					-- Optimization: number of changes in reverse direction
					-- is equal to number of items in preceding interval,
					-- therefore it cannot contain any common items.
					division.aEndPreceding = aStart
					division.bEndPreceding = bStart
				else
					division.aEndPreceding = aLast
					division.bEndPreceding = bLast
				end

				division.nCommonPreceding = nCommonR
				if nCommonR ~= 0 then
					-- The last point of reverse path segment is start of common subsequence.
					division.aCommonPreceding = aLast
					division.bCommonPreceding = bLast
				end

				division.nChangeFollowing = d - 1
				if d == 1 then
					-- There is no previous path segment.
					division.nCommonFollowing = 0
					division.aStartFollowing = aEnd
					division.bStartFollowing = bEnd
				else
					-- Unlike the Myers algorithm which finds only the middle “snake”
					-- this package can find two common subsequences per division.
					-- Last point of previous path segment is on an adjacent diagonal.
					local bLastPrev = bR + aLastPrev - (insert and kR - 1 or kR + 1)

					-- Because of invariant that intervals following the middle change
					-- cannot have common items at the start,
					-- move in forward direction along a diagonal of common items.
					local nCommonF = countCommonItemsF(aLastPrev, aEnd, bLastPrev, bEnd, isCommon)

					division.nCommonFollowing = nCommonF
					if nCommonF ~= 0 then
						-- The last point of reverse path segment is start of common subsequence.
						division.aCommonFollowing = aLastPrev
						division.bCommonFollowing = bLastPrev
					end

					local aStartFollowing = aLastPrev + nCommonF -- aFirstPrev
					local bStartFollowing = bLastPrev + nCommonF -- bFirstPrev

					if d - 1 == aEnd + bEnd - aStartFollowing - bStartFollowing then
						-- Optimization: number of changes in forward direction
						-- is equal to number of items in following interval,
						-- therefore it cannot contain any common items.
						division.aStartFollowing = aEnd
						division.bStartFollowing = bEnd
					else
						division.aStartFollowing = aStartFollowing
						division.bStartFollowing = bStartFollowing
					end
				end

				return true
			end
		end
		iR += 1
		kR -= 2
	end

	return false
end

-- Given index intervals and input function to compare items at indexes,
-- divide at the middle change.
--
-- DO NOT CALL if start === end, because interval cannot contain common items
-- and because this function will throw the “no overlap” error.
local function divide(
	nChange: number,
	aStart: number,
	aEnd: number,
	bStart: number,
	bEnd: number,
	isCommon: IsCommon,
	aIndexesF: Indexes, -- temporary memory, not input nor output
	aIndexesR: Indexes, -- temporary memory, not input nor output
	division: Division -- output
): ()
	local bF = bStart - aStart -- bIndex = bF + aIndex - kF
	local bR = bEnd - aEnd -- bIndex = bR + aIndex - kR
	local aLength = aEnd - aStart
	local bLength = bEnd - bStart

	-- Because graph has square or portrait orientation,
	-- length difference is minimum number of items to insert from b.
	-- Corresponding forward and reverse diagonals in graph
	-- depend on length difference of the sequences:
	-- kF = kR - baDeltaLength
	-- kR = kF + baDeltaLength
	local baDeltaLength = bLength - aLength

	-- Optimization: max diagonal in graph intersects corner of shorter side.
	local iMaxF = aLength
	local iMaxR = aLength

	-- Initialize no changes yet in forward or reverse direction:
	aIndexesF[1] = aStart - 1 -- at open start of interval, outside closed start
	aIndexesR[1] = aEnd -- at open end of interval

	if baDeltaLength % 2 == 0 then
		-- The number of changes in paths is 2 * d if length difference is even.
		-- ROBLOX deviation: lua treats 0 as a true value
		local dMin = (nChange ~= 0 and nChange or baDeltaLength) / 2
		local dMax = (aLength + bLength) / 2

		for d = 1, dMax do
			iMaxF = extendPathsF(d, aEnd, bEnd, bF, isCommon, aIndexesF, iMaxF)

			if d < dMin then
				iMaxR = extendPathsR(d, aStart, bStart, bR, isCommon, aIndexesR, iMaxR)
				-- If a reverse path overlaps a forward path in the same diagonal,
				-- return a division of the index intervals at the middle change.
			elseif
				extendOverlappablePathsR(
					d,
					aStart,
					aEnd,
					bStart,
					bEnd,
					isCommon,
					aIndexesF,
					iMaxF,
					aIndexesR,
					iMaxR,
					division
				)
			then
				return
			end
		end
	else
		-- The number of changes in paths is 2 * d - 1 if length difference is odd.
		local dMin = ((nChange ~= 0 and nChange or baDeltaLength) + 1) / 2
		local dMax = (aLength + bLength + 1) / 2

		-- Unroll first half iteration so loop extends the relevant pairs of paths.
		-- Because of invariant that intervals have no common items at start or end,
		-- and limitation not to call divide with empty intervals,
		-- therefore it cannot be called if a forward path with one change
		-- would overlap a reverse path with no changes, even if dMin === 1.
		local d = 1
		iMaxF = extendPathsF(d, aEnd, bEnd, bF, isCommon, aIndexesF, iMaxF)

		d = d + 1
		while d <= dMax do
			iMaxR = extendPathsR(d - 1, aStart, bStart, bR, isCommon, aIndexesR, iMaxR)

			if d < dMin then
				iMaxF = extendPathsF(d, aEnd, bEnd, bF, isCommon, aIndexesF, iMaxF)
				-- If a forward path overlaps a reverse path in the same diagonal,
				-- return a division of the index intervals at the middle change.
			elseif
				extendOverlappablePathsF(
					d,
					aStart,
					aEnd,
					bStart,
					bEnd,
					isCommon,
					aIndexesF,
					iMaxF,
					aIndexesR,
					iMaxR,
					division
				)
			then
				return
			end
			d = d + 1
		end
	end

	error(string.format("%s: no overlap aStart=%i aEnd=%i bStart=%i bEnd=%i", pkg, aStart, aEnd, bStart, bEnd))
end

-- Given index intervals and input function to compare items at indexes,
-- return by output function the number of adjacent items and starting indexes
-- of each common subsequence. Divide and conquer with only linear space.
--
-- The index intervals are half open [start, end) like array slice method.
-- DO NOT CALL if start === end, because interval cannot contain common items
-- and because divide function will throw the “no overlap” error.
local function findSubsequences(
	nChange: number,
	aStart: number,
	aEnd: number,
	bStart: number,
	bEnd: number,
	transposed: boolean,
	callbacks,
	aIndexesF: Indexes, -- temporary memory, not input nor output
	aIndexesR: Indexes, -- temporary memory, not input nor output
	division: Division -- temporary memory, not input nor output
): ()
	if bEnd - bStart < aEnd - aStart then
		-- Transpose graph so it has portrait instead of landscape orientation.
		-- Always compare shorter to longer sequence for consistency and optimization.
		transposed = not transposed
		if transposed and #callbacks == 1 then
			-- Lazily wrap callback functions to swap args if graph is transposed.
			local foundSubsequence, isCommon = unpack(callbacks[1])
			callbacks[2] = {
				function(nCommon, bCommon, aCommon)
					return foundSubsequence(nCommon, aCommon, bCommon)
				end,
				function(bIndex, aIndex)
					return isCommon(aIndex, bIndex)
				end,
			}
		end

		local tStart = aStart
		local tEnd = aEnd
		aStart = bStart
		aEnd = bEnd
		bStart = tStart
		bEnd = tEnd
	end
	local foundSubsequence, isCommon = unpack(callbacks[transposed and 2 or 1])

	-- Divide the index intervals at the middle change.
	divide(nChange, aStart, aEnd, bStart, bEnd, isCommon, aIndexesF, aIndexesR, division)
	local nChangePreceding = division.nChangePreceding
	local aEndPreceding = division.aEndPreceding
	local bEndPreceding = division.bEndPreceding
	local nCommonPreceding = division.nCommonPreceding
	local aCommonPreceding = division.aCommonPreceding
	local bCommonPreceding = division.bCommonPreceding
	local nCommonFollowing = division.nCommonFollowing
	local aCommonFollowing = division.aCommonFollowing
	local bCommonFollowing = division.bCommonFollowing
	local nChangeFollowing = division.nChangeFollowing
	local aStartFollowing = division.aStartFollowing
	local bStartFollowing = division.bStartFollowing

	-- Unless either index interval is empty, they might contain common items.
	if aStart < aEndPreceding and bStart < bEndPreceding then
		-- Recursely find and return common subsequences preceding the division.
		findSubsequences(
			nChangePreceding,
			aStart,
			aEndPreceding,
			bStart,
			bEndPreceding,
			transposed,
			callbacks,
			aIndexesF,
			aIndexesR,
			division
		)
	end

	-- Return common subsequences that are adjacent to the middle change.
	if nCommonPreceding ~= 0 then
		foundSubsequence(nCommonPreceding, aCommonPreceding, bCommonPreceding)
	end
	if nCommonFollowing ~= 0 then
		foundSubsequence(nCommonFollowing, aCommonFollowing, bCommonFollowing)
	end

	-- Unless either index interval is empty, they might contain common items.
	if aStartFollowing < aEnd and bStartFollowing < bEnd then
		-- Recursely find and return common subsequences following the division.
		findSubsequences(
			nChangeFollowing,
			aStartFollowing,
			aEnd,
			bStartFollowing,
			bEnd,
			transposed,
			callbacks,
			aIndexesF,
			aIndexesR,
			division
		)
	end
end

local function validateLength(name: string, arg: any): ()
	if typeof(arg) ~= "number" then
		error(string.format("%s: %s type %s is not a number", pkg, name, type(arg)))
	end
	if not Number.isSafeInteger(arg) then
		error(string.format("%s: %s type %s is not a safe integer", pkg, name, type(arg)))
	end
	if arg < 0 then
		error(string.format("%s: %s type %s is a negative integer", pkg, name, type(arg)))
	end
end

local function validateCallback(name: string, arg: any): ()
	if typeof(arg) ~= "function" then
		error(string.format("%s: %s type %s is not a function", pkg, name, type(arg)))
	end
end

-- Compare items in two sequences to find a longest common subsequence.
-- Given lengths of sequences and input function to compare items at indexes,
-- return by output function the number of adjacent items and starting indexes
-- of each common subsequence.
return function(aLength: number, bLength: number, isCommon: IsCommon, foundSubsequence: FoundSubsequence): ()
	validateLength("aLength", aLength)
	validateLength("bLength", bLength)
	validateCallback("isCommon", isCommon)
	validateCallback("foundSubsequence", foundSubsequence)

	-- Count common items from the start in the forward direction.
	local nCommonF = countCommonItemsF(0, aLength, 0, bLength, isCommon)

	if nCommonF ~= 0 then
		foundSubsequence(nCommonF, 0, 0)
	end

	-- Unless both sequences consist of common items only,
	-- find common items in the half-trimmed index intervals.
	if aLength ~= nCommonF or bLength ~= nCommonF then
		-- Invariant: intervals do not have common items at the start.
		-- The start of an index interval is closed like array slice method.
		local aStart = nCommonF
		local bStart = nCommonF

		-- Count common items from the end in the reverse direction.
		local nCommonR = countCommonItemsR(aStart, aLength - 1, bStart, bLength - 1, isCommon)

		-- Invariant: intervals do not have common items at the end.
		-- The end of an index interval is open like array slice method.
		local aEnd = aLength - nCommonR
		local bEnd = bLength - nCommonR

		-- Unless one sequence consists of common items only,
		-- therefore the other trimmed index interval consists of changes only,
		-- find common items in the trimmed index intervals.
		local nCommonFR = nCommonF + nCommonR
		if aLength ~= nCommonFR and bLength ~= nCommonFR then
			local nChange = 0 -- number of change items is not yet known
			local transposed = false -- call the original unwrapped functions
			local callbacks = { { foundSubsequence, isCommon } }

			-- Indexes in sequence a of last points in furthest reaching paths
			-- from outside the start at top left in the forward direction:
			local aIndexesF = { NOT_YET_SET }
			-- from the end at bottom right in the reverse direction:
			local aIndexesR = { NOT_YET_SET }

			-- Initialize one object as output of all calls to divide function.
			local division = {
				aCommonFollowing = NOT_YET_SET,
				aCommonPreceding = NOT_YET_SET,
				aEndPreceding = NOT_YET_SET,
				aStartFollowing = NOT_YET_SET,
				bCommonFollowing = NOT_YET_SET,
				bCommonPreceding = NOT_YET_SET,
				bEndPreceding = NOT_YET_SET,
				bStartFollowing = NOT_YET_SET,
				nChangeFollowing = NOT_YET_SET,
				nChangePreceding = NOT_YET_SET,
				nCommonFollowing = NOT_YET_SET,
				nCommonPreceding = NOT_YET_SET,
			}

			-- Find and return common subsequences in the trimmed index intervals.
			findSubsequences(nChange, aStart, aEnd, bStart, bEnd, transposed, callbacks, aIndexesF, aIndexesR, division)
		end

		if nCommonR ~= 0 then
			foundSubsequence(nCommonR, aEnd, bEnd)
		end
	end
end

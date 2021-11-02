-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/jest-diff/src/__tests__/getAlignedDiffs.test.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

return function()
	local snapshots = require(script.Parent.__snapshots__['GetAlignedDiffs.snap'])

	local diffStringsUnified = require(script.Parent.Parent.PrintDiffs).diffStringsUnified

	-- // 1. Use options to omit line colors.
	local identity = function(s) return s end
	local changeColor = function(s) return '<i>' .. s .. '</i>' end
	local options = {
		aColor = identity,
		bColor = identity,
		changeColor = changeColor,
		commonColor = identity,
		omitAnnotationLines = true,
		patchColor = identity,
	}

	local function testAlignedDiffs(a: string, b: string): string
		return diffStringsUnified(a, b, options)
	end

	describe('getAlignedDiffs', function()
		describe('lines', function()
			it('change preceding and following common', function()
				local a = 'delete\ncommon between changes\nprev'
				local b = 'insert\ncommon between changes\nnext'
				expect(testAlignedDiffs(a, b)).to.equal(
					snapshots['getAlignedDiffs lines change preceding and following common 1']
				)
			end)

			it('common preceding and following change', function()
				local a = 'common preceding\ndelete\ncommon following'
				local b = 'common preceding\ninsert\ncommon following'
				expect(testAlignedDiffs(a, b)).to.equal(
					snapshots['getAlignedDiffs lines common preceding and following change 1']
				)
			end)

			it('common at end when both current change lines are empty', function()
				local a = 'delete\ncommon at end'
				local b = 'common at end'
				expect(testAlignedDiffs(a, b)).to.equal(
					snapshots['getAlignedDiffs lines common at end when both current change lines are empty 1']
				)
			end)

			it('common between delete and insert', function()
				local a = 'delete\ncommon between changes'
				local b = 'common between changes\ninsert'
				expect(testAlignedDiffs(a, b)).to.equal(
					snapshots['getAlignedDiffs lines common between delete and insert 1']
				)
			end)

			it('common between insert and delete', function()
				local a = 'common between changes\ndelete'
				local b = 'insert\ncommon between changes'
				expect(testAlignedDiffs(a, b)).to.equal(
					snapshots['getAlignedDiffs lines common between insert and delete 1']
				)
			end)
		end)
	end)

	describe('newline', function()
		it('delete only', function()
			local a = 'preceding\nfollowing'
			local b = 'precedingfollowing'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs newline delete only 1']
			)
		end)

		it('insert only', function()
			local a = 'precedingfollowing'
			local b = 'preceding\nfollowing'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs newline insert only 1']
			)
		end)

		it('delete with adjacent change', function()
			local a = 'preceding\nfollowing'
			local b = 'precededfollowing'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs newline delete with adjacent change 1']
			)
		end)

		it('insert with adjacent changes', function()
			local a = 'precededfollowing'
			local b = 'preceding\nFollowing'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs newline insert with adjacent changes 1']
			)
		end)

		it('change from space', function()
			local a = 'preceding following'
			local b = 'preceding\nfollowing'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs newline change from space 1']
			)
		end)

		it('change to space', function()
			local a = 'preceding\nfollowing'
			local b = 'preceding following'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs newline change to space 1']
			)
		end)
	end)

	describe('substrings first', function()
		it('common when both current change lines are empty', function()
			local a = 'first\nmiddle\nlast prev'
			local b = 'insert\nfirst\nmiddle\nlast next'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs substrings first common when both current change lines are empty 1']
			)
		end)

		it('common when either current change line is non-empty', function()
			local a = 'expected first\n\nlast'
			local b = 'first\n\nlast'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs substrings first common when either current change line is non-empty 1']
			)
		end)

		it('delete completes the current line', function()
			local a = 'common preceding first\nmiddle\nlast and following'
			local b = 'common preceding and following'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs substrings first delete completes the current line 1']
			)
		end)

		it('insert completes the current line', function()
			local a = 'common preceding'
			local b = 'common preceding first\nmiddle\n'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs substrings first insert completes the current line 1']
			)
		end)
	end)

	describe('substrings middle', function()
		it('is empty in delete between common', function()
			local a = 'common at start precedes delete\n\nexpected common at end'
			local b = 'common at start precedes received common at end'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs substrings middle is empty in delete between common 1']
			)
		end)

		it('is empty in insert at start', function()
			local a = 'expected common at end'
			local b = 'insert line\n\nreceived common at end'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs substrings middle is empty in insert at start 1']
			)
		end)

		it('is non-empty in delete at end', function()
			local a = 'common at start precedes delete\nnon-empty line\nnext'
			local b = 'common at start precedes prev'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs substrings middle is non-empty in delete at end 1']
			)
		end)

		it('is non-empty in insert between common', function()
			local a = 'common at start precedes delete expected'
			local b = 'common at start precedes insert\nnon-empty\nreceived'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs substrings middle is non-empty in insert between common 1']
			)
		end)
	end)

	describe('substrings last', function()
		it('is empty in delete at end', function()
			local a = 'common string preceding prev\n'
			local b = 'common string preceding next'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs substrings last is empty in delete at end 1']
			)
		end)

		it('is empty in insert at end', function()
			local a = 'common string preceding prev'
			local b = 'common string preceding next\n'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs substrings last is empty in insert at end 1']
			)
		end)

		it('is non-empty in common not at end', function()
			local a = 'common first\nlast expected'
			local b = 'common first\nlast received'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs substrings last is non-empty in common not at end 1']
			)
		end)
	end)

	describe('strings', function()
		it('change at start and delete or insert at end', function()
			local a = 'prev change common delete\nunchanged\nexpected change common'
			local b = 'next change common\nunchanged\nreceived change common insert'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs strings change at start and delete or insert at end 1']
			)
		end)

		it('delete or insert at start and change at end', function()
			local a = 'common change prev\nunchanged\ndelete common change this'
			local b = 'insert common change next\nunchanged\ncommon change that'
			expect(testAlignedDiffs(a, b)).to.equal(
				snapshots['getAlignedDiffs strings delete or insert at start and change at end 1']
			)
		end)
	end)
end
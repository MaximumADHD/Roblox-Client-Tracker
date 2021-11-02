-- adapted from:
-- https://github.com/google/diff-match-patch/blob/858b3812cc02e7d48da4beebb21d4d80dc1d3062/lua/tests/diff_match_patch_test.lua
--[[
* Diff Match and Patch -- Test Harness
* Copyright 2018 The diff-match-patch Authors.
* https://github.com/google/diff-match-patch
*
* Based on the JavaScript implementation by Neil Fraser
* Ported to Lua by Duncan Cross
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*   http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
--]]

return function()
	local CleanupSemantic = require(script.Parent.Parent.CleanupSemantic)
	local Diff = CleanupSemantic.Diff
	local DIFF_DELETE = CleanupSemantic.DIFF_DELETE
	local DIFF_INSERT = CleanupSemantic.DIFF_INSERT
	local DIFF_EQUAL = CleanupSemantic.DIFF_EQUAL
	local diff_commonPrefix = CleanupSemantic._diff_commonPrefix
	local diff_commonSuffix = CleanupSemantic._diff_commonSuffix
	local diff_commonOverlap = CleanupSemantic._diff_commonOverlap
	local diff_cleanupMerge = CleanupSemantic._diff_cleanupMerge
	local diff_cleanupSemanticLossless = CleanupSemantic._diff_cleanupSemanticLossless
	local cleanupSemantic = CleanupSemantic.cleanupSemantic

	-- If expected and actual are the equivalent, pass the test.
	local function equivalent(expected, actual)
		if expected == actual then
			return true
		end
		if type(expected) == 'table' and type(actual) == 'table' then
			for k, v in pairs(expected) do
				if not equivalent(v, actual[k]) then
					return false
				end
			end
			for k, v in pairs(actual) do
				if not equivalent(v, expected[k]) then
					return false
				end
			end
			return true
		end
		return false
	end

	describe('commonPrefix', function()
		it('empty string', function()
			expect(diff_commonPrefix('', 'xyz')).to.equal(0)
		end)
		it('null case', function()
			expect(diff_commonPrefix('abc', 'xyz')).to.equal(0)
		end)
		it('non-null case', function()
			expect(diff_commonPrefix('1234abcdef', '1234xyz')).to.equal(4)
		end)
		it('whole case', function()
			expect(diff_commonPrefix('1234', '1234xyz')).to.equal(4)
		end)
	end)

	describe('commonSuffix', function()
		it('empty string', function()
			expect(diff_commonSuffix('', 'xyz')).to.equal(0)
		end)
		it('null case', function()
			expect(diff_commonSuffix('abc', 'xyz')).to.equal(0)
		end)
		it('non-null case', function()
			expect(diff_commonSuffix('abcdef1234', 'xyz1234')).to.equal(4)
		end)
		it('whole case', function()
			expect(diff_commonSuffix('1234', 'xyz1234')).to.equal(4)
		end)
	end)

	describe('commonOverlap', function()
		it('null case', function()
			expect(diff_commonOverlap('', 'abcd')).to.equal(0)
		end)
		it('whole case', function()
			expect(diff_commonOverlap('abc', 'abcd')).to.equal(3)
		end)
		it('no overlap', function()
			expect(diff_commonOverlap('123456', 'abcd')).to.equal(0)
		end)
		it('overlap', function()
			expect(diff_commonOverlap('123456xxx', 'xxxabcd')).to.equal(3)
		end)
	end)

	describe('cleanupMerge', function()
		it('null case', function()
			local diffs = {}
			diff_cleanupMerge(diffs)
			expect(equivalent({}, diffs)).to.equal(true)
		end)
		it('no change case', function()
			local diffs = {
				Diff.new(DIFF_EQUAL, 'a'),
				Diff.new(DIFF_DELETE, 'b'),
				Diff.new(DIFF_INSERT, 'c'),
			}
			local expected = {
				Diff.new(DIFF_EQUAL, 'a'),
				Diff.new(DIFF_DELETE, 'b'),
				Diff.new(DIFF_INSERT, 'c'),
			}
			diff_cleanupMerge(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('merge equalities', function()
			local diffs = {
				Diff.new(DIFF_EQUAL, 'a'),
				Diff.new(DIFF_EQUAL, 'b'),
				Diff.new(DIFF_EQUAL, 'c'),
			}
			local expected = {
				Diff.new(DIFF_EQUAL, 'abc'),
			}
			diff_cleanupMerge(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('merge deletions', function()
			local diffs = {
				Diff.new(DIFF_DELETE, 'a'),
				Diff.new(DIFF_DELETE, 'b'),
				Diff.new(DIFF_DELETE, 'c'),
			}
			local expected = {
				Diff.new(DIFF_DELETE, 'abc'),
			}
			diff_cleanupMerge(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('merge insertions', function()
			local diffs = {
				Diff.new(DIFF_INSERT, 'a'),
				Diff.new(DIFF_INSERT, 'b'),
				Diff.new(DIFF_INSERT, 'c'),
			}
			local expected = {
				Diff.new(DIFF_INSERT, 'abc'),
			}
			diff_cleanupMerge(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('merge interweave', function()
			local diffs = {
				Diff.new(DIFF_DELETE, 'a'),
				Diff.new(DIFF_INSERT, 'b'),
				Diff.new(DIFF_DELETE, 'c'),
				Diff.new(DIFF_INSERT, 'd'),
				Diff.new(DIFF_EQUAL, 'e'),
				Diff.new(DIFF_EQUAL, 'f'),
			}
			local expected = {
				Diff.new(DIFF_DELETE, 'ac'),
				Diff.new(DIFF_INSERT, 'bd'),
				Diff.new(DIFF_EQUAL, 'ef'),
			}
			diff_cleanupMerge(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('prefix and suffix detection', function()
			local diffs = {
				Diff.new(DIFF_DELETE, 'a'),
				Diff.new(DIFF_INSERT, 'abc'),
				Diff.new(DIFF_DELETE, 'dc'),
			}
			local expected = {
				Diff.new(DIFF_EQUAL, 'a'),
				Diff.new(DIFF_DELETE, 'd'),
				Diff.new(DIFF_INSERT, 'b'),
				Diff.new(DIFF_EQUAL, 'c'),
			}
			diff_cleanupMerge(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('prefix and suffix detection with equalities', function()
			local diffs = {
				Diff.new(DIFF_EQUAL, 'x'),
				Diff.new(DIFF_DELETE, 'a'),
				Diff.new(DIFF_INSERT, 'abc'),
				Diff.new(DIFF_DELETE, 'dc'),
				Diff.new(DIFF_EQUAL, 'y'),
			}
			local expected = {
				Diff.new(DIFF_EQUAL, 'xa'),
				Diff.new(DIFF_DELETE, 'd'),
				Diff.new(DIFF_INSERT, 'b'),
				Diff.new(DIFF_EQUAL, 'cy'),
			}
			diff_cleanupMerge(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('slide edit left', function()
			local diffs = {
				Diff.new(DIFF_EQUAL, 'a'),
				Diff.new(DIFF_INSERT, 'ba'),
				Diff.new(DIFF_EQUAL, 'c'),
			}
			local expected = {
				Diff.new(DIFF_INSERT, 'ab'),
				Diff.new(DIFF_EQUAL, 'ac'),
			}
			diff_cleanupMerge(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('slide edit right', function()
			local diffs = {
				Diff.new(DIFF_EQUAL, 'c'),
				Diff.new(DIFF_INSERT, 'ab'),
				Diff.new(DIFF_EQUAL, 'a'),
			}
			local expected = {
				Diff.new(DIFF_EQUAL, 'ca'),
				Diff.new(DIFF_INSERT, 'ba'),
			}
			diff_cleanupMerge(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('slide edit left recursive', function()
			local diffs = {
				Diff.new(DIFF_EQUAL, 'a'),
				Diff.new(DIFF_DELETE, 'b'),
				Diff.new(DIFF_EQUAL, 'c'),
				Diff.new(DIFF_DELETE, 'ac'),
				Diff.new(DIFF_EQUAL, 'x'),
			}
			local expected = {
				Diff.new(DIFF_DELETE, 'abc'),
				Diff.new(DIFF_EQUAL, 'acx'),
			}
			diff_cleanupMerge(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('slide edit right recursive', function()
			local diffs = {
				Diff.new(DIFF_EQUAL, 'x'),
				Diff.new(DIFF_DELETE, 'ca'),
				Diff.new(DIFF_EQUAL, 'c'),
				Diff.new(DIFF_DELETE, 'b'),
				Diff.new(DIFF_EQUAL, 'a'),
			}
			local expected = {
				Diff.new(DIFF_EQUAL, 'xca'),
				Diff.new(DIFF_DELETE, 'cba'),
			}
			diff_cleanupMerge(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('empty merge', function()
			local diffs = {
				Diff.new(DIFF_DELETE, 'b'),
				Diff.new(DIFF_INSERT, 'ab'),
				Diff.new(DIFF_EQUAL, 'c'),
			}
			local expected = {
				Diff.new(DIFF_INSERT, 'a'),
				Diff.new(DIFF_EQUAL, 'bc'),
			}
			diff_cleanupMerge(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('empty equality', function()
			local diffs = {
				Diff.new(DIFF_EQUAL, ''),
				Diff.new(DIFF_INSERT, 'a'),
				Diff.new(DIFF_EQUAL, 'b'),
			}
			local expected = {
				Diff.new(DIFF_INSERT, 'a'),
				Diff.new(DIFF_EQUAL, 'b'),
			}
			diff_cleanupMerge(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
	end)

	describe('cleanupSemanticLossless', function()
		it('null case', function()
			local diffs = {}
			diff_cleanupSemanticLossless(diffs)
			expect(equivalent({}, diffs)).to.equal(true)
		end)
		it('blank lines', function()
			local diffs = {
				Diff.new(DIFF_EQUAL, 'AAA\r\n\r\nBBB'),
				Diff.new(DIFF_INSERT, '\r\nDDD\r\n\r\nBBB'),
				Diff.new(DIFF_EQUAL, '\r\nEEE')
			}
			local expected = {
				Diff.new(DIFF_EQUAL, 'AAA\r\n\r\n'),
				Diff.new(DIFF_INSERT, 'BBB\r\nDDD\r\n\r\n'),
				Diff.new(DIFF_EQUAL, 'BBB\r\nEEE')
			}
			diff_cleanupSemanticLossless(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('line boundaries', function()
			local diffs = {
				Diff.new(DIFF_EQUAL, 'AAA\r\nBBB'),
				Diff.new(DIFF_INSERT, ' DDD\r\nBBB'),
				Diff.new(DIFF_EQUAL, ' EEE')
			}
			local expected = {
				Diff.new(DIFF_EQUAL, 'AAA\r\n'),
				Diff.new(DIFF_INSERT, 'BBB DDD\r\n'),
				Diff.new(DIFF_EQUAL, 'BBB EEE')
			}
			diff_cleanupSemanticLossless(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('word boundaries', function()
			local diffs = {
				Diff.new(DIFF_EQUAL, 'The c'),
				Diff.new(DIFF_INSERT, 'ow and the c'),
				Diff.new(DIFF_EQUAL, 'at.')
			}
			local expected = {
				Diff.new(DIFF_EQUAL, 'The '),
				Diff.new(DIFF_INSERT, 'cow and the '),
				Diff.new(DIFF_EQUAL, 'cat.')
			}
			diff_cleanupSemanticLossless(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('alphanumeric boundaries', function()
			local diffs = {
				Diff.new(DIFF_EQUAL, 'The-c'),
				Diff.new(DIFF_INSERT, 'ow-and-the-c'),
				Diff.new(DIFF_EQUAL, 'at.')
			}
			local expected = {
				Diff.new(DIFF_EQUAL, 'The-'),
				Diff.new(DIFF_INSERT, 'cow-and-the-'),
				Diff.new(DIFF_EQUAL, 'cat.')
			}
			diff_cleanupSemanticLossless(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('hitting the start', function()
			local diffs = {
				Diff.new(DIFF_EQUAL, 'a'),
				Diff.new(DIFF_DELETE, 'a'),
				Diff.new(DIFF_EQUAL, 'ax')
			}
			local expected = {
				Diff.new(DIFF_DELETE, 'a'),
				Diff.new(DIFF_EQUAL, 'aax')
			}
			diff_cleanupSemanticLossless(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('hitting the end', function()
			local diffs = {
				Diff.new(DIFF_EQUAL, 'xa'),
				Diff.new(DIFF_DELETE, 'a'),
				Diff.new(DIFF_EQUAL, 'a')
			}
			local expected = {
				Diff.new(DIFF_EQUAL, 'xaa'),
				Diff.new(DIFF_DELETE, 'a')
			}
			diff_cleanupSemanticLossless(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('sentence boundaries', function()
			local diffs = {
				Diff.new(DIFF_EQUAL, 'The xxx. The '),
				Diff.new(DIFF_INSERT, 'zzz. The '),
				Diff.new(DIFF_EQUAL, 'yyy.')
			}
			local expected = {
				Diff.new(DIFF_EQUAL, 'The xxx.'),
				Diff.new(DIFF_INSERT, ' The zzz.'),
				Diff.new(DIFF_EQUAL, ' The yyy.')
			}
			diff_cleanupSemanticLossless(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
	end)

	describe('cleanupSemantic', function()
		it('null case', function()
			local diffs = {}
			cleanupSemantic(diffs)
			expect(equivalent({}, diffs)).to.equal(true)
		end)
		it('no elimination #1', function()
			local diffs = {
				Diff.new(DIFF_DELETE, 'ab'),
				Diff.new(DIFF_INSERT, 'cd'),
				Diff.new(DIFF_EQUAL, '12'),
				Diff.new(DIFF_DELETE, 'e')
			}
			local expected = {
				Diff.new(DIFF_DELETE, 'ab'),
				Diff.new(DIFF_INSERT, 'cd'),
				Diff.new(DIFF_EQUAL, '12'),
				Diff.new(DIFF_DELETE, 'e')
			}
			cleanupSemantic(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('no elimination #2', function()
			local diffs = {
				Diff.new(DIFF_DELETE, 'abc'),
				Diff.new(DIFF_INSERT, 'ABC'),
				Diff.new(DIFF_EQUAL, '1234'),
				Diff.new(DIFF_DELETE, 'wxyz')
			}
			local expected = {
				Diff.new(DIFF_DELETE, 'abc'),
				Diff.new(DIFF_INSERT, 'ABC'),
				Diff.new(DIFF_EQUAL, '1234'),
				Diff.new(DIFF_DELETE, 'wxyz')
			}
			cleanupSemantic(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('simple elimination', function()
			local diffs = {
				Diff.new(DIFF_DELETE, 'a'),
				Diff.new(DIFF_EQUAL, 'b'),
				Diff.new(DIFF_DELETE, 'c')
			}
			local expected = {
				Diff.new(DIFF_DELETE, 'abc'),
				Diff.new(DIFF_INSERT, 'b')
			}
			cleanupSemantic(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('backpass elimination', function()
			local diffs = {
				Diff.new(DIFF_DELETE, 'ab'),
				Diff.new(DIFF_EQUAL, 'cd'),
				Diff.new(DIFF_DELETE, 'e'),
				Diff.new(DIFF_EQUAL, 'f'),
				Diff.new(DIFF_INSERT, 'g')
			}
			local expected = {
				Diff.new(DIFF_DELETE, 'abcdef'),
				Diff.new(DIFF_INSERT, 'cdfg')
			}
			cleanupSemantic(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('multiple elimination', function()
			local diffs = {
				Diff.new(DIFF_INSERT, '1'),
				Diff.new(DIFF_EQUAL, 'A'),
				Diff.new(DIFF_DELETE, 'B'),
				Diff.new(DIFF_INSERT, '2'),
				Diff.new(DIFF_EQUAL, '_'),
				Diff.new(DIFF_INSERT, '1'),
				Diff.new(DIFF_EQUAL, 'A'),
				Diff.new(DIFF_DELETE, 'B'),
				Diff.new(DIFF_INSERT, '2')
			}
			local expected = {
				Diff.new(DIFF_DELETE, 'AB_AB'),
				Diff.new(DIFF_INSERT, '1A2_1A2')
			}
			cleanupSemantic(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('word boundaries', function()
			local diffs = {
				Diff.new(DIFF_EQUAL, 'The c'),
				Diff.new(DIFF_DELETE, 'ow and the c'),
				Diff.new(DIFF_EQUAL, 'at.')
			}
			local expected = {
				Diff.new(DIFF_EQUAL, 'The '),
				Diff.new(DIFF_DELETE, 'cow and the '),
				Diff.new(DIFF_EQUAL, 'cat.')
			}
			cleanupSemantic(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('no overlap elimination', function()
			local diffs = {
				Diff.new(DIFF_DELETE, 'abcxx'),
				Diff.new(DIFF_INSERT, 'xxdef')
			}
			local expected = {
				Diff.new(DIFF_DELETE, 'abcxx'),
				Diff.new(DIFF_INSERT, 'xxdef')
			}
			cleanupSemantic(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('overlap elimination', function()
			local diffs = {
				Diff.new(DIFF_DELETE, 'abcxxx'),
				Diff.new(DIFF_INSERT, 'xxxdef')
			}
			local expected = {
				Diff.new(DIFF_DELETE, 'abc'),
				Diff.new(DIFF_EQUAL, 'xxx'),
				Diff.new(DIFF_INSERT, 'def')
			}
			cleanupSemantic(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('reverse overlap elimination', function()
			local diffs = {
				Diff.new(DIFF_DELETE, 'xxxabc'),
				Diff.new(DIFF_INSERT, 'defxxx')
			}
			local expected = {
				Diff.new(DIFF_INSERT, 'def'),
				Diff.new(DIFF_EQUAL, 'xxx'),
				Diff.new(DIFF_DELETE, 'abc')
			}
			cleanupSemantic(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
		it('two overlap elimination', function()
			local diffs = {
				Diff.new(DIFF_DELETE, 'abcd1212'),
				Diff.new(DIFF_INSERT, '1212efghi'),
				Diff.new(DIFF_EQUAL, '----'),
				Diff.new(DIFF_DELETE, 'A3'),
				Diff.new(DIFF_INSERT, '3BC')
			}
			local expected = {
				Diff.new(DIFF_DELETE, 'abcd'),
				Diff.new(DIFF_EQUAL, '1212'),
				Diff.new(DIFF_INSERT, 'efghi'),
				Diff.new(DIFF_EQUAL, '----'),
				Diff.new(DIFF_DELETE, 'A'),
				Diff.new(DIFF_EQUAL, '3'),
				Diff.new(DIFF_INSERT, 'BC')
			}
			cleanupSemantic(diffs)
			expect(equivalent(expected, diffs)).to.equal(true)
		end)
	end)
end
-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/jest-diff/src/__tests__/diffStringsRaw.test.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

return function()
	local Workspace = script.Parent.Parent
	local Modules = Workspace.Parent
	local Packages = Modules.Parent.Parent

	local Array = require(Packages.LuauPolyfill).Array

	local DIFF_DELETE = require(Workspace).DIFF_DELETE
	local DIFF_EQUAL = require(Workspace).DIFF_EQUAL
	local DIFF_INSERT = require(Workspace).DIFF_INSERT
	local Diff = require(Workspace).Diff
	local diffStringsRaw = require(Workspace).diffStringsRaw

	local function arrayEquals(a1, a2)
		return #a1 == #a2 and
			Array.every(
				a1,
				function(element, index)
					return element[1] == a2[index][1] and
						element[2] == a2[index][2]
				end
			)
	end

	describe('diffStringsRaw', function()
		it('one-line with cleanup', function()
			local expected = {
				Diff.new(DIFF_EQUAL, 'change '),
				Diff.new(DIFF_DELETE, 'from'),
				Diff.new(DIFF_INSERT, 'to'),
			}
			local received = diffStringsRaw('change from', 'change to', true)
			expect(arrayEquals(received, expected)).to.equal(true)
		end)

		it('one-line without cleanup', function()
			local expected = {
				Diff.new(DIFF_EQUAL, 'change '),
				Diff.new(DIFF_DELETE, 'fr'),
				Diff.new(DIFF_INSERT, 't'),
				Diff.new(DIFF_EQUAL, 'o'),
				Diff.new(DIFF_DELETE, 'm'),
			}
			local received = diffStringsRaw('change from', 'change to', false)
			expect(arrayEquals(received, expected)).to.equal(true)
		end)
	end)
end
-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/jest-get-type/src/__tests__/isPrimitive.test.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  *
--  */

return function()
	local isPrimitive = require(script.Parent.Parent).isPrimitive

	describe(".isPrimitive()", function()
		it('returns true when given primitive value of: nil', function()
			expect(isPrimitive(nil)).to.equal(true)
		end)

		-- deviation: test omitted because lua has no primitive undefined type

		it('returns true when given primitive value of: 100', function()
			expect(isPrimitive(100)).to.equal(true)
		end)

		it('returns true when given primitive value of: \'hello world\'', function()
			expect(isPrimitive('hello world')).to.equal(true)
		end)

		it('returns true when given primitive value of: true', function()
			expect(isPrimitive(true)).to.equal(true)
		end)

		-- deviation: test omitted because lua has no primitive symbol type

		it('returns true when given primitive value of: 0', function()
			expect(isPrimitive(0)).to.equal(true)
		end)

		it('returns true when given primitive value of: -nan', function()
			expect(isPrimitive(0/0)).to.equal(true)
		end)

		it('returns true when given primitive value of: inf', function()
			expect(isPrimitive(1/0)).to.equal(true)
		end)

		-- deviation: test omitted because lua has no primitive bigint type

		-- deviation: lua makes no distinction between tables, objects, and arrays
		it('returns false when given non primitive value of: {}', function()
			expect(isPrimitive({})).to.equal(false)
		end)

		it('returns false when given non primitive value of: function() end', function()
			expect(isPrimitive(function() end)).to.equal(false)
		end)

		-- deviation: test omitted because lua has no primitive symbol type
		-- deviation: test omitted because lua has no built-in RegExp, Map, Set or Date types
	end)
end
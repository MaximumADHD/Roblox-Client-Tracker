-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/jest-get-type/src/__tests__/getType.test.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  *
--  */

return function()
	local Workspace = script.Parent.Parent
	local Modules = Workspace.Parent
	local Packages = Modules.Parent.Parent

	local Polyfill = require(Packages.LuauPolyfill)
	local Error = require(Packages.LuauPolyfill).Error
	local RegExp = Polyfill.RegExp
	local Set = Polyfill.Set
	local Symbol = Polyfill.Symbol

	local getType = require(Workspace).getType

	describe(".getType()", function()
		it('nil', function()
			expect(getType(nil)).to.equal('nil')
		end)

		-- deviation: test omitted because lua has no primitive undefined type

		-- deviation: lua makes no distinction between tables, objects, and arrays
		it('table', function()
			expect(getType({})).to.equal('table')
		end)

		it('number', function()
			expect(getType(1)).to.equal('number')
		end)

		it('string', function()
			expect(getType('oi')).to.equal('string')
		end)

		it('function', function()
			expect(getType(function() end)).to.equal('function')
		end)

		it('boolean', function()
			expect(getType(true)).to.equal('boolean')
		end)

		it('DateTime', function()
			expect(getType(DateTime.now())).to.equal('DateTime')
		end)

		it("symbol", function()
			expect(getType(Symbol("test"))).to.equal("symbol")
			expect(getType(Symbol.for_("test"))).to.equal("symbol")
			expect(getType(Symbol.for_("test2"))).to.equal("symbol")
			expect(getType(Symbol())).to.equal("symbol")
		end)

		it("regexp", function()
			expect(getType(RegExp("abc"))).to.equal("regexp")
		end)

		it("error", function()
			expect(getType(Error("abc"))).to.equal("error")
		end)

		it("set", function()
			expect(getType(Set.new())).to.equal("set")
		end)

		-- deviation: test omitted because lua has no built-in Map types
		-- deviation: test omitted because lua has no primitive bigint type
	end)
end
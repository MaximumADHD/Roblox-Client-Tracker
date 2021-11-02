-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/__tests__/matchers.test.js
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

--[[
	Heavily modified tests from upstream just to check functionality of the
	equals() function without the overhead of all the matchers that have not
	been translated

	ROBLOX TODO: refactor tests once the matchers code has been translated
]]
return function()
	local Workspace = script.Parent.Parent
	local Modules = Workspace.Parent
	local Packages = Modules.Parent.Parent

	local Polyfill = require(Packages.LuauPolyfill)
	local Number = Polyfill.Number
	local Symbol = Polyfill.Symbol
	local RegExp = Polyfill.RegExp

	local jasmineUtils = require(Workspace.jasmineUtils)
	local equals = jasmineUtils.equals
	local fnNameFor = jasmineUtils.fnNameFor
	local isA = jasmineUtils.isA

	describe("cyclic object equality", function()
		it("properties with the same circularity are equal", function()
			local a = {}
			a.x = a
			local b = {}
			b.x = b

			expect(equals(a, b)).to.equal(true)
			expect(equals(b, a)).to.equal(true)

			local c = {}
			c.x = a
			local d = {}
			d.x = b
			expect(equals(c, d)).to.equal(true)
			expect(equals(d, c)).to.equal(true)
		end)

		it("properties with different circularity are not equal", function()
			local a = {}
			a.x = {y = a}
			local b = {}
			local bx = {}
			b.x = bx
			bx.y = bx
			expect(equals(a, b)).to.equal(false)
			expect(equals(b, a)).to.equal(false)
		end)

		it("are not equal if circularity is not on the same property", function()
			local a = {}
			local b = {}
			a.a = a
			b.a = {}
			b.a.a = a
			expect(equals(a,b)).to.equal(false)
			expect(equals(b,a)).to.equal(false)

			local c = {}
			c.x = {x = c}
			local d = {}
			d.x = d
			expect(equals(c, d)).to.equal(false)
			expect(equals(d, c)).to.equal(false)
		end)

		it("tests equality between symbols", function()
			local a = Symbol.for_("foo")
			local b = Symbol.for_("foo")

			expect(equals(a,b)).to.equal(true)

			local c = {}
			local d = {}

			c[a] = 5
			d[b] = 5

			expect(equals(c,d)).to.equal(true)
		end)

		it('tests circularity defined on different property', function()
			local a = {}
			local b = {}
			a.a = a
			b.a = {}
			b.a.a = a
			expect(equals(a,b)).to.equal(false)
			expect(equals(b,a)).to.equal(false)
		end)
	end)

	describe("equality edge cases", function()
		it('tests keys with false value', function()
			expect(equals({{a = false, b = 2}, {b = 2}})).to.equal(false)
		end)

		it('tests equality of regex', function()
			expect(equals(RegExp("abc"), RegExp("abd"))).to.equal(false)
			expect(equals(RegExp("abc", "m"), RegExp("abc", "m"))).to.equal(true)
			expect(equals(RegExp("abc", "m"), RegExp("abc"))).to.equal(false)
		end)
	end)

	-- deviation: these tests do not correlate to any upstream tests
	describe("minor jasmineUtils functions", function()
		it("tests fnNameFor", function()
			local func = function() end

			expect(fnNameFor(func)).to.equal("[Function]")
		end)

		it("tests isA", function()
			local func = function() end
			expect(isA("function", func)).to.equal(true)
			expect(isA("string", "abc")).to.equal(true)
			expect(isA("boolean", true)).to.equal(true)
		end)

		it("tests hasProperty", function()
			local objA = {prop3 = "test"}
			local metaA = {prop1 = 5, prop2 = "prop"}
			setmetatable(objA, {__index = metaA})
			expect(jasmineUtils.hasProperty(objA, "prop1")).to.equal(true)
			expect(jasmineUtils.hasProperty(objA, "prop2")).to.equal(true)
			expect(jasmineUtils.hasProperty(objA, "prop3")).to.equal(true)
			expect(jasmineUtils.hasProperty(objA, "prop4")).to.equal(false)


			local objB = {prop1 = "test"}
			local metaB = {prop1 = 3, prop2 = {a = 1, b = {} }}
			setmetatable(objB, {__index = function(table, key) return metaB[key] end})
			expect(jasmineUtils.hasProperty(objB, "prop1")).to.equal(true)
			expect(jasmineUtils.hasProperty(objB, "prop2")).to.equal(true)
			expect(jasmineUtils.hasProperty(objB, "prop3")).to.equal(false)

			local objC = {prop1 = "test"}
			setmetatable(objC, {__index = function(table, key) error("invalid access") end})
			expect(function() jasmineUtils.hasProperty(objC, "prop1") end).never.to.throw()
			expect(function() jasmineUtils.hasProperty(objC, "prop2") end).to.throw()
		end)
	end)

end

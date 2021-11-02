--!nocheck
-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/__tests__/matchers.test.js
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

	local snapshots = require(script.Parent.__snapshots__["matchers.snap"])

	local Polyfill = require(Packages.LuauPolyfill)
	local Symbol = Polyfill.Symbol
	local Number = Polyfill.Number
	local Object = Polyfill.Object
	local extends = Polyfill.extends
	local RegExp = Polyfill.RegExp

	local stringify = require(Modules.JestMatcherUtils).stringify

	-- deviation: omitted alignedAnsiStyleSerializer, Immutable, chalk imports

	local jestExpect = require(Workspace)

	-- deviation: chalk enabled by default

	-- deviation: omitted isBigIntDefined variable declaration

	it("should throw if passed two arguments", function()
		expect(function() jestExpect("foo", "bar") end).to.throw("Expect takes at most one argument")
	end)

	describe(".toBe()", function()
		it("does not throw", function()
			jestExpect("a").never.toBe("b")
			jestExpect("a").toBe("a")
			jestExpect(1).never.toBe(2)
			jestExpect(1).toBe(1)
			jestExpect(nil).toBe(nil)
			jestExpect(0/0).toBe(0/0)
		end)

		--[[
			deviation: omitted error test, test with +0 and -0, test with null and undefined

			deviation: the test with identical dates is omitted because two
			equal dates are treated as the same in lua:
			{DateTime.fromUniversalTime(2020, 2, 20), DateTime.fromUniversalTime(2020, 2, 20)},
		]]

		for _, testCase in ipairs({
			{1, 2},
			{true, false},
			{function() end, function() end},
			{{}, {}},
			{{a = 1}, {a = 1}},
			{{a = 1}, {a = 5}},
			{
				{a = function() end, b = 2},
				{a = jestExpect.any("function"), b = 2}
			},
			{{a = false, b = 2}, {b = 2}},
			{DateTime.fromUniversalTime(2020, 2, 21), DateTime.fromUniversalTime(2020, 2, 20)},
			{"received", "expected"},
			{Symbol.for_("received"), Symbol.for_("expected")},
			{"abc", "cde"},
			{"painless JavaScript testing", "delightful JavaScript testing"},
			{"", "compare one-line string to empty string"},
			{"with \ntrailing space", "without trailing space"},
			{"four\n4\nline\nstring", "3\nline\nstring"},
			{-math.huge, math.huge}
		}) do
			local a = testCase[1]
			local b = testCase[2]
			it("fails for: " .. stringify(a) .. " and " .. stringify(b), function()
				expect(function() jestExpect(a).toBe(b) end).to.throw(snapshots[".toBe() fails for: " .. stringify(a) .. " and " .. stringify(b) .. " 1"])
			end)
		end

		for _, testCase in ipairs({
			false, 1, "a", {}
		}) do
			it("fails for " .. stringify(testCase) .. " with .never", function()
				expect(function() jestExpect(testCase).never.toBe(testCase) end).to.throw(snapshots[".toBe() fails for " .. stringify(testCase) .. " with .never 1"])
			end)
		end

		-- deviation: we can't test nil as part of the loop above because the for loop
		-- wouldn't iterate over a nil entry so we include the test separately
		it("fails for nil with .never", function()
			expect(function() jestExpect(nil).never.toBe(nil) end).to.throw(snapshots[".toBe() fails for nil with .never 1"])
		end)

		it("does not crash on circular references", function()
			local obj = {}
			obj.circular = obj

			expect(function() jestExpect(obj).toBe({}) end).to.throw(snapshots[".toBe() does not crash on circular references 1"])
		end)

		-- ROBLOX TODO: assertion error currently returns strings, not an object
		itSKIP("assertion error matcherResult property contains matcher name, expected and actual values", function()
			local actual = {a = 1}
			local expected = {a = 2}

			local ok, error_ = pcall(function()
				jestExpect(actual).toBe(expected)
			end)

			if not ok then
				jestExpect(error_.message).toEqual(
					jestExpect.objectContaining({
						actual = actual,
						expected = expected,
						name = "toBe"
					})
				)
			end
		end)
	end)

	-- deviation: tests within the toStrictEqual describe block are omitted

	--[[
			deviation: omitted test cases that become redundant in our Lua translation i.e.

			Number(0), 0
			String('abc'), 'abc'

			as well as any tests that involve Sets or Maps that become redundant with other
			tests since our translation for all kinds of data structures fall back to tables

			We change the Immutable types to be ordinary data
			types where applicable and omit the test entirely if it becomes
			redundant

			We also omitted Object getter and setter tests


	]]
	describe(".toEqual()", function()
		for _, testCase in ipairs({
			{true, false},
			{1, 2},
			{0, Number.MIN_SAFE_INTEGER},
			{Number.MIN_SAFE_INTEGER, 0},
			{0, 1},
			{{a = 1}, {a = 2}},
			{{a = 5}, {b = 6}},
			{Object.freeze({foo = {bar = 1}}), {foo = {}}},
			{'banana', 'apple'},
			{'1\u{00A0}234,57\u{00A0}$', '1 234,57 $'},
			{
				'type TypeName<T> = T extends Function ? "function" : "object";',
				'type TypeName<T> = T extends Function\n? "function"\n: "object";',
			},
			{{1}, {2}},
			{{1, 2}, {2, 1}},
			{{1, 2}, {}},
			{{1, 2}, {1, 2, 3}},
			{{{1}, {2}}, {{1}, {2}, {3}}},
			{{{1}, {2}}, {{1}, {2}, {2}}},
			{
				{{1}, {2}},
				{{1}, {3}},
			},
			{
				{[1] = 'one', [2] ='two'},
				{[1] = 'one'},
			},
			{{a = 0}, {b = 0}},
			{{v = 1}, {v = 2}},
			{{[{"v"}] = 1}, {[{"v"}] = 2}},
			{
				{[{1}] = {[{1}] = "one"}},
				{[{1}] = {[{1}] = "two"}}
			},
			{
				{["1"] = {["2"] = {a = 99}}},
				{["1"] = {["2"] = {a = 11}}}
			},
			{{97, 98, 99}, {97, 98, 100}},
			{{a = 1, b = 2}, jestExpect.objectContaining({a = 2})},
			{false, jestExpect.objectContaining({a = 2})},
			{{1, 3}, jestExpect.arrayContaining({1, 2})},
			{1, jestExpect.arrayContaining({1, 2})},
			{'abd', jestExpect.stringContaining('bc')},
			{'abd', jestExpect.stringMatching('bc')},
			{nil, jestExpect.anything()},
			{nil, jestExpect.any("function")},
			{
				'Eve',
				{
					asymmetricMatch = function(self, who)
						return who == 'Alice' or who == 'Bob'
					end
				},
			},
			{
				{
					target = {
						nodeType = 1,
						value = 'a',
					},
				},
				{
					target = {
						nodeType = 1,
						value = 'b',
					},
				},
			},
			{
				{
					nodeName = 'div',
					nodeType = 1,
				},
				{
					nodeName = 'p',
					nodeType = 1,
				},
			},
			{
				{
					[Symbol.for_('foo')] = 1,
					[Symbol.for_('bar')] = 2,
				},
				{
					[Symbol.for_('foo')] = jestExpect.any("number"),
					[Symbol.for_('bar')] = 1,
				},
			}
		}) do
			local a = testCase[1]
			local b = testCase[2]
			it("{pass: false} expect(" .. stringify(a) .. ").toEqual(" .. stringify(b) .. ")", function()
				expect(function() jestExpect(a).toEqual(b) end).to.throw(snapshots['.toEqual() {pass: false} expect(' .. stringify(a) .. ').toEqual(' .. stringify(b) .. ') 1'])
				jestExpect(a).never.toEqual(b)
			end)
		end

		for _, testCase in ipairs({
			{true, true},
			{1, 1},
			{0/0, 0/0},
			{0, 0},
			{'abc', 'abc'},
			{{1}, {1}},
			{
				{1, 2},
				{1, 2},
			},
			{{}, {}},
			{{a = 99}, {a = 99}},
			{
				{
					[1] = 'one',
					[2] = 'two',
				},
				{
					[1] = 'one',
					[2] = 'two',
				}
			},
			{
				{
					[1] = {"one"},
					[2] = {"two"}
				},
				{
					[2] = {"two"},
					[1] = {"one"}
				},
			},
			{
				{[1] = {[2] = {a = 99}}},
				{[1] = {[2] = {a = 99}}}
			},
			{{97, 98, 99}, {97, 98, 99}},
			{{a = 1, b = 2}, jestExpect.objectContaining({a = 1})},
			{{1, 2, 3}, jestExpect.arrayContaining({2, 3})},
			{'abcd', jestExpect.stringContaining('bc')},
			{'abcd', jestExpect.stringMatching('bc')},
			{true, jestExpect.anything()},
			{function() end, jestExpect.any("function")},
			{
				{
					a = 1,
					b = function() end,
					c = true,
				},
				{
					a = 1,
					b = jestExpect.any("function"),
					c = jestExpect.anything(),
				},
			},
			{
				'Alice',
				{
					asymmetricMatch = function(self, who)
						return who == 'Alice' or who == 'Bob'
					end
				},
			},
			{
				{
					nodeName = 'div',
					nodeType = 1,
				},
				{
					nodeName = 'div',
					nodeType = 1,
				},
			},
		}) do
			local a = testCase[1]
			local b = testCase[2]
			it("{pass: true} expect(" .. stringify(a) .. ").never.toEqual(" .. stringify(b) .. ") 1", function()
				jestExpect(a).toEqual(b)
				expect(function() jestExpect(a).never.toEqual(b) end).to.throw(snapshots[".toEqual() {pass: true} expect(" .. stringify(a) .. ").never.toEqual(" .. stringify(b) .. ") 1"])
			end)
		end

		-- ROBLOX TODO: assertion error currently returns strings, not an object
		itSKIP('assertion error matcherResult property contains matcher name, expected and actual values', function()
			local actual = {a = 1}
			local expected = {a = 2}
			local ok, error_ = pcall(function() jestExpect(actual).toEqual(expected) end)

			if not ok then
				jestExpect(error_.matcherResult).toEqual(
					jestExpect.objectContaining({
						actual = actual,
						expected = expected,
						name = 'toEqual',
					})
				)
			end
		end)

		it('symbol based keys in arrays are processed correctly', function()
			local mySymbol = Symbol('test')
			local actual1 = {}
			actual1[mySymbol] = 3
			local actual2 = {}
			actual2[mySymbol] = 4
			local expected = {}
			expected[mySymbol] = 3

			jestExpect(actual1).toEqual(expected)
			jestExpect(actual2).never.toEqual(expected)
		end)

		-- deviation: test omitted because it's not applicable to Lua translation
		itSKIP('non-enumerable members should be skipped during equal', function()
			-- local actual = {
			-- 	x = 3,
			-- }
			-- Object.defineProperty(actual, 'test', {
			-- 	enumerable = false,
			-- 	value = 5,
			-- })
			-- expect(actual).toEqual({x = 3})
		end)

		-- deviation: test omitted because it's not applicable to Lua translation
		itSKIP('non-enumerable symbolic members should be skipped during equal', function()
			-- local actual = {
			-- 	x = 3,
			-- }
			-- local mySymbol = Symbol('test')
			-- Object.defineProperty(actual, mySymbol, {
			-- 	enumerable = false,
			-- 	value = 5,
			-- })
			-- expect(actual).toEqual({x = 3})
		end)

		describe('cyclic object equality', function()
			it('properties with the same circularity are equal', function()
				local a = {}
				a.x = a
				local b = {}
				b.x = b
				jestExpect(a).toEqual(b)
				jestExpect(b).toEqual(a)

				local c = {}
				c.x = a
				local d = {}
				d.x = b
				jestExpect(c).toEqual(d)
				jestExpect(d).toEqual(c)
			end)

			it('properties with different circularity are not equal', function()
				local a = {}
				a.x = {y = a}
				local b = {}
				local bx = {}
				b.x = bx
				bx.y = bx
				jestExpect(a).never.toEqual(b)
				jestExpect(b).never.toEqual(a)

				local c = {}
				c.x = a
				local d = {}
				d.x = b
				jestExpect(c).never.toEqual(d)
				jestExpect(d).never.toEqual(c)
			end)

			it('are not equal if circularity is not on the same property', function()
				local a = {}
				local b = {}
				a.a = a
				b.a = {}
				b.a.a = a
				jestExpect(a).never.toEqual(b)
				jestExpect(b).never.toEqual(a)

				local c = {}
				c.x = {x = c}
				local d = {}
				d.x = d
				jestExpect(c).never.toEqual(d)
				jestExpect(d).never.toEqual(c)
			end)
		end)
	end)

	-- deviation: major deviations to toBeInstanceOf, check README for more info
	describe(".toBeInstanceOf()", function()
		local A = {}
		A.__index = A
		setmetatable(A, {
			__tostring = function(self) return "A" end
		})
		function A.new()
			local self = {}
			setmetatable(self, A)
			return self
		end

		local B = {}
		B.__index = B
		setmetatable(B, {
			__tostring = function(self) return "B" end
		})
		function B.new()
			local self = {}
			setmetatable(self, B)
			return self
		end

		-- C extends B
		local C = extends(B, "C", function(self) end)

		-- D extends C
		local D = extends(C, "D", function(self) end)

		-- E extends D
		local E = extends(D, "E", function(self) end)

		it('throws if expected is not a table', function()
			expect(function()
				jestExpect(A.new()).toBeInstanceOf(1)
			end).to.throw(
				"[1mMatcher error[22m: [32mexpected[39m value must be a prototype class\n\n" ..
				"Expected has type:  number\n" ..
				"Expected has value: [32m1[39m"
			)
		end)

		it('does not throw if received is not a table', function()
			expect(function()
				jestExpect(1).toBeInstanceOf(A)
			end).to.throw(
				"[2mexpect([22m[31mreceived[39m[2m).[22mtoBeInstanceOf[2m([22m[32mexpected[39m[2m)[22m\n\n" ..
				"Expected constructor: [32mA[39m\n\n" ..
				"Received value has no prototype\n" ..
				"Received value: [31m1[39m"
			)
		end)

		it('does not throw if received does not have metatable', function ()
			expect(function()
				jestExpect({}).toBeInstanceOf(A)
			end).to.throw(
				"[2mexpect([22m[31mreceived[39m[2m).[22mtoBeInstanceOf[2m([22m[32mexpected[39m[2m)[22m\n\n" ..
				"Expected constructor: [32mA[39m\n\n" ..
				"Received value has no prototype\n" ..
				"Received value: [31m{}[39m"
			)

			jestExpect({}).never.toBeInstanceOf(A)

		end)

		it("passing A.new() and A", function()
			expect(function()
				jestExpect(A.new()).never.toBeInstanceOf(A)
			end).to.throw(
				"[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeInstanceOf[2m([22m[32mexpected[39m[2m)[22m\n\n" ..
				"Expected constructor: never [32mA[39m\n"
			)

			jestExpect(A.new()).toBeInstanceOf(A)
		end)

		it("passing C.new() and B", function()
			expect(function()
				jestExpect(C.new()).never.toBeInstanceOf(B)
			end).to.throw(
				"[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeInstanceOf[2m([22m[32mexpected[39m[2m)[22m\n\n" ..
				"Expected constructor: never [32mB[39m\n" ..
				"Received constructor:       [31mC[39m extends [32mB[39m"
			)

			jestExpect(C.new()).toBeInstanceOf(B)
		end)

		it("passing E.new() and B", function()
			expect(function()
				jestExpect(E.new()).never.toBeInstanceOf(B)
			end).to.throw(
				"[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoBeInstanceOf[2m([22m[32mexpected[39m[2m)[22m\n\n" ..
				"Expected constructor: never [32mB[39m\n" ..
				"Received constructor:       [31mE[39m extends … extends [32mB[39m"
			)

			jestExpect(E.new()).toBeInstanceOf(B)
		end)

		it("failing A.new() and B", function()
			expect(function()
				jestExpect(A.new()).toBeInstanceOf(B)
			end).to.throw(
				"[2mexpect([22m[31mreceived[39m[2m).[22mtoBeInstanceOf[2m([22m[32mexpected[39m[2m)[22m\n\n" ..
				"Expected constructor: [32mB[39m\n" ..
				"Received constructor: [31mA[39m"
			)

			jestExpect(A.new()).never.toBeInstanceOf(B)
		end)
	end)

	describe(".toBeTruthy(), .toBeFalsy()", function()
		-- deviation: can't pass in nil as an argument because it's identical to no argument
		it('does not accept arguments', function()
			expect(function() jestExpect(0).toBeTruthy(1) end).to.throw(
				snapshots['.toBeTruthy(), .toBeFalsy() does not accept arguments 1']
			)

			expect(function()jestExpect(0).never.toBeFalsy(1) end).to.throw(
				snapshots['.toBeTruthy(), .toBeFalsy() does not accept arguments 2']
			)
		end)

		-- deviation: 0, '' and nan are falsy in JS but truthy in Lua so we will treat them as truthy
		for _, testCase in ipairs({
			{},
			true,
			1,
			'a',
			0.5,
			function() end,
			math.huge,
			0,
			'',
			0/0
		}) do
			it(string.format('%s is truthy', stringify(testCase)), function()
				jestExpect(testCase).toBeTruthy()
				jestExpect(testCase).never.toBeFalsy()

				expect(function() jestExpect(testCase).never.toBeTruthy() end).to.throw(snapshots[
					string.format(
						'.toBeTruthy(), .toBeFalsy() %s is truthy 1',
						stringify(testCase)
					)]
				)

				expect(function() jestExpect(testCase).toBeFalsy() end).to.throw(snapshots[
					string.format(
						'.toBeTruthy(), .toBeFalsy() %s is truthy 2',
						stringify(testCase)
					)]
				)
			end)
		end

		it('nil is falsy', function()
			jestExpect(nil).toBeFalsy()
			jestExpect(nil).never.toBeTruthy()

			expect(function() jestExpect(nil).toBeTruthy() end).to.throw(snapshots['.toBeTruthy(), .toBeFalsy() nil is falsy 1'])
			expect(function() jestExpect(nil).never.toBeFalsy() end).to.throw(snapshots['.toBeTruthy(), .toBeFalsy() nil is falsy 2'])
		end)

		it('false is falsy', function()
			jestExpect(false).toBeFalsy()
			jestExpect(false).never.toBeTruthy()

			expect(function() jestExpect(false).toBeTruthy() end).to.throw(snapshots['.toBeTruthy(), .toBeFalsy() false is falsy 1'])
			expect(function() jestExpect(false).never.toBeFalsy() end).to.throw(snapshots['.toBeTruthy(), .toBeFalsy() false is falsy 2'])
		end)
	end)

	describe(".toBeNan()", function()
		it('{pass: true} expect(nan).toBeNan()', function()
			for index, testCase in ipairs({
				math.sqrt(-1),
				math.huge - math.huge,
				0 / 0
			}) do
				jestExpect(testCase).toBeNan()
				expect(function() jestExpect(testCase).never.toBeNan() end).to.throw(snapshots['.toBeNan() {pass: true} expect(nan).toBeNan() ' .. index])
			end
		end)

		it('throws', function()
			for index, testCase in ipairs({
				1,
				'',
				{},
				0.2,
				0,
				math.huge,
				-math.huge
			}) do
				expect(function() jestExpect(testCase).toBeNan() end).to.throw(snapshots['.toBeNan() throws ' .. index])
				jestExpect(testCase).never.toBeNan()
			end
		end)

		-- deviation: tests our alias
		it("aliased as toBeNaN()", function()
			jestExpect(0/0).toBeNaN()
		end)
	end)

	describe(".toBeNil()", function()
		for _, testCase in ipairs({
			{},
			true,
			1,
			'a',
			0.5,
			function() end,
			math.huge
		}) do
			it('fails for ' .. stringify(testCase), function()
				jestExpect(testCase).never.toBeNil()

				expect(function() jestExpect(testCase).toBeNil() end).to.throw(snapshots[".toBeNil() fails for " .. stringify(testCase) .. " 1"])
			end)
		end

		it("fails for null with .not", function()
			expect(function() jestExpect(nil).never.toBeNil() end).to.throw(snapshots[".toBeNil() fails for nil with .never 1"])
		end)

		it("pass for null", function()
			jestExpect(nil).toBeNil()
		end)

		-- deviation: tests our alias
		it("aliased as toBeNull()", function()
			jestExpect(nil).toBeNull()
		end)
	end)

	describe(".toBeDefined() .toBeUndefined()", function()
		for _, testCase in ipairs({
			{},
			true,
			1,
			'a',
			0.5,
			function() end,
			math.huge
		}) do
			it(stringify(testCase) .. ' is defined', function()
				jestExpect(testCase).toBeDefined()

				expect(function() jestExpect(testCase).never.toBeDefined() end).to.throw(snapshots[".toBeDefined() .toBeUndefined() " .. stringify(testCase) .. " is defined 1"])
				expect(function() jestExpect(testCase).toBeUndefined() end).to.throw(snapshots[".toBeDefined() .toBeUndefined() " .. stringify(testCase) .. " is defined 2"])
			end)
		end

		it("nil is undefined", function()
			jestExpect(nil).toBeUndefined()
			jestExpect(nil).never.toBeDefined()

			expect(function()
				jestExpect(nil).toBeDefined()
			end).to.throw(snapshots[".toBeDefined() .toBeUndefined() nil is undefined 1"])

			expect(function()
				jestExpect(nil).never.toBeUndefined()
			end).to.throw(snapshots[".toBeDefined() .toBeUndefined() nil is undefined 2"])
		end)
	end)

	describe(".toBeGreaterThan(), .toBeLessThan(), " ..
		".toBeGreaterThanOrEqual(), .toBeLessThanOrEqual()", function()
		for _, testCase in ipairs({
			{1, 2},
			{-math.huge, math.huge},
			{Number.MIN_SAFE_INTEGER, Number.MAX_SAFE_INTEGER},
			{0x11, 0x22},
			{tonumber("11", 2), tonumber("111", 2)},
			{tonumber("11", 8), tonumber("22", 8)},
			{0.1, 0.2}
		}) do
			local small = testCase[1]
			local big = testCase[2]
			it(string.format("{pass: true} expect(%s).toBeLessThan(%s)", small, big), function()
				jestExpect(small).toBeLessThan(big)
			end)

			it(string.format("{pass: false} expect(%s).toBeLessThan(%s)", big, small), function()
				jestExpect(big).never.toBeLessThan(small)
			end)

			it(string.format("{pass: true} expect(%s).toBeGreaterThan(%s)", big, small), function()
				jestExpect(big).toBeGreaterThan(small)
			end)

			it(string.format("{pass: false} expect(%s).toBeGreaterThan(%s)", small, big), function()
				jestExpect(small).never.toBeGreaterThan(big)
			end)

			it(string.format("{pass: true} expect(%s).toBeLessThanOrEqual(%s)", small, big), function()
				jestExpect(small).toBeLessThanOrEqual(big)
			end)

			it(string.format("{pass: false} expect(%s).toBeLessThanOrEqual(%s)", big, small), function()
				jestExpect(big).never.toBeLessThanOrEqual(small)
			end)

			it(string.format("{pass: true} expect(%s).toBeGreaterThanOrEqual(%s)", big, small), function()
				jestExpect(big).toBeGreaterThanOrEqual(small)
			end)

			it(string.format("{pass: false} expect(%s).toBeGreaterThanOrEqual(%s)", small, big), function()
				jestExpect(small).never.toBeGreaterThanOrEqual(big)
			end)

			it(string.format("throws: [%s, %s]", small, big), function()
				expect(function()
					jestExpect(small).toBeGreaterThan(big)
				end).to.throw(snapshots[string.format(".toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [%s, %s] 1", small, big)])

				expect(function()
					jestExpect(small).never.toBeLessThan(big)
				end).to.throw(snapshots[string.format(".toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [%s, %s] 2", small, big)])

				expect(function()
					jestExpect(big).never.toBeGreaterThan(small)
				end).to.throw(snapshots[string.format(".toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [%s, %s] 3", small, big)])

				expect(function()
					jestExpect(big).toBeLessThan(small)
				end).to.throw(snapshots[string.format(".toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [%s, %s] 4", small, big)])

				expect(function()
					jestExpect(small).toBeGreaterThanOrEqual(big)
				end).to.throw(snapshots[string.format(".toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [%s, %s] 5", small, big)])

				expect(function()
					jestExpect(small).never.toBeLessThanOrEqual(big)
				end).to.throw(snapshots[string.format(".toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [%s, %s] 6", small, big)])

				expect(function()
					jestExpect(big).never.toBeGreaterThanOrEqual(small)
				end).to.throw(snapshots[string.format(".toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [%s, %s] 7", small, big)])

				expect(function()
					jestExpect(big).toBeLessThanOrEqual(small)
				end).to.throw(snapshots[string.format(".toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() throws: [%s, %s] 8", small, big)])
			end)
		end

		for _, testCase in ipairs({
			{1, 1},
			{Number.MIN_SAFE_INTEGER, Number.MIN_SAFE_INTEGER},
			{Number.MAX_SAFE_INTEGER, Number.MAX_SAFE_INTEGER},
			{math.huge, math.huge},
			{-math.huge, -math.huge}
		}) do
			local n1 = testCase[1]
			local n2 = testCase[2]

			it(string.format("equal numbers: [%s, %s]", n1, n2), function()
				jestExpect(n1).toBeGreaterThanOrEqual(n2)
				jestExpect(n1).toBeLessThanOrEqual(n2)

				expect(function()
					jestExpect(n1).never.toBeGreaterThanOrEqual(n2)
				end).to.throw(snapshots[string.format(".toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() equal numbers: [%s, %s] 1", n1, n2)])

				expect(function()
					jestExpect(n1).never.toBeLessThanOrEqual(n2)
				end).to.throw(snapshots[string.format(".toBeGreaterThan(), .toBeLessThan(), .toBeGreaterThanOrEqual(), .toBeLessThanOrEqual() equal numbers: [%s, %s] 2", n1, n2)])
			end)
		end
	end)

	describe(".toContain(), .toContainEqual()", function()
		--local typedArray = {0, 1}

		-- deviation: skipped test with custom iterator
		itSKIP("iterable", function()
			-- const iterable = {
			-- 	*[Symbol.iterator]() {
			-- 		yield 1;
			-- 		yield 2;
			-- 		yield 3;
			-- 	}
			-- }

			-- jestExpect(iterable).toContain(2);
			-- jestExpect(iterable).toContainEqual(2);
			-- expect(() => jestExpect(iterable).not.toContain(1)).toThrowError(
			-- 	'toContain',
			-- )
			-- expect(() => jestExpect(iterable).not.toContainEqual(1)).toThrowError(
			-- 	'toContainEqual',
			-- )
		end)

		for _, testCase in ipairs({
			{{1, 2, 3, 4}, 1},
			{{"a", "b", "c", "d"}, "a"},
			{{Symbol.for_("a")}, Symbol.for_("a")},
			{"abcdef", "abc"},
			{"11112111", "2"},
			{{0, 1}, 1}
		}) do
			it(string.format("%s contains %s", stringify(testCase[1]), stringify(testCase[2])), function()
				jestExpect(testCase[1]).toContain(testCase[2])

				expect(function() jestExpect(testCase[1]).never.toContain(testCase[2]) end).to.throw(snapshots[string.format(
					".toContain(), .toContainEqual() %s contains %s 1", stringify(testCase[1]), stringify(testCase[2]))])
			end)
		end

		for _, testCase in ipairs({
			{{1, 2, 3}, 4},
			{{{}, {}}, {}}
		}) do
			it(string.format("%s does not contain %s", stringify(testCase[1]), stringify(testCase[2])), function()
				jestExpect(testCase[1]).never.toContain(testCase[2])

				expect(function() jestExpect(testCase[1]).toContain(testCase[2]) end).to.throw(snapshots[string.format(
					".toContain(), .toContainEqual() %s does not contain %s 1", stringify(testCase[1]), stringify(testCase[2]))])
			end)
		end

		it("error cases", function()
			expect(function() jestExpect(nil).toContain(1) end).to.throw(snapshots[".toContain(), .toContainEqual() error cases 1"])
		end)

		for _, testCase in ipairs({
			{{1, 2, 3, 4}, 1},
			{{'a', 'b', 'c', 'd'}, 'a'},
			{{Symbol.for_("a")}, Symbol.for_("a")},
			{{{a = 'b'}, {a = 'c'}}, {a = 'b'}},
			{{0, 1}, 1},
			{{{1, 2}, {3, 4}}, {3, 4}}
		}) do
			it(string.format("%s contains a value equal to %s", stringify(testCase[1]), stringify(testCase[2])), function()
				jestExpect(testCase[1]).toContainEqual(testCase[2])

				expect(function() jestExpect(testCase[1]).never.toContainEqual(testCase[2]) end).to.throw(snapshots[string.format(
					".toContain(), .toContainEqual() %s contains a value equal to %s 1", stringify(testCase[1]), stringify(testCase[2]))])
			end)
		end

		for _, testCase in ipairs({
			{{{a = 'b'}, {a = 'c'}}, {a = 'd'}}
		}) do
			it(string.format("%s does not contain a value equal to %s", stringify(testCase[1]), stringify(testCase[2])), function()
				jestExpect(testCase[1]).never.toContainEqual(testCase[2])

				expect(function() jestExpect(testCase[1]).toContainEqual(testCase[2]) end).to.throw(snapshots[string.format(
					".toContain(), .toContainEqual() %s does not contain a value equal to %s 1", stringify(testCase[1]), stringify(testCase[2]))])
			end)
		end

		it("error cases for toContainEqual", function()
			expect(function() jestExpect(nil).toContainEqual(1) end).to.throw(snapshots[".toContain(), .toContainEqual() error cases for toContainEqual 1"])
		end)
	end)

	describe(".toBeCloseTo", function()
		for _, testCase in ipairs({
			{0, 0},
			{0, 0.001},
			{1.23, 1.229},
			{1.23, 1.226},
			{1.23, 1.225},
			{1.23, 1.234},
			{math.huge, math.huge},
			{-math.huge, -math.huge}
		}) do
			local n1 = testCase[1]
			local n2 = testCase[2]
			it(string.format("{pass: true} expect(%s).toBeCloseTo(%s)", n1, n2), function()
				jestExpect(n1).toBeCloseTo(n2)

				expect(function() jestExpect(n1).never.toBeCloseTo(n2) end).to.throw(snapshots[string.format(
					".toBeCloseTo {pass: true} expect(%s).toBeCloseTo(%s) 1", n1, n2)])
			end)
		end

		for _, testCase in ipairs({
			{0, 0.01},
			{1, 1.23},
			{1.23, 1.2249999},
			{math.huge, -math.huge},
			{math.huge, 1.23},
			{-math.huge, -1.23}
		}) do
			local n1 = testCase[1]
			local n2 = testCase[2]
			it(string.format("{pass: false} expect(%s).toBeCloseTo(%s)", n1, n2), function()
				jestExpect(n1).never.toBeCloseTo(n2)

				expect(function() jestExpect(n1).toBeCloseTo(n2) end).to.throw(snapshots[string.format(
					".toBeCloseTo {pass: false} expect(%s).toBeCloseTo(%s) 1", n1, n2)])
			end)
		end

		for _, testCase in ipairs({
			{0, 0.1, 0},
			{0, 0.0001, 3},
			{0, 0.000004, 5},
			{2.0000002, 2, 5}
		}) do
			local n1 = testCase[1]
			local n2 = testCase[2]
			local p = testCase[3]
			it(string.format("{pass: true} expect(%s).toBeCloseTo(%s, %s)", n1, n2, p), function()
				jestExpect(n1).toBeCloseTo(n2, p)

				expect(function() jestExpect(n1).never.toBeCloseTo(n2, p) end).to.throw(snapshots[string.format(
					".toBeCloseTo {pass: true} expect(%s).toBeCloseTo(%s, %s) 1", n1, n2, p)])
			end)
		end

		describe("throws: Matcher error", function()
			it("promise empty isNot false received", function()
				local precision = 3
				local expected = 0
				local received = ''

				expect(function() jestExpect(received).toBeCloseTo(expected, precision) end).to.throw(
					snapshots[".toBeCloseTo throws: Matcher error promise empty isNot false received 1"])
			end)

			it("promise empty isNot true expected", function()
				local received = 0.1
				-- expected is undefined
				expect(function() jestExpect(received).never.toBeCloseTo() end).to.throw(snapshots[
					".toBeCloseTo throws: Matcher error promise empty isNot true expected 1"])
			end)

			-- deviation: omitted promise rejects and resolve tests
		end)
	end)

	describe(".toMatch()", function()
		for _, testCase in ipairs({
			{'foo', 'foo'},
			{'Foo bar', '[fF][oO][oO]'}, -- case insensitive match
			{'Foo bar', RegExp('^Foo', 'i')} -- ROBLOX TODO: change to ^foo when "i" flag is working
		}) do
			local n1 = testCase[1]
			local n2 = testCase[2]
			it(string.format("{pass: true} expect(%s).toMatch(%s)", n1, tostring(n2)), function()
				jestExpect(n1).toMatch(n2)
			end)
		end

		for _, testCase in ipairs({
			{'bar', 'foo'},
			{'bar', RegExp('foo')}
		}) do
			local n1 = testCase[1]
			local n2 = testCase[2]
			it(string.format("throws: [%s %s]", n1, tostring(n2)), function()
				expect(function() jestExpect(n1).toMatch(n2) end).to.throw(snapshots[string.format(
					".toMatch() throws: [%s, %s] 1", n1, tostring(n2))])
			end)
		end

		for _, testCase in ipairs({
			{1, 'foo'},
			{{}, 'foo'},
			{true, 'foo'},
			{RegExp('foo', 'i'), 'foo'},
			{function() end, 'foo'},
			{nil, 'foo'}
		}) do
			local n1 = testCase[1]
			local n2 = testCase[2]
			it(string.format("throws if non String actual value passed: [%s, %s]", stringify(n1), stringify(n2)), function()
				expect(function() jestExpect(n1).toMatch(n2) end).to.throw(snapshots[string.format(
					".toMatch() throws if non String actual value passed: [%s, %s] 1", stringify(n1), stringify(n2))])
			end)
		end

		for _, testCase in ipairs({
			{'foo', 1},
			{'foo', {}},
			{'foo', true},
			{'foo', function() end},
			{'foo', nil}
		}) do
			local n1 = testCase[1]
			local n2 = testCase[2]
			it(string.format("throws if non String/RegExp expected value passed: [%s, %s]", stringify(n1), stringify(n2)), function()
				expect(function() jestExpect(n1).toMatch(n2) end).to.throw(snapshots[string.format(
					".toMatch() throws if non String/RegExp expected value passed: [%s, %s] 1", stringify(n1), stringify(n2))])
			end)
		end

		-- deviation: we use toContain here as in our translation toMatch is
		-- used for patterns and toContain is used for explicit string matching
		it("escapes strings properly", function()
			jestExpect('this?: throws').toContain('this?: throws')
		end)

		it('does not maintain RegExp state between calls (lua)', function()
			local regex = RegExp("[fF]\\d+", 'i') -- ROBLOX TODO: change to [f] when "i" flag is working

			jestExpect('f123').toMatch(regex)
			jestExpect('F456').toMatch(regex)
			-- deviation: omitted expect call for RegExp state
		end)

		it('tests regex logic', function()
			jestExpect("Cristopher").never.toMatch("Stop")
			jestExpect("Cristopher").toMatch("stop")
			jestExpect("Cristopher").never.toMatch(RegExp("Stop"))
			jestExpect("Cristopher").toMatch(RegExp("stop"))
		end)
	end)

	describe(".toHaveLength", function()
		-- deviation: {function() end, 0} is omitted, can't get the argument count of a function in Lua
		for _, testCase in ipairs({
			{{1, 2}, 2},
			{{}, 0},
			{{'a', 'b'}, 2},
			{'', 0}
		}) do
			local received = testCase[1]
			local length = testCase[2]
			local testname = string.format(
				'{pass: true} expect(%s).toHaveLength(%s)',
				stringify(received),
				length
			)
			it(testname, function()
				jestExpect(received).toHaveLength(length)
				expect(function()
					jestExpect(received).never.toHaveLength(length)
				end).to.throw(snapshots['.toHaveLength ' .. testname.. ' 1'])
			end)
		end

		-- deviation: custom test to allow for Lua objects with a length value
		local obj = { length = 12 }
		it(string.format(
			'{pass: false} expect(%s).toHaveLength(12)',
			stringify(obj)
		), function()
			jestExpect(obj).toHaveLength(12)
		end)

		-- deviation: omitted function test, no argument count of function in lua
		for _, testCase in ipairs({
			{{1, 2}, 3},
			{{}, 1},
			{{'a', 'b'}, 99},
			{'abc', 66},
			{'', 1}
		}) do
			local received = testCase[1]
			local length = testCase[2]
			local testname = string.format(
				'{pass: false} expect(%s).toHaveLength(%s)',
				stringify(received),
				length
			)
			it(testname, function()
				jestExpect(received).never.toHaveLength(length)
				expect(function()
					jestExpect(received).toHaveLength(length)
				end).to.throw(snapshots['.toHaveLength ' .. testname .. ' 1'])
			end)
		end

		it('error cases', function()
			expect(function()
				jestExpect({a = 9}).toHaveLength(1)
			end).to.throw(snapshots['.toHaveLength error cases 1'])
			expect(function()
				jestExpect(0).toHaveLength(1)
			end).to.throw(snapshots['.toHaveLength error cases 2'])
			expect(function()
				jestExpect(nil).never.toHaveLength(1)
			end).to.throw(snapshots['.toHaveLength error cases 3'])
		end)

		describe('matcher error expected length', function()
			it('not number', function()
				local expected = '3'
				local received = 'abc'
				expect(function()
					jestExpect(received).never.toHaveLength(expected)
				end).to.throw(snapshots['.toHaveLength matcher error expected length not number 1'])
			end)

			-- deviation: remove promise rejects/resolves in the following tests for now
			it('number inf', function()
				local expected = math.huge
				local received = 'abc'
				expect(function()
					jestExpect(received).toHaveLength(expected)
				end).to.throw(snapshots['.toHaveLength matcher error expected length number inf 1'])
			end)

			it('number nan', function()
				local expected = 0/0
				local received = 'abc'
				expect(function()
					jestExpect(received).never.toHaveLength(expected)
				end).to.throw(snapshots['.toHaveLength matcher error expected length number nan 1'])
			end)

			it('number float', function()
				local expected = 0.5
				local received = 'abc'
				expect(function()
					jestExpect(received).toHaveLength(expected)
				end).to.throw(snapshots['.toHaveLength matcher error expected length number float 1'])
			end)

			it('number negative integer', function()
				local expected = -3
				local received = 'abc'
				expect(function()
					jestExpect(received).never.toHaveLength(expected)
				end).to.throw(snapshots['.toHaveLength matcher error expected length number negative integer 1'])
			end)
		end)
	end)

	describe(".toHaveProperty()", function()
		local pathDiff = {'children', 1}

		local receivedDiffSingle = {
			children = {'"That cartoon"'},
			props = nil,
			type = 'p'
		}

		local valueDiffSingle = '"That cat cartoon"'

		local receivedDiffMultiple = {
			children = {
				'Roses are red.\nViolets are blue.\nTesting with Jest is good for you.'
			},
			props = nil,
			type = 'pre'
		}

		local valueDiffMultiple = 'Roses are red, violets are blue.\nTesting with Jest\nIs good for you.'

		for _, testCase in ipairs({
			{{a = {b = {c = {d = 1}}}}, 'a.b.c.d', 1},
			{{a = {b = {c = {d = 1}}}}, {'a', 'b', 'c', 'd'}, 1},
			{{['a.b.c.d'] = 1}, {'a.b.c.d'}, 1},
			{{a = {b = {1, 2, 3}}}, {'a', 'b', 2}, 2},
			{{a = {b = {1, 2, 3}}}, {'a', 'b', 2}, jestExpect.any("number")},
			{{a = 0}, 'a', 0},
			{{a = {b = false}}, 'a.b', false},
			--[[
				deviation: we omit the following test case since it isn't behavior
				we can easily support and maintain consistency with in Lua. The test
				case also looks like it is slated for removal in upstream in the next
				major breaking change
				{{a = {}}, 'a.b', nil}
			]]
			{{a = {b = {c = 5}}}, 'a.b', {c = 5}},
			{Object.assign({}, {property = 1}), 'property', 1},
			{'', 'len', jestExpect.any("function")}
		}) do
			local obj = testCase[1]
			local keyPath = testCase[2]
			local value = testCase[3]

			it(string.format("{pass: true} expect(%s).toHaveProperty(%s, %s)",
				stringify(obj), stringify(keyPath), stringify(value)), function()
					jestExpect(obj).toHaveProperty(keyPath, value)
					expect(function() jestExpect(obj).never.toHaveProperty(keyPath, value) end).to.throw(snapshots[
						string.format(".toHaveProperty() {pass: true} expect(%s).toHaveProperty(%s, %s) 1",
							stringify(obj), stringify(keyPath), stringify(value))])
			end)
		end

		-- deviation: we omit two test cases where the property to check for
		-- is undefined in upstream and we do not support checking for nil in
		-- toHaveProperty
		for _, testCase in ipairs({
			{{a = {b = {c = {d = 1}}}}, 'a.b.ttt.d', 1},
			{{a = {b = {c = {d = 1}}}}, 'a.b.c.d', 2},
			{{['a.b.c.d'] = 1}, 'a.b.c.d', 2},
			{{['a.b.c.d'] = 1}, {'a.b.c.d'}, 2},
			{receivedDiffSingle, pathDiff, valueDiffSingle},
			{receivedDiffMultiple, pathDiff, valueDiffMultiple},
			{{a = {b = {c = {d = 1}}}}, {'a', 'b', 'c', 'd'}, 2},
			{{a = {b = {c = {}}}}, 'a.b.c.d', 1},
			{{a = 1}, 'a.b.c.d', 5},
			{{}, 'a', 'test'},
			--{{a = {b = 3}}, 'a.b', nil},
			{1, 'a.b.c', 'test'},
			{'abc', 'a.b.c', {a = 5}},
			{{a = {b = {c = 5}}}, 'a.b', {c = 4}},
			-- {{a = {}}, 'a.b', nil}
		}) do
			local obj = testCase[1]
			local keyPath = testCase[2]
			local value = testCase[3]

			it(string.format("{pass: false} expect(%s).toHaveProperty(%s, %s)",
				stringify(obj), stringify(keyPath), stringify(value)), function()
				expect(function() jestExpect(obj).toHaveProperty(keyPath, value) end).to.throw(snapshots[
					string.format(".toHaveProperty() {pass: false} expect(%s).toHaveProperty(%s, %s) 1",
						stringify(obj), stringify(keyPath), stringify(value))])

				jestExpect(obj).never.toHaveProperty(keyPath, value)
			end)
		end

		for _, testCase in ipairs({
			{{a = {b = {c = {d = 1}}}}, 'a.b.c.d'},
			{{a = {b = {c = {d = 1}}}}, {'a', 'b', 'c', 'd'}},
			{{['a.b.c.d'] = 1}, {'a.b.c.d'}},
			{{a = {b = {1, 2, 3}}}, {'a', 'b', 2}},
			{{a = 0}, 'a'},
			{{a = {b = false}}, 'a.b'},
		}) do
			local obj = testCase[1]
			local keyPath = testCase[2]

			it(string.format("{pass: true} expect(%s).toHaveProperty(%s)",
				stringify(obj), stringify(keyPath)), function()
					jestExpect(obj).toHaveProperty(keyPath)
					expect(function() jestExpect(obj).never.toHaveProperty(keyPath) end).to.throw(snapshots[
						string.format(".toHaveProperty() {pass: true} expect(%s).toHaveProperty(%s) 1",
							stringify(obj), stringify(keyPath))])
			end)
		end

		for _, testCase in ipairs({
			{nil, 'a.b'},
			{nil, 'a'},
			{{a = {b = {}}}, nil},
			{{a = {b = {}}}, 1},
			{{}, {}}
		}) do
			local obj = testCase[1]
			local keyPath = testCase[2]

			it(string.format("{error} expect(%s).toHaveProperty(%s)", stringify(obj), stringify(keyPath)), function()
				expect(function() jestExpect(obj).toHaveProperty(keyPath) end).to.throw(snapshots[
					string.format(".toHaveProperty() {error} expect(%s).toHaveProperty(%s) 1", stringify(obj), stringify(keyPath))])
			end)
		end
	end)

	describe("toMatchObject()", function()
		local function testNotToMatchSnapshots(tuples, innerDescribePath)
			for index, testCase in ipairs(tuples) do
				local n1 = testCase[1]
				local n2 = testCase[2]

				local formatString = "toMatchObject() " .. innerDescribePath .. "{pass: true} expect(%s).toMatchObject(%s) 1"
				it(string.format("{pass: true} expect(%s).toMatchObject(%s)", stringify(n1), stringify(n2)), function()
					jestExpect(n1).toMatchObject(n2)

					expect(function() jestExpect(n1).never.toMatchObject(n2) end).to.throw(snapshots[
						string.format(formatString, stringify(n1), stringify(n2))])
				end)
			end
		end

		local function testToMatchSnapshots(tuples, innerDescribePath)
			for index, testCase in ipairs(tuples) do
				local n1 = testCase[1]
				local n2 = testCase[2]

				local formatString = "toMatchObject() " .. innerDescribePath .. "{pass: false} expect(%s).toMatchObject(%s) 1"
				it(string.format("{pass: false} expect(%s).toMatchObject(%s)", stringify(n1), stringify(n2)), function()
					jestExpect(n1).never.toMatchObject(n2)

					expect(function() jestExpect(n1).toMatchObject(n2) end).to.throw(snapshots[
						string.format(formatString, stringify(n1), stringify(n2))])
				end)
			end
		end

		describe('circular references', function()
			describe('simple circular references', function()
				local circularObjA1 = {a = 'hello'}
				circularObjA1.ref = circularObjA1

				local circularObjB = {a = 'world'}
				circularObjB.ref = circularObjB

				local circularObjA2 = {a = 'hello'}
				circularObjA2.ref = circularObjA2

				local primitiveInsteadOfRef = {}
				primitiveInsteadOfRef.ref = 'not a ref'

				testNotToMatchSnapshots({
					{circularObjA1, {}},
					{circularObjA2, circularObjA1}
				}, "circular references simple circular references ")

				testToMatchSnapshots({
					{{}, circularObjA1},
					{circularObjA1, circularObjB},
					{primitiveInsteadOfRef, circularObjA1}
				}, "circular references simple circular references ")
			end)

			describe("transitive circular references", function()
				local transitiveCircularObjA1 = {a = 'hello'}
				transitiveCircularObjA1.nestedObj = {parentObj = transitiveCircularObjA1}

				local transitiveCircularObjA2 = {a = 'hello'}
				transitiveCircularObjA2.nestedObj = {
					parentObj = transitiveCircularObjA2
				}

				local transitiveCircularObjB = {a = 'world'}
				transitiveCircularObjB.nestedObj = {
					parentObj = transitiveCircularObjB
				}

				local primitiveInsteadOfRef = {}
				primitiveInsteadOfRef.nestedObj = {
					parentObj = 'not the parent ref'
				}

				testNotToMatchSnapshots({
					{transitiveCircularObjA1, {}},
					{transitiveCircularObjA2, transitiveCircularObjA1}
				}, "circular references transitive circular references ")

				testToMatchSnapshots({
					{{}, transitiveCircularObjA1},
					{transitiveCircularObjB, transitiveCircularObjA1},
					{primitiveInsteadOfRef, transitiveCircularObjA1}
				}, "circular references transitive circular references ")
			end)
		end)

		testNotToMatchSnapshots({
			{{a = 'b', c = 'd'}, {a = 'b'}},
			{
				{a = 'b', c = 'd'},
				{a = 'b', c = 'd'}
			},
			{
				{a = 'b', t = {x = {r = 'r'}, z = 'z'}},
				{a = 'b', t = {z = 'z'}}
			},
			{{a = 'b', t = {x = {r = 'r'}, z = 'z'}}, {t = {x = {r = 'r'}}}},
			{{a = {3, 4, 5}, b = 'b'}, {a = {3, 4, 5}}},
			{{a = {3, 4, 5, 'v'}, b = 'b'}, {a = {3, 4, 5, 'v'}}},
			{{a = 1, c = 2}, {a = jestExpect.any("number")}},
			{{a = {x = 'x', y = 'y'}}, {a = {x = jestExpect.any("string")}}},
			{{a = DateTime.fromUniversalTime(2015, 11, 30), b = 'b'}, {a = DateTime.fromUniversalTime(2015, 11, 30)}},
			-- {{a = nil, b = 'b'}, {a = nil}}, -- funky test
			{{a = "undefined", b = 'b'}, {a = "undefined"}},
			{{a = {{a = 'a', b = 'b'}}}, {a = {{a = 'a'}}}},
			{
				{1, 2},
				{1, 2}
			},
			{{}, {}},
			{
				{a = 'b', c = 'd', [Symbol.for_('jest')] = 'jest'},
				{a = 'b', [Symbol.for_('jest')] = 'jest'}
			},
			{
				{a = 'b', c = 'd', [Symbol.for_('jest')] = 'jest'},
				{a = 'b', c = 'd', [Symbol.for_('jest')] = 'jest'}
			}
		}, "")

		testToMatchSnapshots({
			{{a = 'b', c = 'd'}, {e = 'b'}},
			{
				{a = 'b', c = 'd'},
				{a = 'b!', c = 'd'}
			},
			{{a = 'a', c = 'd'}, {a = jestExpect.any("number")}},
			{
				{a = 'b', t = {x = {r = 'r'}, z = 'z'}},
				{a = 'b', t = {z = {3}}},
			},
			{{a = 'b', t = {x = {r = 'r'}, z = 'z'}}, {t = {l = {r = 'r'}}}},
			{{a = {3, 4, 5}, b = 'b'}, {a = {3, 4, 5, 6}}},
			{{a = {3, 4, 5}, b = 'b'}, {a = {3, 4}}},
			{{a = {3, 4, 'v'}, b = 'b'}, {a = {'v'}}},
			{{a = {3, 4, 5}, b = 'b'}, {a = {b = 4}}},
			{{a = {3, 4, 5}, b = 'b'}, {a = {b = jestExpect.any("string")}}},
			{
				{1, 2},
				{1, 3},
			},
			{{0}, {-0}},
		}, "")

		for _, testCase in ipairs({
			{nil, {}},
			{4, {}},
			{'44', {}},
			{true, {}},
			{{}, nil},
			{{}, 4},
			{{}, 'some string'},
			{{}, true},
		}) do
			local n1 = testCase[1]
			local n2 = testCase[2]

			it(string.format("throws expect(%s).toMatchObject(%s)", stringify(n1), stringify(n2)), function()
				expect(function() jestExpect(n1).toMatchObject(n2) end).to.throw(snapshots[
					string.format("toMatchObject() throws expect(%s).toMatchObject(%s) 1", stringify(n1), stringify(n2))])
			end)
		end

		it("does not match properties up in the prototype chain", function()
			local a = {}
			a.ref = a

			local b = {}
			setmetatable(b, {__index = a})
			b.other = 'child'

			local matcher = {other = 'child'}
			matcher.ref = matcher

			jestExpect(b).never.toMatchObject(matcher)

			expect(function() jestExpect(b).toMatchObject(matcher) end).to.throw(snapshots[
				"toMatchObject() does not match properties up in the prototype chain 1"])
		end)
	end)
end
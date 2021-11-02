-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/jest-matcher-utils/src/__tests__/Replaceable.test.ts
-- /**
-- * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
-- *
-- * This source code is licensed under the MIT license found in the
-- * LICENSE file in the root directory of this source tree.
-- */

return function()
	local Workspace = script.Parent.Parent
	local Modules = Workspace.Parent

	local Replaceable = require(Workspace.Replaceable)

	local equals = require(Modules.Expect.jasmineUtils).equals

	local createSpy = require(Modules.JestJasmine2.jasmine.createSpy)

	describe("Replaceable", function ()
		describe("constructor", function()
			it("init with object", function()
				local replaceable = Replaceable.new({a = 1, b = 2})
				expect(equals(replaceable.object, {a = 1, b = 2})).to.equal(true)
				expect(replaceable.type).to.equal("table")
			end)

			it("init with array", function()
				local replaceable = Replaceable.new({1, 2, 3})
				expect(equals(replaceable.object, {1, 2, 3})).to.equal(true)
				expect(replaceable.type).to.equal("table")
			end)

			-- deviation: test skipped because it tests a map that is identical
			-- to the object test above in lua
			itSKIP("init with Map", function()
				--[[
					const replaceable = new Replaceable(
						new Map([
							['a', 1],
							['b', 2],
						]),
					);
					expect(replaceable.object).toEqual(
						new Map([
							['a', 1],
							['b', 2],
						]),
					);
					expect(replaceable.type).toBe('map');
				]]
			end)

			it("init with other type should throw error", function()
				expect(function()
					Replaceable.new(DateTime.now())
				end).to.throw("Type DateTime is not supported in Replaceable!")
			end)
		end)

		describe("get", function()
			it("get object item", function()
				local replaceable = Replaceable.new({a = 1, b = 2})
				expect(replaceable:get("b")).to.equal(2)
			end)

			it("get array item", function()
				local replaceable = Replaceable.new({1, 2, 3})
				expect(replaceable:get(2)).to.equal(2)
			end)

			-- deviation: test skipped because it tests a map that is identical
			-- to the object test above in lua
			itSKIP("get Map item", function()
				--[[
					const replaceable = new Replaceable(
						new Map([
							['a', 1],
							['b', 2],
						]),
					);
					expect(replaceable.get('b')).toBe(2);
				]]
			end)
		end)

		describe("set", function()
			it("set object item", function()
				local replaceable = Replaceable.new({a = 1, b = 2})
				replaceable:set("b", 3)
				expect(equals(replaceable.object, {a = 1, b = 3})).to.equal(true)
			end)

			it("set array item", function()
				local replaceable = Replaceable.new({1, 2, 3})
				replaceable:set(2, 3)
				expect(equals(replaceable.object, {1, 3, 3})).to.equal(true)
			end)

			-- deviation: test skipped because it tests a map that is identical
			-- to the object test above in lua
			itSKIP("set Map item", function()
				--[[
					const replaceable = new Replaceable(
						new Map([
							['a', 1],
							['b', 2],
						]),
					);
					replaceable.set('b', 3);
					expect(replaceable.object).toEqual(
						new Map([
							['a', 1],
							['b', 3],
						]),
					);
				]]
			end)
		end)

		describe("forEach", function()
			--[[
				deviation: we have to use this sorting function to sort the
				calls made by the forEach method since the forEach method does
				not follow any deterministic order in iterating because Lua
				tables don't have any inherent order
			]]
			function sortingFunction(x, y)
				return x[1] <= y[1]
			end

			it("object forEach", function()
				local object = {a = 1, b = 2, jest = 3}
				local replaceable = Replaceable.new(object)

				local spy = createSpy("fn")
				replaceable:forEach(spy)
				expect(spy.calls:count()).to.equal(3)
				local args = spy.calls:allArgs()

				table.sort(args, sortingFunction)
				expect(equals(args[1], {1, 'a', object})).to.equal(true)
				expect(equals(args[2], {2, 'b', object})).to.equal(true)
				expect(equals(args[3], {3, 'jest', object})).to.equal(true)
			end)

			it("array forEach", function()
				-- deviation: test changed from {1, 2, 3} --> {4, 5, 6} for
				-- clarity between table values and table indices
				local object = {4, 5, 6}
				local replaceable = Replaceable.new(object)

				local spy = createSpy("fn")
				replaceable:forEach(spy)
				expect(spy.calls:count()).to.equal(3)
				local args = spy.calls:allArgs()

				table.sort(args, sortingFunction)
				expect(equals(args[1], {4, 1, object})).to.equal(true)
				expect(equals(args[2], {5, 2, object})).to.equal(true)
				expect(equals(args[3], {6, 3, object})).to.equal(true)
			end)

			it("map forEach", function()
				local object = {a = 1, b = 2}
				local replaceable = Replaceable.new(object)

				local spy = createSpy("fn")
				replaceable:forEach(spy)
				expect(spy.calls:count()).to.equal(2)
				local args = spy.calls:allArgs()

				table.sort(args, sortingFunction)
				expect(equals(args[1], {1, 'a', object})).to.equal(true)
				expect(equals(args[2], {2, 'b', object})).to.equal(true)
			end)

			-- deviation: test skipped because we don't have an enumerable
			-- property in lua
			itSKIP("forEach should ignore nonenumerable property", function()
				--[[
					const symbolKey = Symbol('jest');
					const symbolKey2 = Symbol('awesome');
					const object = {a: 1, [symbolKey]: 3};
					Object.defineProperty(object, 'b', {
						configurable: true,
						enumerable: false,
						value: 2,
						writable: true,
					});
					Object.defineProperty(object, symbolKey2, {
						configurable: true,
						enumerable: false,
						value: 4,
						writable: true,
					});
					const replaceable = new Replaceable(object);
					const cb = jest.fn();
					replaceable.forEach(cb);
					expect(cb).toHaveBeenCalledTimes(2);
					expect(cb.mock.calls[0]).toEqual([1, 'a', object]);
					expect(cb.mock.calls[1]).toEqual([3, symbolKey, object]);
				]]
			end)
		end)

		describe("isReplaceable", function()
			it("should return true if two object types equal and support", function()
				expect(Replaceable.isReplaceable({a = 1}, {b = 2})).to.equal(true)
				expect(Replaceable.isReplaceable({}, {1, 2, 3})).to.equal(true)
				expect(Replaceable.isReplaceable({}, {a = 1, b = 2})).to.equal(true)
			end)

			-- deviation: test skipped because we don't have different object
			-- types in Lua, we only have tables
			itSKIP("should return false if two object types not equal", function()
				--[[
				      expect(Replaceable.isReplaceable({a: 1}, [1, 2, 3])).toBe(false);
				]]
			end)

			it("should return false if object types not support", function()
				expect(Replaceable.isReplaceable('foo', 'bar')).to.equal(false)
			end)
		end)
	end)
end
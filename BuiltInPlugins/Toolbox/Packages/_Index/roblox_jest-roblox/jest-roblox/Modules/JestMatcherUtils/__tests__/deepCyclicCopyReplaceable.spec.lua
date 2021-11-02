-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/jest-matcher-utils/src/__tests__/deepCyclicCopyReplaceable.test.ts
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

	local Number = require(Packages.LuauPolyfill).Number

	local deepCyclicCopyReplaceable = require(Workspace.deepCyclicCopyReplaceable)

	local equals = require(Modules.Expect.jasmineUtils).equals

	type anyTable = { [any]: any }

	it("returns the same value for primitive or function values", function()
		local fn = function() end

		expect(deepCyclicCopyReplaceable(nil)).to.equal(nil)
		expect(deepCyclicCopyReplaceable(true)).to.equal(true)
		expect(deepCyclicCopyReplaceable(42)).to.equal(42)
		expect(Number.isNaN(deepCyclicCopyReplaceable(0/0))).to.equal(true)
		expect(deepCyclicCopyReplaceable('foo')).to.equal('foo')
		expect(deepCyclicCopyReplaceable(fn)).to.equal(fn)
	end)

	-- deviation: test skipped because Lua doesn't have functionality
	-- corresponding to these property descriptors
	itSKIP("convert accessor descriptor into value descriptor", function()
		--[[
			const obj = {
				set foo(_) {},
				get foo() {
					return 'bar';
				},
			};
			expect(Object.getOwnPropertyDescriptor(obj, 'foo')).toEqual({
				configurable: true,
				enumerable: true,
				get: expect.any(Function),
				set: expect.any(Function),
			});
			const copy = deepCyclicCopyReplaceable(obj);

			expect(Object.getOwnPropertyDescriptor(copy, 'foo')).toEqual({
				configurable: true,
				enumerable: true,
				value: 'bar',
				writable: true,
			});
		]]
	end)

	-- deviation: test skipped because Lua has no concept of enumerables and
	-- non-enumerables
	itSKIP("shuold not skips non-enumerables", function()
		--[[
			const obj = {};
			Object.defineProperty(obj, 'foo', {enumerable: false, value: 'bar'});

			const copy = deepCyclicCopyReplaceable(obj);

			expect(Object.getOwnPropertyDescriptors(copy)).toEqual({
				foo: {
					configurable: true,
					enumerable: false,
					value: 'bar',
					writable: true,
				},
			});
		]]
	end)

	-- deviation: test skipped because Lua has no Symbol type
	itSKIP("copies symbols", function()
		--[[
			const symbol = Symbol('foo');
  			const obj = {[symbol]: 42};

  			expect(deepCyclicCopyReplaceable(obj)[symbol]).toBe(42);
		]]
	end)

	it("copies arrays as array objects", function()
		local array = {42, 'foo', 'bar', {}, {}}
		local copy = deepCyclicCopyReplaceable(array)

		expect(equals(copy, array)).to.equal(true)
		expect(array ~= copy).to.equal(true)
		expect(typeof(array) == 'table').to.equal(true)
	end)

	it("handles cyclic dependencies", function()
		local cyclic: anyTable = {a = 42, subcycle = {}}

		cyclic.subcycle.baz = cyclic
		cyclic.bar = cyclic

		expect(function() deepCyclicCopyReplaceable(cyclic) end).never.to.throw()

		local copy = deepCyclicCopyReplaceable(cyclic)

		expect(copy.a).to.equal(42)
		expect(equals(copy.bar, copy)).to.equal(true)
		expect(equals(copy.subcycle.baz, copy)).to.equal(true)
	end)

	it("Copy Map", function()
		local map = {a = 1, b = 2}

		local copy = deepCyclicCopyReplaceable(map)

		expect(equals(map, copy)).to.equal(true)

		-- deviation: omitted expect call because there's no functionality to
		-- compare constructors in the same way
		-- expect(copy.constructor).toBe(Map);
	end)

	it("Copy cyclic Map", function()
		local map = {a = 1, b = 2}
		map.map = map
		expect(equals(map, deepCyclicCopyReplaceable(map))).to.equal(true)
	end)

	it("return same value for built-in object type except array, map and object", function()
		local date = DateTime.now()
		local numberArray = {1, 2, 3}
		local set = {foo = true, bar = true}

		expect(deepCyclicCopyReplaceable(date)).to.equal(date)
		expect(equals(deepCyclicCopyReplaceable(numberArray), numberArray)).to.equal(true)
		expect(equals(deepCyclicCopyReplaceable(set), set)).to.equal(true)
		-- deviation: omitted expect calls because there are no distinct
		-- buffer or regular expression types in Lua
	end)

	-- deviation: test skipped because Lua has no Symbol type
	itSKIP("should copy object symbol key property", function()
		--[[
			const symbolKey = Symbol.for('key');
			expect(deepCyclicCopyReplaceable({[symbolKey]: 1})).toEqual({[symbolKey]: 1});
		]]
	end)

	-- deviation: test skipped because Lua doesn't have properties like
	-- 'configurable' and 'writable'
	itSKIP("should set writable, configurable to true", function()
		--[[
			const a = {};
			Object.defineProperty(a, 'key', {
				configurable: false,
				enumerable: true,
				value: 1,
				writable: false,
			});
			const copied = deepCyclicCopyReplaceable(a);
			expect(Object.getOwnPropertyDescriptors(copied)).toEqual({
				key: {configurable: true, enumerable: true, value: 1, writable: true},
			});
		]]
	end)

	-- deviation: Test not present in upstream
	it("should keep metatable on copied table", function()
		local a = {}
		setmetatable(a, {test = 1})

		expect(getmetatable(deepCyclicCopyReplaceable(a))["test"]).to.equal(1)
	end)
end
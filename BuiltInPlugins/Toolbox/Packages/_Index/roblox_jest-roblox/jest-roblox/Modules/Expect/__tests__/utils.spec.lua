-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/__tests__/utils.test.ts
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

	local stringify = require(Modules.JestMatcherUtils).stringify

	local emptyObject = require(Workspace.utils).emptyObject
	local getObjectSubset = require(Workspace.utils).getObjectSubset
	local getPath = require(Workspace.utils).getPath
	local iterableEquality = require(Workspace.utils).iterableEquality
	local subsetEquality = require(Workspace.utils).subsetEquality

	local equals = require(Workspace.jasmineUtils).equals

	type Array<T> = { T }

	type GetPath = {
		hasEndProp: boolean?,
		lastTraversedObject: any,
		traversedPath: Array<string>,
		value: any?
	}

	describe("getPath()", function()
		it("property exists", function()
			expect(equals(
				getPath({a = {b = {c = 5}}}, "a.b.c"),
				{
					hasEndProp =  true,
					lastTraversedObject = {c = 5},
					traversedPath = {"a", "b", "c"},
					value = 5
				}
			)).to.equal(true)

			expect(equals(
				getPath({a = {b = {c = {d = 1}}}}, "a.b.c.d"),
				{
					hasEndProp = true,
					lastTraversedObject = {d = 1},
					traversedPath = {"a", "b", "c", "d"},
					value = 1
				}
			)).to.equal(true)
		end)

		it("property doesnt exist", function()
			expect(equals(
				getPath({a = {b = {}}}, "a.b.c"),
				{
					hasEndProp = false,
					lastTraversedObject = {},
					traversedPath = {"a", "b"},
					value = nil
				}
			)).to.equal(true)
		end)

		it("property exist but undefined", function()
			expect(equals(
				getPath({a = {b = {c = "undefined"}}}, "a.b.c"),
				{
					hasEndProp = true,
					lastTraversedObject = {c = "undefined"},
					traversedPath = {"a", "b", "c"},
					value = "undefined"
				}
			)).to.equal(true)
		end)

		-- deviation: modified test because we don't have built in
		it("property is a getter on class instance", function()
			local A = {}
			A.a = "a"
			A.b = {c = "c"}

			expect(equals(
				getPath(A, "a"),
				{
					hasEndProp = true,
					lastTraversedObject = {a = "a", b = {c = "c"}},
					traversedPath = {"a"},
					value = "a"
				}
			)).to.equal(true)

			expect(equals(
				getPath(A, "b.c"),
				{
					hasEndProp = true,
					lastTraversedObject = {c = "c"},
					traversedPath = {"b", "c"},
					value = "c"
				}
			)).to.equal(true)
		end)

		it("property is inherited", function()
			local A = {}
			local prototypeA = {a = "a"}
			setmetatable(A, {__index = prototypeA})

			expect(equals(
				getPath(A, "a"),
				{
					hasEndProp = true,
					lastTraversedObject = A,
					traversedPath = {"a"},
					value = "a",
				}
			)).to.equal(true)
		end)

		it("path breaks", function()
			expect(equals(
				getPath({a = {}}, "a.b.c"),
				{
					hasEndProp = false,
					lastTraversedObject = {},
					traversedPath = {"a"},
					value = nil
				}
			)).to.equal(true)
		end)

		it("empty object at the end", function()
			expect(equals(
				getPath({a = {b = {c = {}}}}, "a.b.c.d"),
				{
					hasEndProp = false,
					lastTraversedObject = {},
					traversedPath = {"a", "b", "c"},
					value = nil
				}
			)).to.equal(true)
		end)
	end)

	describe("getObjectSubset", function()
		local fixtures = {
			{{a = "b", c = "d"}, {a = "d"}, {a = "b"}},
			{{a = {1, 2}, b = "b"}, {a = {3, 4}}, {a = {1, 2}}},
			{{{a = "b", c = "d"}}, {{a = "z"}}, {{a = "b"}}},
			{
			 	{1, 2},
			 	{1, 2, 3},
			 	{1, 2},
			},
			{{a = {1}}, {a = {1, 2}}, {a = {1}}},
			{DateTime.fromUniversalTime(2015, 11, 30), DateTime.fromUniversalTime(2015, 12, 30), DateTime.fromUniversalTime(2015, 11, 30)},
		}

		for key, value in ipairs(fixtures) do
			it(string.format("expect(getObjectSubset(%s, %s)).toEqual(%s)",
				stringify(value[1]), stringify(value[2]), stringify(value[3])), function()
				expect(equals(getObjectSubset(value[1], value[2]), value[3])).to.equal(true)
			end)
		end

		describe("returns the object instance if the subset has no extra properties", function()
			it("Date", function()
				local object = DateTime.fromUniversalTime(2015, 11, 30)
				local subset = DateTime.fromUniversalTime(2016, 12, 30)

				expect(getObjectSubset(object, subset)).to.equal(object)
			end)
		end)

		describe("returns the subset instance if its property values are equal", function()
			it("Object", function()
				local object = {key0 = "zero", key1 = "one", key2 = "two"}
				local subset = {key0 = "zero", key2 = "two"}

				expect(equals(getObjectSubset(object, subset), subset)).to.equal(true)
			end)
		end)

		describe("Uint8Array", function()
			local equalObject = {0, 0, 0}
			local typedArray = {0, 0, 0}

			it("expected", function()
				local object = equalObject
				local subset = typedArray

				expect(equals(getObjectSubset(object, subset), subset)).to.equal(true)
			end)

			it("received", function()
				local object = typedArray
				local subset = equalObject

				expect(equals(getObjectSubset(object, subset), subset)).to.equal(true)
			end)
		end)

		describe("calculating subsets of objects with circular references", function()
			it("simple circular references", function()
				type CircularObj = {a: string?, b: string?, ref: any?}

				local nonCircularObj = {a = "world", b = "something"}

				local circularObjA: CircularObj = {a = "hello"}
				circularObjA.ref = circularObjA

				local circularObjB: CircularObj = {a = "world"}
				circularObjB.ref = circularObjB

				local primitiveInsteadOfRef: CircularObj = {b = "something"}
				primitiveInsteadOfRef.ref = "not a ref"

				local nonCircularRef: CircularObj = {b = "something"}
				nonCircularRef.ref = {}

				expect(equals(
					getObjectSubset(circularObjA, nonCircularObj),
					{
						a = "hello",
					})
				).to.equal(true)

				expect(equals(
					getObjectSubset(nonCircularObj, circularObjA),
					{
						a = "world",
					})
				).to.equal(true)

				expect(equals(
					getObjectSubset(circularObjB, circularObjA),
					circularObjB
					)
				).to.equal(true)

				expect(equals(
					getObjectSubset(primitiveInsteadOfRef, circularObjA),
					{
						ref = "not a ref",
					})
				).to.equal(true)

				expect(equals(
					getObjectSubset(nonCircularRef, circularObjA),
					{
						ref = {},
					})
				).to.equal(true)
			end)

			it("transitive circular references", function()
				type CircularObj = {a: string?, nestedObj: any?}

				local nonCircularObj = {a = "world", b = "something"}

				local transitiveCircularObjA: CircularObj = {a = "hello"}
				transitiveCircularObjA.nestedObj = {parentObj = transitiveCircularObjA}

				local transitiveCircularObjB: CircularObj = {a = "world"}
				transitiveCircularObjB.nestedObj = {parentObj = transitiveCircularObjB}

				local primitiveInsteadOfRef: CircularObj = {}
				primitiveInsteadOfRef.nestedObj = {otherProp = "not the parent ref"}

				local nonCircularRef: CircularObj = {}
				nonCircularRef.nestedObj = {otherProp = {}}

				expect(equals(
					getObjectSubset(transitiveCircularObjA, nonCircularObj),
					{
						a = "hello",
					})
				).to.equal(true)

				expect(equals(
					getObjectSubset(nonCircularObj, transitiveCircularObjA),
					{
						a = "world",
					})
				).to.equal(true)

				expect(equals(
					getObjectSubset(transitiveCircularObjB, transitiveCircularObjA),
					transitiveCircularObjB)
				).to.equal(true)

				expect(equals(
					getObjectSubset(primitiveInsteadOfRef, transitiveCircularObjA),
					{
						nestedObj = {otherProp = "not the parent ref"}
					})
				).to.equal(true)

				expect(equals(getObjectSubset(nonCircularRef, transitiveCircularObjA),
					{
						nestedObj = {otherProp = {}},
					})
				).to.equal(true)
			end)
		end)
	end)

	describe("emptyObject()", function()
		it("matches an empty object", function()
			expect(emptyObject({})).to.equal(true)
		end)

		it("does not match an object with keys", function()
			expect(emptyObject({foo = "undefined"})).to.equal(false)
		end)

		it("does not match a non-object", function()
			expect(emptyObject(nil)).to.equal(false)
			expect(emptyObject(34)).to.equal(false)
		end)
	end)

	describe("subsetEquality()", function()
		it("matching object returns true", function()
			expect(subsetEquality({foo = "bar"}, {foo = "bar"})).to.equal(true)
		end)

		it("object without keys is undefined", function()
			expect(subsetEquality("foo", "bar")).to.equal(nil)
		end)

		it("objects to not match", function()
			expect(subsetEquality({foo = "bar"}, {foo = "baz"})).to.equal(false)
			expect(subsetEquality("foo", {foo = "baz"})).to.equal(false)
		end)

		it("null does not return errors", function()
			expect(subsetEquality(nil, {foo = "bar"})).to.equal(false)
		end)

		-- deviation: skipped test because it would be identical to the one
		-- directly above since we don't have a distinct undefined type
		itSKIP("undefined does not return errors", function()
			expect(not not subsetEquality(nil, {foo = "bar"})).to.equal(false)
		end)

		describe("matching subsets with circular references", function()
			it("simple circular references", function()
				type CircularObj = {a: string?, ref: any?}

				local circularObjA1: CircularObj = {a =  "hello"}
				circularObjA1.ref = circularObjA1

				local circularObjA2: CircularObj = {a =  "hello"}
				circularObjA2.ref = circularObjA2

				local circularObjB: CircularObj = {a =  "world"}
				circularObjB.ref = circularObjB

				local primitiveInsteadOfRef: CircularObj = {}
				primitiveInsteadOfRef.ref = "not a ref"

				expect(subsetEquality(circularObjA1, {})).to.equal(true)
				expect(subsetEquality({}, circularObjA1)).to.equal(false)
				expect(subsetEquality(circularObjA2, circularObjA1)).to.equal(true)
				expect(subsetEquality(circularObjB, circularObjA1)).to.equal(false)
				expect(subsetEquality(primitiveInsteadOfRef, circularObjA1)).to.equal(false)
			end)

			it("referenced object on same level should not regarded as circular reference", function()
				local referencedObj = {abc = "def"}
				local object = {
					a = {abc = "def"},
					b = {abc = "def", zzz = "zzz"},
				}
				local thisIsNotCircular = {
					a = referencedObj,
					b = referencedObj,
				}

				expect(subsetEquality(object, thisIsNotCircular)).to.equal(true)
			end)

			it("transitive circular references", function()
				type CircularObj = {a: string, nestedObj: any?}

				local transitiveCircularObjA1: CircularObj = {a = "hello"}
				transitiveCircularObjA1.nestedObj = {parentObj = transitiveCircularObjA1}

				local transitiveCircularObjA2: CircularObj = {a = "hello"}
				transitiveCircularObjA2.nestedObj = {
					parentObj = transitiveCircularObjA2,
				}

				local transitiveCircularObjB: CircularObj = {a = "world"}
				transitiveCircularObjB.nestedObj = {
					parentObj = transitiveCircularObjB,
				}

				local primitiveInsteadOfRef = {
					parentObj = "not the parent ref",
				}

				expect(subsetEquality(transitiveCircularObjA1, {})).to.equal(true)
				expect(subsetEquality({}, transitiveCircularObjA1)).to.equal(false)
				expect(subsetEquality(transitiveCircularObjA2, transitiveCircularObjA1)).to.equal(true)
				expect(subsetEquality(transitiveCircularObjB, transitiveCircularObjA1)).to.equal(false)
				expect(subsetEquality(primitiveInsteadOfRef, transitiveCircularObjA1)).to.equal(false)
			end)
		end)
	end)

	-- ROBLOX TODO: (ADO-1217) implement tests once we have Map/Set functionality
	describe("iterableEquality", function()
	end)
end
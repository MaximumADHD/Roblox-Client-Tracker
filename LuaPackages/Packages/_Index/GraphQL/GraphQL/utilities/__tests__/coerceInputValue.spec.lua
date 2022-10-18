--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/coerceInputValue-test.js

return function()
	local srcWorkspace = script.Parent.Parent.Parent
	local Packages = srcWorkspace.Parent
	local LuauPolyfill = require(Packages.LuauPolyfill)
	local Error = LuauPolyfill.Error
	local Map = LuauPolyfill.Map
	local Number = LuauPolyfill.Number

	local NULL = require(srcWorkspace.luaUtils.null)
	local isNotNillish = require(srcWorkspace.luaUtils.isNillish).isNotNillish

	local invariant = require(srcWorkspace.jsutils.invariant).invariant

	local GraphQLInt = require(srcWorkspace.type.scalars).GraphQLInt
	local definition = require(srcWorkspace.type.definition)
	local GraphQLList = definition.GraphQLList
	local GraphQLNonNull = definition.GraphQLNonNull
	local GraphQLEnumType = definition.GraphQLEnumType
	local GraphQLScalarType = definition.GraphQLScalarType
	local GraphQLInputObjectType = definition.GraphQLInputObjectType

	local coerceInputValue = require(srcWorkspace.utilities.coerceInputValue).coerceInputValue

	-- ROBLOX Deviation = expect only exists in describe block, henced it has to be passed as an argument here
	local function expectValue(expect_, result)
		expect_(result.errors).toEqual({})
		return expect_(result.value)
	end

	-- ROBLOX Deviation = expect only exists in describe block, henced it has to be passed as an argument here
	local function expectErrors(expect_, result)
		return expect_(result.errors)
	end

	describe("coerceInputValue", function()
		local function coerceValue(inputValue, type_)
			local errors = {}
			local value = coerceInputValue(inputValue, type_, function(path, invalidValue, error_)
				table.insert(errors, {
					path = path,
					value = invalidValue,
					error = error_.message,
				})
			end)

			return {
				errors = errors,
				value = value,
			}
		end

		describe("for GraphQLNonNull", function()
			local TestNonNull = GraphQLNonNull.new(GraphQLInt)

			it("returns no error for non-null value", function()
				local result = coerceValue(1, TestNonNull)
				expectValue(expect, result).to.equal(1)
			end)

			it("returns an error for undefined value", function()
				local result = coerceValue(nil, TestNonNull)
				expectErrors(expect, result).toEqual({
					{
						error = 'Expected non-nullable type "Int!" not to be null.',
						path = {},
						value = nil,
					},
				})
			end)

			it("returns an error for null value", function()
				local result = coerceValue(NULL, TestNonNull)
				expectErrors(expect, result).toEqual({
					{
						error = 'Expected non-nullable type "Int!" not to be null.',
						path = {},
						value = NULL,
					},
				})
			end)
		end)

		describe("for GraphQLScalar", function()
			local TestScalar = GraphQLScalarType.new({
				name = "TestScalar",
				parseValue = function(input)
					invariant(typeof(input) == "table" and input ~= NULL)
					if isNotNillish(input.error) then
						error(Error.new(input.error))
					end
					return input.value
				end,
			})

			it("returns no error for valid input", function()
				local result = coerceValue({ value = 1 }, TestScalar)
				expectValue(expect, result).to.equal(1)
			end)

			it("returns no error for null result", function()
				local result = coerceValue({ value = NULL }, TestScalar)
				expectValue(expect, result).to.equal(NULL)
			end)

			it("returns no error for NaN result", function()
				local result = coerceValue({ value = Number.NaN }, TestScalar)
				expectValue(expect, result).toBeNaN()
			end)

			it("returns an error for undefined result", function()
				-- ROBLOX Deviation: when you assign nil to a key in a table, that key would not exist
				-- which means an empty table is passed to coerceValue
				local result = coerceValue({ value = nil }, TestScalar)
				expectErrors(expect, result).toEqual({
					{
						error = 'Expected type "TestScalar".',
						path = {},
						value = { value = nil },
					},
				})
			end)

			-- ROBLOX Deviation: upstream has same it block phrases with the above block, but roblox-cli complains about it,
			-- so there's an extra character (2) in this phrase
			it("returns an error for undefined result 2", function()
				local inputValue = { error = "Some error message" }
				local result = coerceValue(inputValue, TestScalar)
				expectErrors(expect, result).toEqual({
					{
						error = 'Expected type "TestScalar". Some error message',
						path = {},
						value = { error = "Some error message" },
					},
				})
			end)
		end)

		describe("for GraphQLEnum", function()
			local TestEnum = GraphQLEnumType.new({
				name = "TestEnum",
				values = {
					FOO = { value = "InternalFoo" },
					BAR = { value = 123456789 },
				},
			})

			it("returns no error for a known enum name", function()
				local fooResult = coerceValue("FOO", TestEnum)
				expectValue(expect, fooResult).to.equal("InternalFoo")

				local barResult = coerceValue("BAR", TestEnum)
				expectValue(expect, barResult).to.equal(123456789)
			end)

			it("returns an error for misspelled enum value", function()
				local result = coerceValue("foo", TestEnum)
				expectErrors(expect, result).toEqual({
					{
						error = 'Value "foo" does not exist in "TestEnum" enum. Did you mean the enum value "FOO"?',
						path = {},
						value = "foo",
					},
				})
			end)

			it("returns an error for incorrect value type", function()
				local result1 = coerceValue(123, TestEnum)
				expectErrors(expect, result1).toEqual({
					{
						error = 'Enum "TestEnum" cannot represent non-string value: 123.',
						path = {},
						value = 123,
					},
				})

				local result2 = coerceValue({ field = "value" }, TestEnum)
				expectErrors(expect, result2).toEqual({
					{
						error = 'Enum "TestEnum" cannot represent non-string value: { field: "value" }.',
						path = {},
						value = { field = "value" },
					},
				})
			end)
		end)

		describe("for GraphQLInputObject", function()
			local TestInputObject = GraphQLInputObjectType.new({
				name = "TestInputObject",
				fields = Map.new({
					{ "foo", { type = GraphQLNonNull.new(GraphQLInt) } },
					{ "bar", { type = GraphQLInt } },
				}),
			})

			it("returns no error for a valid input", function()
				local result = coerceValue({ foo = 123 }, TestInputObject)
				expectValue(expect, result).toEqual({ foo = 123 })
			end)

			it("returns an error for a non-object type", function()
				local result = coerceValue(123, TestInputObject)
				expectErrors(expect, result).toEqual({
					{
						error = 'Expected type "TestInputObject" to be an object.',
						path = {},
						value = 123,
					},
				})
			end)

			it("returns an error for an invalid field", function()
				local result = coerceValue({ foo = Number.NaN }, TestInputObject)
				-- ROBLOX deviation: NaN != Number.NaN so we need special test handler
				expect(result.errors[1].error).toEqual(
					"Int cannot represent non-integer value: NaN"
				)
				expect(result.errors[1].path).toEqual({ "foo" })
				expect(result.errors[1].value).toBeNaN()
			end)

			it("returns multiple errors for multiple invalid fields", function()
				local result = coerceValue({ foo = "abc", bar = "def" }, TestInputObject)
				expectErrors(expect, result).toEqual({
					{
						error = 'Int cannot represent non-integer value: "abc"',
						path = { "foo" },
						value = "abc",
					},
					{
						error = 'Int cannot represent non-integer value: "def"',
						path = { "bar" },
						value = "def",
					},
				})
			end)

			it("returns error for a missing required field", function()
				local result = coerceValue({ bar = 123 }, TestInputObject)
				expectErrors(expect, result).toEqual({
					{
						error = 'Field "foo" of required type "Int!" was not provided.',
						path = {},
						value = { bar = 123 },
					},
				})
			end)

			it("returns error for an unknown field", function()
				local result = coerceValue({ foo = 123, unknownField = 123 }, TestInputObject)
				expectErrors(expect, result).toEqual({
					{
						error = 'Field "unknownField" is not defined by type "TestInputObject".',
						path = {},
						value = { foo = 123, unknownField = 123 },
					},
				})
			end)

			it("returns error for a misspelled field", function()
				local result = coerceValue({ foo = 123, bart = 123 }, TestInputObject)
				expectErrors(expect, result).toEqual({
					{
						error = 'Field "bart" is not defined by type "TestInputObject". Did you mean "bar"?',
						path = {},
						value = { foo = 123, bart = 123 },
					},
				})
			end)
		end)

		describe("for GraphQLInputObject with default value", function()
			local makeTestInputObject = function(defaultValue)
				return GraphQLInputObjectType.new({
					name = "TestInputObject",
					fields = {
						foo = {
							type = GraphQLScalarType.new({ name = "TestScalar" }),
							defaultValue = defaultValue,
						},
					},
				})
			end

			it("returns no errors for valid input value", function()
				local result = coerceValue({ foo = 5 }, makeTestInputObject(7))
				expectValue(expect, result).toEqual({ foo = 5 })
			end)

			it("returns object with default value", function()
				local result = coerceValue({}, makeTestInputObject(7))
				expectValue(expect, result).toEqual({ foo = 7 })
			end)

			it("returns null as value", function()
				local result = coerceValue({}, makeTestInputObject(NULL))
				expectValue(expect, result).toEqual({ foo = NULL })
			end)

			it("returns NaN as value", function()
				local result = coerceValue({}, makeTestInputObject(Number.NaN))
				-- ROBLOX deviation: no test matcher for toHaveProperty
				expect(result.errors).toEqual({})
				expect(result.value.foo).toBeNaN()
			end)
		end)

		describe("for GraphQLList", function()
			local TestList = GraphQLList.new(GraphQLInt)

			it("returns no error for a valid input", function()
				local result = coerceValue({ 1, 2, 3 }, TestList)
				expectValue(expect, result).toEqual({ 1, 2, 3 })
			end)

			it("returns no error for a valid iterable input", function()
				-- ROBLOX deviation: lua doesn't support generators - use simple array
				local function listGenerator()
					return { 1, 2, 3 }
					-- yield 1;
					-- yield 2;
					-- yield 3;
				end

				local result = coerceValue(listGenerator(), TestList)
				expectValue(expect, result).toEqual({ 1, 2, 3 })
			end)

			it("returns an error for an invalid input", function()
				local result = coerceValue({ 1, "b", true, 4 }, TestList)
				expectErrors(expect, result).toEqual({
					{
						error = 'Int cannot represent non-integer value: "b"',
						path = { 2 },
						value = "b",
					},
					{
						error = "Int cannot represent non-integer value: true",
						path = { 3 },
						value = true,
					},
				})
			end)

			it("returns a list for a non-list value", function()
				local result = coerceValue(42, TestList)
				expectValue(expect, result).toEqual({ 42 })
			end)

			it("returns a list for a non-list object value", function()
				local TestListOfObjects = GraphQLList.new(GraphQLInputObjectType.new({
					name = "TestObject",
					fields = {
						length = { type = GraphQLInt },
					},
				}))

				local result = coerceValue({ length = 100500 }, TestListOfObjects)
				expectValue(expect, result).toEqual({ { length = 100500 } })
			end)

			it("returns an error for a non-list invalid value", function()
				local result = coerceValue("INVALID", TestList)
				expectErrors(expect, result).toEqual({
					{
						error = 'Int cannot represent non-integer value: "INVALID"',
						path = {},
						value = "INVALID",
					},
				})
			end)

			it("returns null for a null value", function()
				local result = coerceValue(NULL, TestList)
				expectValue(expect, result).toEqual(NULL)
			end)
		end)

		describe("for nested GraphQLList", function()
			local TestNestedList = GraphQLList.new(GraphQLList.new(GraphQLInt))

			it("returns no error for a valid input", function()
				local result = coerceValue({ { 1 }, { 2, 3 } }, TestNestedList)
				expectValue(expect, result).toEqual({ { 1 }, { 2, 3 } })
			end)

			it("returns a list for a non-list value", function()
				local result = coerceValue(42, TestNestedList)
				expectValue(expect, result).toEqual({ { 42 } })
			end)

			it("returns null for a null value", function()
				local result = coerceValue(NULL, TestNestedList)
				expectValue(expect, result).toEqual(NULL)
			end)

			it("returns nested lists for nested non-list values", function()
				local result = coerceValue({ 1, 2, 3 }, TestNestedList)
				expectValue(expect, result).toEqual({ { 1 }, { 2 }, { 3 } })
			end)

			it("returns nested null for nested null values", function()
				local result = coerceValue({ 42, { NULL }, NULL }, TestNestedList)
				expectValue(expect, result).toEqual({ { 42 }, { NULL }, NULL })
			end)
		end)

		describe("with default onError", function()
			it("throw error without path", function()
				expect(function()
					return coerceInputValue(NULL, GraphQLNonNull.new(GraphQLInt))
				end).toThrow(
					'Invalid value null: Expected non-nullable type "Int!" not to be null.'
				)
			end)

			it("throw error with path", function()
				expect(function()
					return coerceInputValue(
						{ NULL },
						GraphQLList.new(GraphQLNonNull.new(GraphQLInt))
					)
				end).toThrow(
					'Invalid value null at "value[1]": Expected non-nullable type "Int!" not to be null.'
				)
			end)
		end)
	end)
end

--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/execution/__tests__/variables-test.js

return function()
	local executionWorkspace = script.Parent.Parent
	local srcWorkspace = executionWorkspace.Parent
	local rootWorkspace = srcWorkspace.Parent

	local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
	local Map = LuauPolyfill.Map
	local Number = LuauPolyfill.Number
	local Object = LuauPolyfill.Object
	local NaN = Number.NaN

	local NULL = require(srcWorkspace.luaUtils.null)

	local inspect = require(srcWorkspace.jsutils.inspect).inspect
	local invariant = require(srcWorkspace.jsutils.invariant).invariant

	local Kind = require(srcWorkspace.language.kinds).Kind
	local parse = require(srcWorkspace.language.parser).parse

	local GraphQLSchema = require(srcWorkspace.type.schema).GraphQLSchema
	local GraphQLString = require(srcWorkspace.type.scalars).GraphQLString
	local definitionImport = require(srcWorkspace.type.definition)
	local GraphQLList = definitionImport.GraphQLList
	local GraphQLNonNull = definitionImport.GraphQLNonNull
	local GraphQLScalarType = definitionImport.GraphQLScalarType
	local GraphQLObjectType = definitionImport.GraphQLObjectType
	local GraphQLInputObjectType = definitionImport.GraphQLInputObjectType
	local GraphQLEnumType = definitionImport.GraphQLEnumType

	local executeSync = require(executionWorkspace.execute).executeSync
	local getVariableValues = require(executionWorkspace.values).getVariableValues

	local TestComplexScalar = GraphQLScalarType.new({
		name = "ComplexScalar",
		parseValue = function(value)
			invariant(value == "SerializedValue")

			return "DeserializedValue"
		end,
		parseLiteral = function(ast)
			invariant(ast.value == "SerializedValue")

			return "DeserializedValue"
		end,
	})
	local TestInputObject = GraphQLInputObjectType.new({
		name = "TestInputObject",
		fields = Map.new({
			{ "a", { type = GraphQLString } },
			{ "b", { type = GraphQLList.new(GraphQLString) } },
			{ "c", { type = GraphQLNonNull.new(GraphQLString) } },
			{ "d", { type = TestComplexScalar } },
		}),
	})
	local TestNestedInputObject = GraphQLInputObjectType.new({
		name = "TestNestedInputObject",
		fields = Map.new({
			{ "na", {
				type = GraphQLNonNull.new(TestInputObject),
			} },
			{ "nb", {
				type = GraphQLNonNull.new(GraphQLString),
			} },
		}),
	})
	local TestEnum = GraphQLEnumType.new({
		name = "TestEnum",
		values = Map.new({
			{ "NULL", { value = NULL } },
			{ "UNDEFINED", { value = nil } },
			{ "NAN", { value = NaN } },
			{ "FALSE", { value = false } },
			{ "CUSTOM", { value = "custom value" } },
			{ "DEFAULT_VALUE", {} },
		}),
	})

	local function fieldWithInputArg(inputArg)
		return {
			type = GraphQLString,
			args = { input = inputArg },
			resolve = function(_, args)
				if typeof(args) == "table" and args.input ~= nil then
					return inspect(args.input)
				end
				return -- ROBLOX deviation: no implicit return
			end,
		}
	end

	local TestType = GraphQLObjectType.new({
		name = "TestType",
		fields = Map.new({
			{ "fieldWithEnumInput", fieldWithInputArg({ type = TestEnum }) },
			{
				"fieldWithNonNullableEnumInput",
				fieldWithInputArg({
					type = GraphQLNonNull.new(TestEnum),
				}),
			},
			{ "fieldWithObjectInput", fieldWithInputArg({ type = TestInputObject }) },
			{ "fieldWithNullableStringInput", fieldWithInputArg({ type = GraphQLString }) },
			{
				"fieldWithNonNullableStringInput",
				fieldWithInputArg({
					type = GraphQLNonNull.new(GraphQLString),
				}),
			},
			{
				"fieldWithDefaultArgumentValue",
				fieldWithInputArg({
					type = GraphQLString,
					defaultValue = "Hello World",
				}),
			},
			{
				"fieldWithNonNullableStringInputAndDefaultArgumentValue",
				fieldWithInputArg({
					type = GraphQLNonNull.new(GraphQLString),
					defaultValue = "Hello World",
				}),
			},
			{
				"fieldWithNestedInputObject",
				fieldWithInputArg({
					type = TestNestedInputObject,
					defaultValue = "Hello World",
				}),
			},
			{ "list", fieldWithInputArg({
				type = GraphQLList.new(GraphQLString),
			}) },
			{
				"nnList",
				fieldWithInputArg({
					type = GraphQLNonNull.new(GraphQLList.new(GraphQLString)),
				}),
			},
			{
				"listNN",
				fieldWithInputArg({
					type = GraphQLList.new(GraphQLNonNull.new(GraphQLString)),
				}),
			},
			{
				"nnListNN",
				fieldWithInputArg({
					type = GraphQLNonNull.new(GraphQLList.new(GraphQLNonNull.new(GraphQLString))),
				}),
			},
		}),
	})
	local schema = GraphQLSchema.new({ query = TestType })

	local function executeQuery(query, variableValues)
		local document = parse(query)

		return executeSync({
			schema = schema,
			document = document,
			variableValues = variableValues,
		})
	end

	describe("Execute: Handles inputs", function()
		describe("Handles objects and nullability", function()
			describe("using inline structs", function()
				it("executes with complex input", function()
					local result = executeQuery([[

          {
            fieldWithObjectInput(input: {a: "foo", b: ["bar"], c: "baz"})
          }
        ]])

					expect(result).toEqual({
						data = {
							--[[
							-- ROBLOX FIXME: order of properties is not kept
							-- original code:
							-- fieldWithObjectInput = "{ a: \"foo\", b: [\"bar\"], c: \"baz\" }",
							--]]
							fieldWithObjectInput = '{ a: "foo", c: "baz", b: ["bar"] }',
						},
					})
				end)

				it("properly parses single value to list", function()
					local result = executeQuery([[

          {
            fieldWithObjectInput(input: {a: "foo", b: "bar", c: "baz"})
          }
        ]])

					expect(result).toEqual({
						data = {
							--[[
							-- ROBLOX FIXME: order of properties is not kept
							-- original code:
							-- fieldWithObjectInput = "{ a: \"foo\", b: [\"bar\"], c: \"baz\" }",
							--]]
							fieldWithObjectInput = '{ a: "foo", c: "baz", b: ["bar"] }',
						},
					})
				end)

				it("properly parses null value to null", function()
					local result = executeQuery([[

          {
            fieldWithObjectInput(input: {a: null, b: null, c: "C", d: null})
          }
        ]])

					expect(result).toEqual({
						data = {
							--[[
							-- ROBLOX FIXME: order of properties is not kept
							-- original code:
							-- fieldWithObjectInput = "{ a: null, b: null, c: \"C\", d: null }",
							--]]
							fieldWithObjectInput = '{ a: null, d: null, c: "C", b: null }',
						},
					})
				end)

				it("properly parses null value in list", function()
					local result = executeQuery([[

          {
            fieldWithObjectInput(input: {b: ["A",null,"C"], c: "C"})
          }
        ]])

					expect(result).toEqual({
						data = {
							--[[
							-- ROBLOX FIXME: order of properties is not kept
							-- original code:
							-- fieldWithObjectInput = "{ b: [\"A\", null, \"C\"], c: \"C\" }",
							--]]
							fieldWithObjectInput = '{ c: "C", b: ["A", null, "C"] }',
						},
					})
				end)

				it("does not use incorrect value", function()
					local result = executeQuery([[

          {
            fieldWithObjectInput(input: ["foo", "bar", "baz"])
          }
        ]])

					--[[
					--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
					--]]
					expect(Object.keys(result)).toHaveSameMembers({ "errors", "data" })
					expect(result.data).toEqual({ fieldWithObjectInput = NULL })
					expect(result.errors).toHaveSameMembers({
						{
							message = 'Argument "input" has invalid value ["foo", "bar", "baz"].',
							path = {
								"fieldWithObjectInput",
							},
							locations = {
								{
									line = 3,
									column = 41,
								},
							},
						},
					}, true)
				end)

				it("properly runs parseLiteral on complex scalar types", function()
					local result = executeQuery([[

          {
            fieldWithObjectInput(input: {c: "foo", d: "SerializedValue"})
          }
        ]])

					expect(result).toEqual({
						data = {
							fieldWithObjectInput = '{ c: "foo", d: "DeserializedValue" }',
						},
					})
				end)
			end)

			describe("using variables", function()
				local doc = [[

        query ($input: TestInputObject) {
          fieldWithObjectInput(input: $input)
        }
      ]]

				it("executes with complex input", function()
					local params = {
						input = {
							a = "foo",
							b = {
								"bar",
							},
							c = "baz",
						},
					}
					local result = executeQuery(doc, params)

					expect(result).toEqual({
						data = {
							--[[
							-- ROBLOX FIXME: order of properties is not kept
							-- original code:
							-- fieldWithObjectInput = "{ a: \"foo\", b: [\"bar\"], c: \"baz\" }",
							--]]
							fieldWithObjectInput = '{ a: "foo", c: "baz", b: ["bar"] }',
						},
					})
				end)

				it("uses undefined when variable not provided", function()
					local result = executeQuery(
						[[

          query q($input: String) {
            fieldWithNullableStringInput(input: $input)
          }]],
						{
							--[[ Intentionally missing variable values. ]]
						}
					)

					expect(result).toEqual({
						data = { fieldWithNullableStringInput = NULL },
					})
				end)

				it("uses null when variable provided explicit null value", function()
					local result = executeQuery(
						[[

          query q($input: String) {
            fieldWithNullableStringInput(input: $input)
          }]],
						{ input = NULL }
					)

					expect(result).toEqual({
						data = {
							fieldWithNullableStringInput = "null",
						},
					})
				end)

				it("uses default value when not provided", function()
					local result = executeQuery([[

          query ($input: TestInputObject = {a: "foo", b: ["bar"], c: "baz"}) {
            fieldWithObjectInput(input: $input)
          }
        ]])

					expect(result).toEqual({
						data = {
							--[[
							-- ROBLOX FIXME: order of properties is not kept
							-- original code:
							-- fieldWithObjectInput = "{ a: \"foo\", b: [\"bar\"], c: \"baz\" }",
							--]]
							fieldWithObjectInput = '{ a: "foo", c: "baz", b: ["bar"] }',
						},
					})
				end)

				it("does not use default value when provided", function()
					local result = executeQuery(
						[[

            query q($input: String = "Default value") {
              fieldWithNullableStringInput(input: $input)
            }
          ]],
						{
							input = "Variable value",
						}
					)

					expect(result).toEqual({
						data = {
							fieldWithNullableStringInput = '"Variable value"',
						},
					})
				end)

				it("uses explicit null value instead of default value", function()
					local result = executeQuery(
						[[

          query q($input: String = "Default value") {
            fieldWithNullableStringInput(input: $input)
          }]],
						{ input = NULL }
					)

					expect(result).toEqual({
						data = {
							fieldWithNullableStringInput = "null",
						},
					})
				end)

				it("uses null default value when not provided", function()
					local result = executeQuery(
						[[

          query q($input: String = null) {
            fieldWithNullableStringInput(input: $input)
          }]],
						{
							--[[ Intentionally missing variable values. ]]
						}
					)

					expect(result).toEqual({
						data = {
							fieldWithNullableStringInput = "null",
						},
					})
				end)

				it("properly parses single value to list", function()
					local params = {
						input = {
							a = "foo",
							b = "bar",
							c = "baz",
						},
					}
					local result = executeQuery(doc, params)

					expect(result).toEqual({
						data = {
							--[[
							-- ROBLOX FIXME: order of properties is not kept
							-- original code:
							-- fieldWithObjectInput = "{ a: \"foo\", b: [\"bar\"], c: \"baz\" }",
							--]]
							fieldWithObjectInput = '{ a: "foo", c: "baz", b: ["bar"] }',
						},
					})
				end)

				it("executes with complex scalar input", function()
					local params = {
						input = {
							c = "foo",
							d = "SerializedValue",
						},
					}
					local result = executeQuery(doc, params)

					expect(result).toEqual({
						data = {
							fieldWithObjectInput = '{ c: "foo", d: "DeserializedValue" }',
						},
					})
				end)

				it("errors on null for nested non-null", function()
					local params = {
						input = {
							a = "foo",
							b = "bar",
							c = NULL,
						},
					}
					local result = executeQuery(doc, params)

					--[[
					--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
					--]]
					expect(Object.keys(result)).toEqual({ "errors" })
					expect(result.errors).toHaveSameMembers({
						{
							message = 'Variable "$input" got invalid value null at "input.c"; Expected non-nullable type "String!" not to be null.',
							locations = {
								{
									line = 2,
									column = 16,
								},
							},
						},
					}, true)
				end)

				it("errors on incorrect type", function()
					local result = executeQuery(doc, {
						input = "foo bar",
					})

					--[[
					--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
					--]]
					expect(Object.keys(result)).toEqual({ "errors" })
					expect(result.errors).toHaveSameMembers({
						{
							message = 'Variable "$input" got invalid value "foo bar"; Expected type "TestInputObject" to be an object.',
							locations = {
								{
									line = 2,
									column = 16,
								},
							},
						},
					}, true)
				end)

				it("errors on omission of nested non-null", function()
					local result = executeQuery(doc, {
						input = {
							a = "foo",
							b = "bar",
						},
					})

					--[[
					--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
					--]]
					expect(Object.keys(result)).toEqual({ "errors" })
					expect(result.errors).toHaveSameMembers({
						{
							message = 'Variable "$input" got invalid value { a: "foo", b: "bar" }; Field "c" of required type "String!" was not provided.',
							locations = {
								{
									line = 2,
									column = 16,
								},
							},
						},
					}, true)
				end)

				it("errors on deep nested errors and with many errors", function()
					local nestedDoc = [[

          query ($input: TestNestedInputObject) {
            fieldWithNestedObjectInput(input: $input)
          }
        ]]
					local result = executeQuery(nestedDoc, {
						input = {
							na = {
								a = "foo",
							},
						},
					})

					--[[
					--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
					--]]
					expect(Object.keys(result)).toEqual({ "errors" })
					expect(result.errors).toHaveSameMembers({
						{
							message = 'Variable "$input" got invalid value { a: "foo" } at "input.na"; Field "c" of required type "String!" was not provided.',
							locations = {
								{
									line = 2,
									column = 18,
								},
							},
						},
						{
							message = 'Variable "$input" got invalid value { na: { a: "foo" } }; Field "nb" of required type "String!" was not provided.',
							locations = {
								{
									line = 2,
									column = 18,
								},
							},
						},
					}, true)
				end)

				it("errors on addition of unknown input field", function()
					local params = {
						input = {
							a = "foo",
							b = "bar",
							c = "baz",
							extra = "dog",
						},
					}
					local result = executeQuery(doc, params)

					--[[
					--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
					--]]
					expect(Object.keys(result)).toEqual({ "errors" })
					expect(result.errors).toHaveSameMembers({
						{
							--[[
							-- ROBLOX FIXME: order of properties is not kept
							-- original code:
							-- message = "Variable \"$input\" got invalid value { a: \"foo\", b: \"bar\", c: \"baz\", extra: \"dog\" }; Field \"extra\" is not defined by type \"TestInputObject\".",
							--]]
							message = 'Variable "$input" got invalid value { a: "foo", extra: "dog", c: "baz", b: "bar" }; Field "extra" is not defined by type "TestInputObject".',
							locations = {
								{
									line = 2,
									column = 16,
								},
							},
						},
					}, true)
				end)
			end)
		end)

		describe("Handles custom enum values", function()
			it("allows custom enum values as inputs", function()
				local result = executeQuery([[

        {
          null: fieldWithEnumInput(input: NULL)
          NaN: fieldWithEnumInput(input: NAN)
          false: fieldWithEnumInput(input: FALSE)
          customValue: fieldWithEnumInput(input: CUSTOM)
          defaultValue: fieldWithEnumInput(input: DEFAULT_VALUE)
        }
      ]])

				expect(result).toEqual({
					data = {
						null = "null",
						NaN = "NaN",
						["false"] = "false",
						customValue = '"custom value"',
						defaultValue = '"DEFAULT_VALUE"',
					},
				})
			end)

			it("allows non-nullable inputs to have null as enum custom value", function()
				local result = executeQuery([[

        {
          fieldWithNonNullableEnumInput(input: NULL)
        }
      ]])

				expect(result).toEqual({
					data = {
						fieldWithNonNullableEnumInput = "null",
					},
				})
			end)
		end)

		describe("Handles nullable scalars", function()
			it("allows nullable inputs to be omitted", function()
				local result = executeQuery([[

        {
          fieldWithNullableStringInput
        }
      ]])

				expect(result).toEqual({
					data = { fieldWithNullableStringInput = NULL },
				})
			end)

			it("allows nullable inputs to be omitted in a variable", function()
				local result = executeQuery([[

        query ($value: String) {
          fieldWithNullableStringInput(input: $value)
        }
      ]])

				expect(result).toEqual({
					data = { fieldWithNullableStringInput = NULL },
				})
			end)

			it("allows nullable inputs to be omitted in an unlisted variable", function()
				local result = executeQuery([[

        query {
          fieldWithNullableStringInput(input: $value)
        }
      ]])

				expect(result).toEqual({
					data = { fieldWithNullableStringInput = NULL },
				})
			end)

			it("allows nullable inputs to be set to null in a variable", function()
				local doc = [[

        query ($value: String) {
          fieldWithNullableStringInput(input: $value)
        }
      ]]
				local result = executeQuery(doc, { value = NULL })

				expect(result).toEqual({
					data = {
						fieldWithNullableStringInput = "null",
					},
				})
			end)

			it("allows nullable inputs to be set to a value in a variable", function()
				local doc = [[

        query ($value: String) {
          fieldWithNullableStringInput(input: $value)
        }
      ]]
				local result = executeQuery(doc, {
					value = "a",
				})

				expect(result).toEqual({
					data = {
						fieldWithNullableStringInput = '"a"',
					},
				})
			end)

			it("allows nullable inputs to be set to a value directly", function()
				local result = executeQuery([[

        {
          fieldWithNullableStringInput(input: "a")
        }
      ]])

				expect(result).toEqual({
					data = {
						fieldWithNullableStringInput = '"a"',
					},
				})
			end)
		end)

		describe("Handles non-nullable scalars", function()
			it("allows non-nullable variable to be omitted given a default", function()
				local result = executeQuery([[

        query ($value: String! = "default") {
          fieldWithNullableStringInput(input: $value)
        }
      ]])

				expect(result).toEqual({
					data = {
						fieldWithNullableStringInput = '"default"',
					},
				})
			end)

			it("allows non-nullable inputs to be omitted given a default", function()
				local result = executeQuery([[

        query ($value: String = "default") {
          fieldWithNonNullableStringInput(input: $value)
        }
      ]])

				expect(result).toEqual({
					data = {
						fieldWithNonNullableStringInput = '"default"',
					},
				})
			end)

			it("does not allow non-nullable inputs to be omitted in a variable", function()
				local result = executeQuery([[

        query ($value: String!) {
          fieldWithNonNullableStringInput(input: $value)
        }
      ]])

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toEqual({ "errors" })
				expect(result.errors).toHaveSameMembers({
					{
						message = 'Variable "$value" of required type "String!" was not provided.',
						locations = {
							{
								line = 2,
								column = 16,
							},
						},
					},
				}, true)
			end)

			it("does not allow non-nullable inputs to be set to null in a variable", function()
				local doc = [[

        query ($value: String!) {
          fieldWithNonNullableStringInput(input: $value)
        }
      ]]
				local result = executeQuery(doc, { value = NULL })

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toEqual({ "errors" })
				expect(result.errors).toHaveSameMembers({
					{
						message = 'Variable "$value" of non-null type "String!" must not be null.',
						locations = {
							{
								line = 2,
								column = 16,
							},
						},
					},
				}, true)
			end)

			it("allows non-nullable inputs to be set to a value in a variable", function()
				local doc = [[

        query ($value: String!) {
          fieldWithNonNullableStringInput(input: $value)
        }
      ]]
				local result = executeQuery(doc, {
					value = "a",
				})

				expect(result).toEqual({
					data = {
						fieldWithNonNullableStringInput = '"a"',
					},
				})
			end)

			it("allows non-nullable inputs to be set to a value directly", function()
				local result = executeQuery([[

        {
          fieldWithNonNullableStringInput(input: "a")
        }
      ]])

				expect(result).toEqual({
					data = {
						fieldWithNonNullableStringInput = '"a"',
					},
				})
			end)

			it("reports error for missing non-nullable inputs", function()
				local result = executeQuery("{ fieldWithNonNullableStringInput }")

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toHaveSameMembers({ "errors", "data" })
				expect(result.data).toEqual({ fieldWithNonNullableStringInput = NULL })
				expect(result.errors).toHaveSameMembers({
					{
						message = 'Argument "input" of required type "String!" was not provided.',
						locations = {
							{
								line = 1,
								column = 3,
							},
						},
						path = {
							"fieldWithNonNullableStringInput",
						},
					},
				}, true)
			end)

			it("reports error for array passed into string input", function()
				local doc = [[

        query ($value: String!) {
          fieldWithNonNullableStringInput(input: $value)
        }
      ]]
				local result = executeQuery(doc, {
					value = { 1, 2, 3 },
				})

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toEqual({ "errors" })
				expect(result.errors).toHaveSameMembers({
					{
						message = 'Variable "$value" got invalid value [1, 2, 3]; String cannot represent a non string value: [1, 2, 3]',
						locations = {
							{
								line = 2,
								column = 16,
							},
						},
					},
				}, true)
				--[[
                    ROBLOX deviation: in upstream test the `originalError` property is defined but it's value is `undefined`
					there's no such a distinction in Lua
                    original code: expect(result).to.have.nested.property("errors[0].originalError")
                --]]
			end)

			it("reports error for non-provided variables for non-nullable inputs", function()
				-- Note: this test would typically fail validation before encountering
				-- this execution error, however for queries which previously validated
				-- and are being run against a new schema which have introduced a breaking
				-- change to make a formerly non-required argument required, this asserts
				-- failure before allowing the underlying code to receive a non-null value.
				local result = executeQuery([[

        {
          fieldWithNonNullableStringInput(input: $foo)
        }
      ]])

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toHaveSameMembers({ "errors", "data" })
				expect(result.data).toEqual({ fieldWithNonNullableStringInput = NULL })
				expect(result.errors).toHaveSameMembers({
					{
						message = 'Argument "input" of required type "String!" was provided the variable "$foo" which was not provided a runtime value.',
						locations = {
							{
								line = 3,
								column = 50,
							},
						},
						path = {
							"fieldWithNonNullableStringInput",
						},
					},
				}, true)
			end)
		end)

		describe("Handles lists and nullability", function()
			it("allows lists to be null", function()
				local doc = [[

        query ($input: [String]) {
          list(input: $input)
        }
      ]]
				local result = executeQuery(doc, { input = NULL })

				expect(result).toEqual({
					data = {
						list = "null",
					},
				})
			end)

			it("allows lists to contain values", function()
				local doc = [[

        query ($input: [String]) {
          list(input: $input)
        }
      ]]
				local result = executeQuery(doc, {
					input = {
						"A",
					},
				})

				expect(result).toEqual({
					data = {
						list = '["A"]',
					},
				})
			end)

			it("allows lists to contain null", function()
				local doc = [[

        query ($input: [String]) {
          list(input: $input)
        }
      ]]
				local result = executeQuery(doc, {
					input = {
						"A",
						NULL,
						"B",
					},
				})

				expect(result).toEqual({
					data = {
						list = '["A", null, "B"]',
					},
				})
			end)

			it("does not allow non-null lists to be null", function()
				local doc = [[

        query ($input: [String]!) {
          nnList(input: $input)
        }
      ]]
				local result = executeQuery(doc, { input = NULL })

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toEqual({ "errors" })
				expect(result.errors).toHaveSameMembers({
					{
						message = 'Variable "$input" of non-null type "[String]!" must not be null.',
						locations = {
							{
								line = 2,
								column = 16,
							},
						},
					},
				}, true)
			end)

			it("allows non-null lists to contain values", function()
				local doc = [[

        query ($input: [String]!) {
          nnList(input: $input)
        }
      ]]
				local result = executeQuery(doc, {
					input = {
						"A",
					},
				})

				expect(result).toEqual({
					data = {
						nnList = '["A"]',
					},
				})
			end)

			it("allows non-null lists to contain null", function()
				local doc = [[

        query ($input: [String]!) {
          nnList(input: $input)
        }
      ]]
				local result = executeQuery(doc, {
					input = {
						"A",
						NULL,
						"B",
					},
				})

				expect(result).toEqual({
					data = {
						nnList = '["A", null, "B"]',
					},
				})
			end)

			it("allows lists of non-nulls to be null", function()
				local doc = [[

        query ($input: [String!]) {
          listNN(input: $input)
        }
      ]]
				local result = executeQuery(doc, { input = NULL })

				expect(result).toEqual({
					data = {
						listNN = "null",
					},
				})
			end)

			it("allows lists of non-nulls to contain values", function()
				local doc = [[

        query ($input: [String!]) {
          listNN(input: $input)
        }
      ]]
				local result = executeQuery(doc, {
					input = {
						"A",
					},
				})

				expect(result).toEqual({
					data = {
						listNN = '["A"]',
					},
				})
			end)

			it("does not allow lists of non-nulls to contain null", function()
				local doc = [[

        query ($input: [String!]) {
          listNN(input: $input)
        }
      ]]
				local result = executeQuery(doc, {
					input = {
						"A",
						NULL,
						"B",
					},
				})

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toEqual({ "errors" })
				expect(result.errors).toHaveSameMembers({
					{
						message = 'Variable "$input" got invalid value null at "input[2]"; Expected non-nullable type "String!" not to be null.',
						locations = {
							{
								line = 2,
								column = 16,
							},
						},
					},
				}, true)
			end)

			it("does not allow non-null lists of non-nulls to be null", function()
				local doc = [[

        query ($input: [String!]!) {
          nnListNN(input: $input)
        }
      ]]
				local result = executeQuery(doc, { input = NULL })

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toEqual({ "errors" })
				expect(result.errors).toHaveSameMembers({
					{
						message = 'Variable "$input" of non-null type "[String!]!" must not be null.',
						locations = {
							{
								line = 2,
								column = 16,
							},
						},
					},
				}, true)
			end)

			it("allows non-null lists of non-nulls to contain values", function()
				local doc = [[

        query ($input: [String!]!) {
          nnListNN(input: $input)
        }
      ]]
				local result = executeQuery(doc, {
					input = {
						"A",
					},
				})

				expect(result).toEqual({
					data = {
						nnListNN = '["A"]',
					},
				})
			end)

			it("does not allow non-null lists of non-nulls to contain null", function()
				local doc = [[

        query ($input: [String!]!) {
          nnListNN(input: $input)
        }
      ]]
				local result = executeQuery(doc, {
					input = {
						"A",
						NULL,
						"B",
					},
				})

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toEqual({ "errors" })
				expect(result.errors).toHaveSameMembers({
					{
						message = 'Variable "$input" got invalid value null at "input[2]"; Expected non-nullable type "String!" not to be null.',
						locations = {
							{
								line = 2,
								column = 16,
							},
						},
					},
				}, true)
			end)

			it("does not allow invalid types to be used as values", function()
				local doc = [[

        query ($input: TestType!) {
          fieldWithObjectInput(input: $input)
        }
      ]]
				local result = executeQuery(doc, {
					input = {
						list = {
							"A",
							"B",
						},
					},
				})

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toEqual({ "errors" })
				expect(result.errors).toHaveSameMembers({
					{
						message = 'Variable "$input" expected value of type "TestType!" which cannot be used as an input type.',
						locations = {
							{
								line = 2,
								column = 24,
							},
						},
					},
				}, true)
			end)

			it("does not allow unknown types to be used as values", function()
				local doc = [[

        query ($input: UnknownType!) {
          fieldWithObjectInput(input: $input)
        }
      ]]
				local result = executeQuery(doc, {
					input = "WhoKnows",
				})

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toEqual({ "errors" })
				expect(result.errors).toHaveSameMembers({
					{
						message = 'Variable "$input" expected value of type "UnknownType!" which cannot be used as an input type.',
						locations = {
							{
								line = 2,
								column = 24,
							},
						},
					},
				}, true)
			end)
		end)

		describe("Execute: Uses argument default values", function()
			it("when no argument provided", function()
				local result = executeQuery("{ fieldWithDefaultArgumentValue }")

				expect(result).toEqual({
					data = {
						fieldWithDefaultArgumentValue = '"Hello World"',
					},
				})
			end)

			it("when omitted variable provided", function()
				local result = executeQuery([[

        query ($optional: String) {
          fieldWithDefaultArgumentValue(input: $optional)
        }
      ]])

				expect(result).toEqual({
					data = {
						fieldWithDefaultArgumentValue = '"Hello World"',
					},
				})
			end)

			it("not when argument cannot be coerced", function()
				local result = executeQuery([[

        {
          fieldWithDefaultArgumentValue(input: WRONG_TYPE)
        }
      ]])

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toHaveSameMembers({ "errors", "data" })
				expect(result.data).toEqual({ fieldWithDefaultArgumentValue = NULL })
				expect(result.errors).toHaveSameMembers({
					{
						message = 'Argument "input" has invalid value WRONG_TYPE.',
						locations = {
							{
								line = 3,
								column = 48,
							},
						},
						path = {
							"fieldWithDefaultArgumentValue",
						},
					},
				}, true)
			end)

			it("when no runtime value is provided to a non-null argument", function()
				local result = executeQuery([[

        query optionalVariable($optional: String) {
          fieldWithNonNullableStringInputAndDefaultArgumentValue(input: $optional)
        }
      ]])

				expect(result).toEqual({
					data = {
						fieldWithNonNullableStringInputAndDefaultArgumentValue = '"Hello World"',
					},
				})
			end)
		end)

		describe("getVariableValues: limit maximum number of coercion errors", function()
			local doc = parse([[

      query ($input: [String!]) {
        listNN(input: $input)
      }
    ]])
			local operation = doc.definitions[1]

			invariant(operation.kind == Kind.OPERATION_DEFINITION)

			local variableDefinitions = operation.variableDefinitions

			invariant(variableDefinitions ~= nil)

			local inputValue = {
				input = { 0, 1, 2 },
			}

			local function invalidValueError(value, index)
				return {
					message = (
						'Variable "$input" got invalid value %s at "input[%s]"; String cannot represent a non string value: %s'
					):format(value, index, value),
					locations = {
						{
							line = 2,
							column = 14,
						},
					},
				}
			end

			it("return all errors by default", function()
				local result = getVariableValues(schema, variableDefinitions, inputValue)

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toEqual({ "errors" })
				expect(result.errors).toHaveSameMembers(
					-- ROBLOX deviation: second param of invalidValueError is an index which is 1-based in Lua
					{
						invalidValueError(0, 1),
						invalidValueError(1, 2),
						invalidValueError(2, 3),
					},
					true
				)
			end)

			it("when maxErrors is equal to number of errors", function()
				local result = getVariableValues(
					schema,
					variableDefinitions,
					inputValue,
					{ maxErrors = 3 }
				)

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toEqual({ "errors" })
				expect(result.errors).toHaveSameMembers(
					-- ROBLOX deviation: second param of invalidValueError is an index which is 1-based in Lua
					{
						invalidValueError(0, 1),
						invalidValueError(1, 2),
						invalidValueError(2, 3),
					},
					true
				)
			end)

			it("when maxErrors is less than number of errors", function()
				local result = getVariableValues(
					schema,
					variableDefinitions,
					inputValue,
					{ maxErrors = 2 }
				)

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toEqual({ "errors" })
				expect(result.errors).toHaveSameMembers(
					-- ROBLOX deviation: second param of invalidValueError is an index which is 1-based in Lua
					{
						invalidValueError(0, 1),
						invalidValueError(1, 2),
						{
							message = "Too many errors processing variables, error limit reached. Execution aborted.",
						},
					},
					true
				)
			end)
		end)
	end)
end

--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/KnownDirectivesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local root = validationWorkspace.Parent
	local buildASTSchema = require(root.utilities.buildASTSchema)
	local buildSchema = buildASTSchema.buildSchema
	local KnownDirectivesRule =
		require(validationWorkspace.rules.KnownDirectivesRule).KnownDirectivesRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors
	local expectSDLValidationErrors = harness.expectSDLValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, KnownDirectivesRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	local function expectSDLErrors(expect_, sdlStr, schema)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectSDLValidationErrors(expect_, schema, KnownDirectivesRule, "\n" .. sdlStr)
	end

	local function expectValidSDL(expect_, sdlStr, schema)
		expectSDLErrors(expect_, sdlStr, schema).toEqual({})
	end

	local schemaWithSDLDirectives = buildSchema([[
		directive @onSchema on SCHEMA
		directive @onScalar on SCALAR
		directive @onObject on OBJECT
		directive @onFieldDefinition on FIELD_DEFINITION
		directive @onArgumentDefinition on ARGUMENT_DEFINITION
		directive @onInterface on INTERFACE
		directive @onUnion on UNION
		directive @onEnum on ENUM
		directive @onEnumValue on ENUM_VALUE
		directive @onInputObject on INPUT_OBJECT
		directive @onInputFieldDefinition on INPUT_FIELD_DEFINITION
	]])

	describe("Validate: Known directives", function()
		it("with no directives", function()
			expectValid(
				expect,
				[[
				query Foo {
					name
					...Frag
				}

				fragment Frag on Dog {
					name
				}
			]]
			)
		end)

		it("with known directives", function()
			expectValid(
				expect,
				[[
				{
					dog @include(if: true) {
						name
					}
					human @skip(if: false) {
						name
					}
				}
			]]
			)
		end)

		it("with unknown directive", function()
			expectErrors(
				expect,
				[[
      {
        dog @unknown(directive: "value") {
          name
        }
      }
			]]
			).toEqual({
				{
					message = 'Unknown directive "@unknown".',
					locations = { { line = 3, column = 13 } },
				},
			})
		end)

		it("with many unknown directives", function()
			expectErrors(
				expect,
				[[
      {
        dog @unknown(directive: "value") {
          name
        }
        human @unknown(directive: "value") {
          name
          pets @unknown(directive: "value") {
            name
          }
        }
      }
			]]
			).toEqual({
				{
					message = 'Unknown directive "@unknown".',
					locations = { { line = 3, column = 13 } },
				},
				{
					message = 'Unknown directive "@unknown".',
					locations = { { line = 6, column = 15 } },
				},
				{
					message = 'Unknown directive "@unknown".',
					locations = { { line = 8, column = 16 } },
				},
			})
		end)

		it("with well placed directives", function()
			expectValid(
				expect,
				[[
				query ($var: Boolean) @onQuery {
					name @include(if: $var)
					...Frag @include(if: true)
					skippedField @skip(if: true)
					...SkippedFrag @skip(if: true)

					... @skip(if: true) {
						skippedField
					}
				}

				mutation @onMutation {
					someField
				}

				subscription @onSubscription {
					someField
				}

				fragment Frag on SomeType @onFragmentDefinition {
					someField
				}
			]]
			)
		end)

		it("with well placed variable definition directive", function()
			expectValid(
				expect,
				[[
				query Foo($var: Boolean @onVariableDefinition) {
					name
				}
			]]
			)
		end)

		it("with misplaced directives", function()
			expectErrors(
				expect,
				[[
      query Foo($var: Boolean) @include(if: true) {
        name @onQuery @include(if: $var)
        ...Frag @onQuery
      }

      mutation Bar @onQuery {
        someField
      }
			]]
			).toEqual({
				{
					message = 'Directive "@include" may not be used on QUERY.',
					locations = { { line = 2, column = 32 } },
				},
				{
					message = 'Directive "@onQuery" may not be used on FIELD.',
					locations = { { line = 3, column = 14 } },
				},
				{
					message = 'Directive "@onQuery" may not be used on FRAGMENT_SPREAD.',
					locations = { { line = 4, column = 17 } },
				},
				{
					message = 'Directive "@onQuery" may not be used on MUTATION.',
					locations = { { line = 7, column = 20 } },
				},
			})
		end)

		it("with misplaced variable definition directive", function()
			expectErrors(
				expect,
				[[
      query Foo($var: Boolean @onField) {
        name
      }
			]]
			).toEqual({
				{
					message = 'Directive "@onField" may not be used on VARIABLE_DEFINITION.',
					locations = { { line = 2, column = 31 } },
				},
			})
		end)

		describe("within SDL", function()
			it("with directive defined inside SDL", function()
				expectValidSDL(
					expect,
					[[
					type Query {
						foo: String @test
					}

					directive @test on FIELD_DEFINITION
				]]
				)
			end)

			it("with standard directive", function()
				expectValidSDL(
					expect,
					[[
					type Query {
						foo: String @deprecated
					}
				]]
				)
			end)

			it("with overridden standard directive", function()
				expectValidSDL(
					expect,
					[[
					schema @deprecated {
						query: Query
					}
					directive @deprecated on SCHEMA
				]]
				)
			end)

			it("with directive defined in schema extension", function()
				local schema = buildSchema([[
					type Query {
						foo: String
					}
				]])

				expectValidSDL(
					expect,
					[[
					directive @test on OBJECT

					extend type Query @test
				]],
					schema
				)
			end)

			it("with directive used in schema extension", function()
				local schema = buildSchema([[
					directive @test on OBJECT

					type Query {
						foo: String
					}
				]])

				expectValidSDL(
					expect,
					[[
					extend type Query @test
				]],
					schema
				)
			end)

			it("with unknown directive in schema extension", function()
				local schema = buildSchema([[
					type Query {
						foo: String
					}
				]])

				expectSDLErrors(
					expect,
					[[
          extend type Query @unknown
				]],
					schema
				).toEqual({
					{
						message = 'Unknown directive "@unknown".',
						locations = { { line = 2, column = 29 } },
					},
				})
			end)

			it("with well placed directives", function()
				expectValidSDL(
					expect,
					[[
					type MyObj implements MyInterface @onObject {
						myField(myArg: Int @onArgumentDefinition): String @onFieldDefinition
					}

					extend type MyObj @onObject

					scalar MyScalar @onScalar

					extend scalar MyScalar @onScalar

					interface MyInterface @onInterface {
						myField(myArg: Int @onArgumentDefinition): String @onFieldDefinition
					}

					extend interface MyInterface @onInterface

					union MyUnion @onUnion = MyObj | Other

					extend union MyUnion @onUnion

					enum MyEnum @onEnum {
						MY_VALUE @onEnumValue
					}

					extend enum MyEnum @onEnum

					input MyInput @onInputObject {
						myField: Int @onInputFieldDefinition
					}

					extend input MyInput @onInputObject

					schema @onSchema {
						query: MyQuery
					}

					extend schema @onSchema
				]],
					schemaWithSDLDirectives
				)
			end)

			it("with misplaced directives", function()
				expectSDLErrors(
					expect,
					[[
          type MyObj implements MyInterface @onInterface {
            myField(myArg: Int @onInputFieldDefinition): String @onInputFieldDefinition
          }

          scalar MyScalar @onEnum

          interface MyInterface @onObject {
            myField(myArg: Int @onInputFieldDefinition): String @onInputFieldDefinition
          }

          union MyUnion @onEnumValue = MyObj | Other

          enum MyEnum @onScalar {
            MY_VALUE @onUnion
          }

          input MyInput @onEnum {
            myField: Int @onArgumentDefinition
          }

          schema @onObject {
            query: MyQuery
          }

          extend schema @onObject
				]],
					schemaWithSDLDirectives
				).toEqual({
					{
						message = 'Directive "@onInterface" may not be used on OBJECT.',
						locations = { { line = 2, column = 45 } },
					},
					{
						message = 'Directive "@onInputFieldDefinition" may not be used on ARGUMENT_DEFINITION.',
						locations = { { line = 3, column = 32 } },
					},
					{
						message = 'Directive "@onInputFieldDefinition" may not be used on FIELD_DEFINITION.',
						locations = { { line = 3, column = 65 } },
					},
					{
						message = 'Directive "@onEnum" may not be used on SCALAR.',
						locations = { { line = 6, column = 27 } },
					},
					{
						message = 'Directive "@onObject" may not be used on INTERFACE.',
						locations = { { line = 8, column = 33 } },
					},
					{
						message = 'Directive "@onInputFieldDefinition" may not be used on ARGUMENT_DEFINITION.',
						locations = { { line = 9, column = 32 } },
					},
					{
						message = 'Directive "@onInputFieldDefinition" may not be used on FIELD_DEFINITION.',
						locations = { { line = 9, column = 65 } },
					},
					{
						message = 'Directive "@onEnumValue" may not be used on UNION.',
						locations = { { line = 12, column = 25 } },
					},
					{
						message = 'Directive "@onScalar" may not be used on ENUM.',
						locations = { { line = 14, column = 23 } },
					},
					{
						message = 'Directive "@onUnion" may not be used on ENUM_VALUE.',
						locations = { { line = 15, column = 22 } },
					},
					{
						message = 'Directive "@onEnum" may not be used on INPUT_OBJECT.',
						locations = { { line = 18, column = 25 } },
					},
					{
						message = 'Directive "@onArgumentDefinition" may not be used on INPUT_FIELD_DEFINITION.',
						locations = { { line = 19, column = 26 } },
					},
					{
						message = 'Directive "@onObject" may not be used on SCHEMA.',
						locations = { { line = 22, column = 18 } },
					},
					{
						message = 'Directive "@onObject" may not be used on SCHEMA.',
						locations = { { line = 26, column = 25 } },
					},
				})
			end)
		end)
	end)
end

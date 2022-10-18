--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/KnownTypeNamesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local root = validationWorkspace.Parent
	local buildASTSchema = require(root.utilities.buildASTSchema)
	local buildSchema = buildASTSchema.buildSchema
	local KnownTypeNamesRule =
		require(validationWorkspace.rules.KnownTypeNamesRule).KnownTypeNamesRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors
	local expectValidationErrorsWithSchema = harness.expectValidationErrorsWithSchema
	local expectSDLValidationErrors = harness.expectSDLValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, KnownTypeNamesRule, "\n" .. queryStr)
	end

	local function expectErrorsWithSchema(expect_, schema, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrorsWithSchema(
			expect_,
			schema,
			KnownTypeNamesRule,
			"\n" .. queryStr
		)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	local function expectSDLErrors(expect_, sdlStr: string, schema)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectSDLValidationErrors(expect_, schema, KnownTypeNamesRule, "\n" .. sdlStr)
	end

	local function expectValidSDL(expect_, sdlStr: string, schema)
		expectSDLErrors(expect_, sdlStr, schema).toEqual({})
	end

	describe("Validate: Known type names", function()
		it("known type names are valid", function()
			expectValid(
				expect,
				[[
				query Foo(
					$var: String
					$required: [Int!]!
					$introspectionType: __EnumValue
				) {
					user(id: 4) {
					pets { ... on Pet { name }, ...PetFields, ... { name } }
					}
				}

				fragment PetFields on Pet {
					name
				}
			]]
			)
		end)

		it("unknown type names are invalid", function()
			expectErrors(
				expect,
				[[
      query Foo($var: JumbledUpLetters) {
        user(id: 4) {
          name
          pets { ... on Badger { name }, ...PetFields }
        }
      }
      fragment PetFields on Peat {
        name
      }
			]]
			).toEqual({
				{
					message = 'Unknown type "JumbledUpLetters".',
					locations = { { line = 2, column = 23 } },
				},
				{
					message = 'Unknown type "Badger".',
					locations = { { line = 5, column = 25 } },
				},
				{
					message = 'Unknown type "Peat". Did you mean "Pet" or "Cat"?',
					locations = { { line = 8, column = 29 } },
				},
			})
		end)

		it("references to standard scalars that are missing in schema", function()
			local schema = buildSchema("type Query { foo: String }")
			local query = [[
      query ($id: ID, $float: Float, $int: Int) {
        __typename
      }
			]]

			expectErrorsWithSchema(expect, schema, query).toEqual({
				{
					message = 'Unknown type "ID".',
					locations = { { line = 2, column = 19 } },
				},
				{
					message = 'Unknown type "Float".',
					locations = { { line = 2, column = 31 } },
				},
				{
					message = 'Unknown type "Int".',
					locations = { { line = 2, column = 44 } },
				},
			})
		end)

		describe("within SDL", function()
			it("use standard types", function()
				expectValidSDL(
					expect,
					[[
				type Query {
					string: String
					int: Int
					float: Float
					boolean: Boolean
					id: ID
					introspectionType: __EnumValue
				}
				]]
				)
			end)

			it("reference types defined inside the same document", function()
				expectValidSDL(
					expect,
					[[
					union SomeUnion = SomeObject | AnotherObject

					type SomeObject implements SomeInterface {
						someScalar(arg: SomeInputObject): SomeScalar
					}

					type AnotherObject {
						foo(arg: SomeInputObject): String
					}

					type SomeInterface {
						someScalar(arg: SomeInputObject): SomeScalar
					}

					input SomeInputObject {
						someScalar: SomeScalar
					}

					scalar SomeScalar

					type RootQuery {
						someInterface: SomeInterface
						someUnion: SomeUnion
						someScalar: SomeScalar
						someObject: SomeObject
					}

					schema {
						query: RootQuery
					}
				]]
				)
			end)

			it("unknown type references", function()
				expectSDLErrors(
					expect,
					[[
        type A
        type B

        type SomeObject implements C {
          e(d: D): E
        }

        union SomeUnion = F | G

        interface SomeInterface {
          i(h: H): I
        }

        input SomeInput {
          j: J
        }

        directive @SomeDirective(k: K) on QUERY

        schema {
          query: L
          mutation: M
          subscription: N
        }
				]]
				).toEqual({
					{
						message = 'Unknown type "C". Did you mean "A" or "B"?',
						locations = { { line = 5, column = 36 } },
					},
					{
						message = 'Unknown type "D". Did you mean "A", "B", or "ID"?',
						locations = { { line = 6, column = 16 } },
					},
					{
						message = 'Unknown type "E". Did you mean "A" or "B"?',
						locations = { { line = 6, column = 20 } },
					},
					{
						message = 'Unknown type "F". Did you mean "A" or "B"?',
						locations = { { line = 9, column = 27 } },
					},
					{
						message = 'Unknown type "G". Did you mean "A" or "B"?',
						locations = { { line = 9, column = 31 } },
					},
					{
						message = 'Unknown type "H". Did you mean "A" or "B"?',
						locations = { { line = 12, column = 16 } },
					},
					{
						message = 'Unknown type "I". Did you mean "A", "B", or "ID"?',
						locations = { { line = 12, column = 20 } },
					},
					{
						message = 'Unknown type "J". Did you mean "A" or "B"?',
						locations = { { line = 16, column = 14 } },
					},
					{
						message = 'Unknown type "K". Did you mean "A" or "B"?',
						locations = { { line = 19, column = 37 } },
					},
					{
						message = 'Unknown type "L". Did you mean "A" or "B"?',
						locations = { { line = 22, column = 18 } },
					},
					{
						message = 'Unknown type "M". Did you mean "A" or "B"?',
						locations = { { line = 23, column = 21 } },
					},
					{
						message = 'Unknown type "N". Did you mean "A" or "B"?',
						locations = { { line = 24, column = 25 } },
					},
				})
			end)

			it("does not consider non-type definitions", function()
				expectSDLErrors(
					expect,
					[[
        query Foo { __typename }
        fragment Foo on Query { __typename }
        directive @Foo on QUERY

        type Query {
          foo: Foo
        }
			]]
				).toEqual({
					{
						message = 'Unknown type "Foo".',
						locations = { { line = 7, column = 16 } },
					},
				})
			end)

			it("reference standard types inside extension document", function()
				local schema = buildSchema("type Foo")
				local sdl = [[
					type SomeType {
						string: String
						int: Int
						float: Float
						boolean: Boolean
						id: ID
						introspectionType: __EnumValue
					}
				]]

				expectValidSDL(expect, sdl, schema)
			end)

			it("reference types inside extension document", function()
				local schema = buildSchema("type Foo")
				local sdl = [[
					type QueryRoot {
						foo: Foo
						bar: Bar
					}

					scalar Bar

					schema {
						query: QueryRoot
					}
				]]

				expectValidSDL(expect, sdl, schema)
			end)

			it("unknown type references inside extension document", function()
				local schema = buildSchema("type A")
				local sdl = [[
        type B

        type SomeObject implements C {
          e(d: D): E
        }

        union SomeUnion = F | G

        interface SomeInterface {
          i(h: H): I
        }

        input SomeInput {
          j: J
        }

        directive @SomeDirective(k: K) on QUERY

        schema {
          query: L
          mutation: M
          subscription: N
        }
				]]

				expectSDLErrors(expect, sdl, schema).toEqual({
					{
						message = 'Unknown type "C". Did you mean "A" or "B"?',
						locations = { { line = 4, column = 36 } },
					},
					{
						message = 'Unknown type "D". Did you mean "A", "B", or "ID"?',
						locations = { { line = 5, column = 16 } },
					},
					{
						message = 'Unknown type "E". Did you mean "A" or "B"?',
						locations = { { line = 5, column = 20 } },
					},
					{
						message = 'Unknown type "F". Did you mean "A" or "B"?',
						locations = { { line = 8, column = 27 } },
					},
					{
						message = 'Unknown type "G". Did you mean "A" or "B"?',
						locations = { { line = 8, column = 31 } },
					},
					{
						message = 'Unknown type "H". Did you mean "A" or "B"?',
						locations = { { line = 11, column = 16 } },
					},
					{
						message = 'Unknown type "I". Did you mean "A", "B", or "ID"?',
						locations = { { line = 11, column = 20 } },
					},
					{
						message = 'Unknown type "J". Did you mean "A" or "B"?',
						locations = { { line = 15, column = 14 } },
					},
					{
						message = 'Unknown type "K". Did you mean "A" or "B"?',
						locations = { { line = 18, column = 37 } },
					},
					{
						message = 'Unknown type "L". Did you mean "A" or "B"?',
						locations = { { line = 21, column = 18 } },
					},
					{
						message = 'Unknown type "M". Did you mean "A" or "B"?',
						locations = { { line = 22, column = 21 } },
					},
					{
						message = 'Unknown type "N". Did you mean "A" or "B"?',
						locations = { { line = 23, column = 25 } },
					},
				})
			end)
		end)
	end)
end

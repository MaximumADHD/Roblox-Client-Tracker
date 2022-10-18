--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/UniqueDirectivesPerLocationRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local root = validationWorkspace.Parent
	local parse = require(root.language.parser).parse
	local extendSchema = require(root.utilities.extendSchema).extendSchema
	local UniqueDirectivesPerLocationRule = require(
		validationWorkspace.rules.UniqueDirectivesPerLocationRule
	).UniqueDirectivesPerLocationRule
	local harness = require(script.Parent.harness)
	local testSchema = harness.testSchema
	local expectValidationErrorsWithSchema = harness.expectValidationErrorsWithSchema
	local expectSDLValidationErrors = harness.expectSDLValidationErrors
	local extensionSDL = [[
		directive @directive on FIELD | FRAGMENT_DEFINITION
		directive @directiveA on FIELD | FRAGMENT_DEFINITION
		directive @directiveB on FIELD | FRAGMENT_DEFINITION
		directive @repeatable repeatable on FIELD | FRAGMENT_DEFINITION
	]]
	local schemaWithDirectives = extendSchema(testSchema, parse(extensionSDL))

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrorsWithSchema(
			expect_,
			schemaWithDirectives,
			UniqueDirectivesPerLocationRule,
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
		return expectSDLValidationErrors(
			expect_,
			schema,
			UniqueDirectivesPerLocationRule,
			"\n" .. sdlStr
		)
	end

	describe("Validate: Directives Are Unique Per Location", function()
		it("no directives", function()
			expectValid(
				expect,
				[[
				fragment Test on Type {
					field
				}
			]]
			)
		end)

		it("unique directives in different locations", function()
			expectValid(
				expect,
				[[
				fragment Test on Type @directiveA {
					field @directiveB
				}
			]]
			)
		end)

		it("unique directives in same locations", function()
			expectValid(
				expect,
				[[
				fragment Test on Type @directiveA @directiveB {
					field @directiveA @directiveB
				}
			]]
			)
		end)

		it("same directives in different locations", function()
			expectValid(
				expect,
				[[
				fragment Test on Type @directiveA {
					field @directiveA
				}
			]]
			)
		end)

		it("same directives in similar locations", function()
			expectValid(
				expect,
				[[
				fragment Test on Type {
					field @directive
					field @directive
				}
			]]
			)
		end)

		it("repeatable directives in same location", function()
			expectValid(
				expect,
				[[
				fragment Test on Type @repeatable @repeatable {
					field @repeatable @repeatable
				}
			]]
			)
		end)

		it("unknown directives must be ignored", function()
			expectValid(
				expect,
				[[
				type Test @unknown @unknown {
					field: String! @unknown @unknown
				}

				extend type Test @unknown {
					anotherField: String!
				}
			]]
			)
		end)

		it("duplicate directives in one location", function()
			expectErrors(
				expect,
				[[
      fragment Test on Type {
        field @directive @directive
      }
			]]
			).toEqual({
				{
					message = 'The directive "@directive" can only be used once at this location.',
					locations = {
						{ line = 3, column = 15 },
						{ line = 3, column = 26 },
					},
				},
			})
		end)

		it("many duplicate directives in one location", function()
			expectErrors(
				expect,
				[[
      fragment Test on Type {
        field @directive @directive @directive
      }
			]]
			).toEqual({
				{
					message = 'The directive "@directive" can only be used once at this location.',
					locations = {
						{ line = 3, column = 15 },
						{ line = 3, column = 26 },
					},
				},
				{
					message = 'The directive "@directive" can only be used once at this location.',
					locations = {
						{ line = 3, column = 15 },
						{ line = 3, column = 37 },
					},
				},
			})
		end)

		it("different duplicate directives in one location", function()
			expectErrors(
				expect,
				[[
      fragment Test on Type {
        field @directiveA @directiveB @directiveA @directiveB
      }
		]]
			).toEqual({
				{
					message = 'The directive "@directiveA" can only be used once at this location.',
					locations = {
						{ line = 3, column = 15 },
						{ line = 3, column = 39 },
					},
				},
				{
					message = 'The directive "@directiveB" can only be used once at this location.',
					locations = {
						{ line = 3, column = 27 },
						{ line = 3, column = 51 },
					},
				},
			})
		end)

		it("duplicate directives in many locations", function()
			expectErrors(
				expect,
				[[
      fragment Test on Type @directive @directive {
        field @directive @directive
      }
			]]
			).toEqual({
				{
					message = 'The directive "@directive" can only be used once at this location.',
					locations = {
						{ line = 2, column = 29 },
						{ line = 2, column = 40 },
					},
				},
				{
					message = 'The directive "@directive" can only be used once at this location.',
					locations = {
						{ line = 3, column = 15 },
						{ line = 3, column = 26 },
					},
				},
			})
		end)

		it("duplicate directives on SDL definitions", function()
			expectSDLErrors(
				expect,
				[[
      directive @nonRepeatable on
        SCHEMA | SCALAR | OBJECT | INTERFACE | UNION | INPUT_OBJECT

      schema @nonRepeatable @nonRepeatable { query: Dummy }

      scalar TestScalar @nonRepeatable @nonRepeatable
      type TestObject @nonRepeatable @nonRepeatable
      interface TestInterface @nonRepeatable @nonRepeatable
      union TestUnion @nonRepeatable @nonRepeatable
      input TestInput @nonRepeatable @nonRepeatable
			]]
			).toEqual({
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 5, column = 14 },
						{ line = 5, column = 29 },
					},
				},
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 7, column = 25 },
						{ line = 7, column = 40 },
					},
				},
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 8, column = 23 },
						{ line = 8, column = 38 },
					},
				},
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 9, column = 31 },
						{ line = 9, column = 46 },
					},
				},
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 10, column = 23 },
						{ line = 10, column = 38 },
					},
				},
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 11, column = 23 },
						{ line = 11, column = 38 },
					},
				},
			})
		end)

		it("duplicate directives on SDL extensions", function()
			expectSDLErrors(
				expect,
				[[
      directive @nonRepeatable on
        SCHEMA | SCALAR | OBJECT | INTERFACE | UNION | INPUT_OBJECT

      extend schema @nonRepeatable @nonRepeatable

      extend scalar TestScalar @nonRepeatable @nonRepeatable
      extend type TestObject @nonRepeatable @nonRepeatable
      extend interface TestInterface @nonRepeatable @nonRepeatable
      extend union TestUnion @nonRepeatable @nonRepeatable
      extend input TestInput @nonRepeatable @nonRepeatable
			]]
			).toEqual({
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 5, column = 21 },
						{ line = 5, column = 36 },
					},
				},
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 7, column = 32 },
						{ line = 7, column = 47 },
					},
				},
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 8, column = 30 },
						{ line = 8, column = 45 },
					},
				},
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 9, column = 38 },
						{ line = 9, column = 53 },
					},
				},
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 10, column = 30 },
						{ line = 10, column = 45 },
					},
				},
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 11, column = 30 },
						{ line = 11, column = 45 },
					},
				},
			})
		end)

		it("duplicate directives between SDL definitions and extensions", function()
			expectSDLErrors(
				expect,
				[[
      directive @nonRepeatable on SCHEMA

      schema @nonRepeatable { query: Dummy }
      extend schema @nonRepeatable
			]]
			).toEqual({
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 4, column = 14 },
						{ line = 5, column = 21 },
					},
				},
			})
			expectSDLErrors(
				expect,
				[[
      directive @nonRepeatable on SCALAR

      scalar TestScalar @nonRepeatable
      extend scalar TestScalar @nonRepeatable
      scalar TestScalar @nonRepeatable
			]]
			).toEqual({
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 4, column = 25 },
						{ line = 5, column = 32 },
					},
				},
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 4, column = 25 },
						{ line = 6, column = 25 },
					},
				},
			})
			expectSDLErrors(
				expect,
				[[
      directive @nonRepeatable on OBJECT

      extend type TestObject @nonRepeatable
      type TestObject @nonRepeatable
      extend type TestObject @nonRepeatable
			]]
			).toEqual({
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 4, column = 30 },
						{ line = 5, column = 23 },
					},
				},
				{
					message = 'The directive "@nonRepeatable" can only be used once at this location.',
					locations = {
						{ line = 4, column = 30 },
						{ line = 6, column = 30 },
					},
				},
			})
		end)
	end)
end

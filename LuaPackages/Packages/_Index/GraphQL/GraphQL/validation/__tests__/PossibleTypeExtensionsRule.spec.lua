--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/PossibleTypeExtensionsRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local root = validationWorkspace.Parent
	local buildASTSchema = require(root.utilities.buildASTSchema)
	local buildSchema = buildASTSchema.buildSchema
	local PossibleTypeExtensionsRule =
		require(
			validationWorkspace.rules.PossibleTypeExtensionsRule
		).PossibleTypeExtensionsRule
	local harness = require(script.Parent.harness)
	local expectSDLValidationErrors = harness.expectSDLValidationErrors

	local function expectSDLErrors(expect_, sdlStr, schema)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectSDLValidationErrors(
			expect_,
			schema,
			PossibleTypeExtensionsRule,
			"\n" .. sdlStr
		)
	end

	local function expectValidSDL(expect_, sdlStr, schema)
		expectSDLErrors(expect_, sdlStr, schema).toEqual({})
	end

	describe("Validate: Possible type extensions", function()
		it("no extensions", function()
			expectValidSDL(
				expect,
				[[
				scalar FooScalar
				type FooObject
				interface FooInterface
				union FooUnion
				enum FooEnum
				input FooInputObject
			]]
			)
		end)

		it("one extension per type", function()
			expectValidSDL(
				expect,
				[[
				scalar FooScalar
				type FooObject
				interface FooInterface
				union FooUnion
				enum FooEnum
				input FooInputObject

				extend scalar FooScalar @dummy
				extend type FooObject @dummy
				extend interface FooInterface @dummy
				extend union FooUnion @dummy
				extend enum FooEnum @dummy
				extend input FooInputObject @dummy
			]]
			)
		end)

		it("many extensions per type", function()
			expectValidSDL(
				expect,
				[[
				scalar FooScalar
				type FooObject
				interface FooInterface
				union FooUnion
				enum FooEnum
				input FooInputObject

				extend scalar FooScalar @dummy
				extend type FooObject @dummy
				extend interface FooInterface @dummy
				extend union FooUnion @dummy
				extend enum FooEnum @dummy
				extend input FooInputObject @dummy

				extend scalar FooScalar @dummy
				extend type FooObject @dummy
				extend interface FooInterface @dummy
				extend union FooUnion @dummy
				extend enum FooEnum @dummy
				extend input FooInputObject @dummy
			]]
			)
		end)

		it("extending unknown type", function()
			local message =
				'Cannot extend type "Unknown" because it is not defined. Did you mean "Known"?'

			expectSDLErrors(
				expect,
				[[
      type Known

      extend scalar Unknown @dummy
      extend type Unknown @dummy
      extend interface Unknown @dummy
      extend union Unknown @dummy
      extend enum Unknown @dummy
      extend input Unknown @dummy
			]]
			).toEqual({
				{
					message = message,
					locations = { { line = 4, column = 21 } },
				},
				{
					message = message,
					locations = { { line = 5, column = 19 } },
				},
				{
					message = message,
					locations = { { line = 6, column = 24 } },
				},
				{
					message = message,
					locations = { { line = 7, column = 20 } },
				},
				{
					message = message,
					locations = { { line = 8, column = 19 } },
				},
				{
					message = message,
					locations = { { line = 9, column = 20 } },
				},
			})
		end)

		it("does not consider non-type definitions", function()
			local message = 'Cannot extend type "Foo" because it is not defined.'

			expectSDLErrors(
				expect,
				[[
      query Foo { __typename }
      fragment Foo on Query { __typename }
      directive @Foo on SCHEMA

      extend scalar Foo @dummy
      extend type Foo @dummy
      extend interface Foo @dummy
      extend union Foo @dummy
      extend enum Foo @dummy
      extend input Foo @dummy
			]]
			).toEqual({
				{
					message = message,
					locations = { { line = 6, column = 21 } },
				},
				{
					message = message,
					locations = { { line = 7, column = 19 } },
				},
				{
					message = message,
					locations = { { line = 8, column = 24 } },
				},
				{
					message = message,
					locations = { { line = 9, column = 20 } },
				},
				{
					message = message,
					locations = { { line = 10, column = 19 } },
				},
				{
					message = message,
					locations = { { line = 11, column = 20 } },
				},
			})
		end)

		it("extending with different kinds", function()
			expectSDLErrors(
				expect,
				[[
      scalar FooScalar
      type FooObject
      interface FooInterface
      union FooUnion
      enum FooEnum
      input FooInputObject

      extend type FooScalar @dummy
      extend interface FooObject @dummy
      extend union FooInterface @dummy
      extend enum FooUnion @dummy
      extend input FooEnum @dummy
      extend scalar FooInputObject @dummy
			]]
			).toEqual({
				{
					message = 'Cannot extend non-object type "FooScalar".',
					locations = {
						{ line = 2, column = 7 },
						{ line = 9, column = 7 },
					},
				},
				{
					message = 'Cannot extend non-interface type "FooObject".',
					locations = {
						{ line = 3, column = 7 },
						{ line = 10, column = 7 },
					},
				},
				{
					message = 'Cannot extend non-union type "FooInterface".',
					locations = {
						{ line = 4, column = 7 },
						{ line = 11, column = 7 },
					},
				},
				{
					message = 'Cannot extend non-enum type "FooUnion".',
					locations = {
						{ line = 5, column = 7 },
						{ line = 12, column = 7 },
					},
				},
				{
					message = 'Cannot extend non-input object type "FooEnum".',
					locations = {
						{ line = 6, column = 7 },
						{ line = 13, column = 7 },
					},
				},
				{
					message = 'Cannot extend non-scalar type "FooInputObject".',
					locations = {
						{ line = 7, column = 7 },
						{ line = 14, column = 7 },
					},
				},
			})
		end)

		it("extending types within existing schema", function()
			local schema = buildSchema([[
				scalar FooScalar
				type FooObject
				interface FooInterface
				union FooUnion
				enum FooEnum
				input FooInputObject
			]])
			local sdl = [[
				extend scalar FooScalar @dummy
				extend type FooObject @dummy
				extend interface FooInterface @dummy
				extend union FooUnion @dummy
				extend enum FooEnum @dummy
				extend input FooInputObject @dummy
			]]

			expectValidSDL(expect, sdl, schema)
		end)

		it("extending unknown types within existing schema", function()
			local schema = buildSchema("type Known")
			local sdl = [[
      extend scalar Unknown @dummy
      extend type Unknown @dummy
      extend interface Unknown @dummy
      extend union Unknown @dummy
      extend enum Unknown @dummy
      extend input Unknown @dummy
			]]

			local message =
				'Cannot extend type "Unknown" because it is not defined. Did you mean "Known"?'

			expectSDLErrors(expect, sdl, schema).toEqual({
				{
					message = message,
					locations = { { line = 2, column = 21 } },
				},
				{
					message = message,
					locations = { { line = 3, column = 19 } },
				},
				{
					message = message,
					locations = { { line = 4, column = 24 } },
				},
				{
					message = message,
					locations = { { line = 5, column = 20 } },
				},
				{
					message = message,
					locations = { { line = 6, column = 19 } },
				},
				{
					message = message,
					locations = { { line = 7, column = 20 } },
				},
			})
		end)

		it("extending types with different kinds within existing schema", function()
			local schema = buildSchema([[
				scalar FooScalar
				type FooObject
				interface FooInterface
				union FooUnion
				enum FooEnum
				input FooInputObject
			]])
			local sdl = [[
      extend type FooScalar @dummy
      extend interface FooObject @dummy
      extend union FooInterface @dummy
      extend enum FooUnion @dummy
      extend input FooEnum @dummy
      extend scalar FooInputObject @dummy
			]]

			expectSDLErrors(expect, sdl, schema).toEqual({
				{
					message = 'Cannot extend non-object type "FooScalar".',
					locations = { { line = 2, column = 7 } },
				},
				{
					message = 'Cannot extend non-interface type "FooObject".',
					locations = { { line = 3, column = 7 } },
				},
				{
					message = 'Cannot extend non-union type "FooInterface".',
					locations = { { line = 4, column = 7 } },
				},
				{
					message = 'Cannot extend non-enum type "FooUnion".',
					locations = { { line = 5, column = 7 } },
				},
				{
					message = 'Cannot extend non-input object type "FooEnum".',
					locations = { { line = 6, column = 7 } },
				},
				{
					message = 'Cannot extend non-scalar type "FooInputObject".',
					locations = { { line = 7, column = 7 } },
				},
			})
		end)
	end)
end

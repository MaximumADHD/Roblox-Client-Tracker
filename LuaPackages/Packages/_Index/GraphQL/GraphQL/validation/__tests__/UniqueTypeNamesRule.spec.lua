--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/UniqueTypeNamesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local root = validationWorkspace.Parent
	local buildASTSchema = require(root.utilities.buildASTSchema)
	local buildSchema = buildASTSchema.buildSchema
	local UniqueTypeNamesRule =
		require(validationWorkspace.rules.UniqueTypeNamesRule).UniqueTypeNamesRule
	local harness = require(script.Parent.harness)
	local expectSDLValidationErrors = harness.expectSDLValidationErrors

	local function expectSDLErrors(expect_, sdlStr: string, schema)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectSDLValidationErrors(expect_, schema, UniqueTypeNamesRule, "\n" .. sdlStr)
	end

	local function expectValidSDL(expect_, sdlStr: string, schema)
		expectSDLErrors(expect_, sdlStr, schema).toEqual({})
	end

	describe("Validate: Unique type names", function()
		it("no types", function()
			expectValidSDL(
				expect,
				[[
				directive @test on SCHEMA
			]]
			)
		end)

		it("one type", function()
			expectValidSDL(
				expect,
				[[
				type Foo
			]]
			)
		end)

		it("many types", function()
			expectValidSDL(
				expect,
				[[
				type Foo
				type Bar
				type Baz
			]]
			)
		end)

		it("type and non-type definitions named the same", function()
			expectValidSDL(
				expect,
				[[
				query Foo { __typename }
				fragment Foo on Query { __typename }
				directive @Foo on SCHEMA

				type Foo
			]]
			)
		end)

		it("types named the same", function()
			expectSDLErrors(
				expect,
				[[
      type Foo

      scalar Foo
      type Foo
      interface Foo
      union Foo
      enum Foo
      input Foo
			]]
			).toEqual({
				{
					message = 'There can be only one type named "Foo".',
					locations = {
						{ line = 2, column = 12 },
						{ line = 4, column = 14 },
					},
				},
				{
					message = 'There can be only one type named "Foo".',
					locations = {
						{ line = 2, column = 12 },
						{ line = 5, column = 12 },
					},
				},
				{
					message = 'There can be only one type named "Foo".',
					locations = {
						{ line = 2, column = 12 },
						{ line = 6, column = 17 },
					},
				},
				{
					message = 'There can be only one type named "Foo".',
					locations = {
						{ line = 2, column = 12 },
						{ line = 7, column = 13 },
					},
				},
				{
					message = 'There can be only one type named "Foo".',
					locations = {
						{ line = 2, column = 12 },
						{ line = 8, column = 12 },
					},
				},
				{
					message = 'There can be only one type named "Foo".',
					locations = {
						{ line = 2, column = 12 },
						{ line = 9, column = 13 },
					},
				},
			})
		end)

		it("adding new type to existing schema", function()
			local schema = buildSchema("type Foo")

			expectValidSDL(expect, "type Bar", schema)
		end)

		it("adding new type to existing schema with same-named directive", function()
			local schema = buildSchema("directive @Foo on SCHEMA")

			expectValidSDL(expect, "type Foo", schema)
		end)

		it("adding conflicting types to existing schema", function()
			local schema = buildSchema("type Foo")
			local sdl = [[
      scalar Foo
      type Foo
      interface Foo
      union Foo
      enum Foo
      input Foo
			]]

			expectSDLErrors(expect, sdl, schema).toEqual({
				{
					message = 'Type "Foo" already exists in the schema. It cannot also be defined in this type definition.',
					locations = { { line = 2, column = 14 } },
				},
				{
					message = 'Type "Foo" already exists in the schema. It cannot also be defined in this type definition.',
					locations = { { line = 3, column = 12 } },
				},
				{
					message = 'Type "Foo" already exists in the schema. It cannot also be defined in this type definition.',
					locations = { { line = 4, column = 17 } },
				},
				{
					message = 'Type "Foo" already exists in the schema. It cannot also be defined in this type definition.',
					locations = { { line = 5, column = 13 } },
				},
				{
					message = 'Type "Foo" already exists in the schema. It cannot also be defined in this type definition.',
					locations = { { line = 6, column = 12 } },
				},
				{
					message = 'Type "Foo" already exists in the schema. It cannot also be defined in this type definition.',
					locations = { { line = 7, column = 13 } },
				},
			})
		end)
	end)
end

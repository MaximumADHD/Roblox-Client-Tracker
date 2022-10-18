--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/UniqueOperationTypesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local root = validationWorkspace.Parent
	local buildASTSchema = require(root.utilities.buildASTSchema)
	local buildSchema = buildASTSchema.buildSchema
	local UniqueOperationTypesRule =
		require(validationWorkspace.rules.UniqueOperationTypesRule).UniqueOperationTypesRule
	local harness = require(script.Parent.harness)
	local expectSDLValidationErrors = harness.expectSDLValidationErrors

	local function expectSDLErrors(expect_, sdlStr: string, schema)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectSDLValidationErrors(expect_, schema, UniqueOperationTypesRule, "\n" .. sdlStr)
	end

	local function expectValidSDL(expect_, sdlStr: string, schema)
		expectSDLErrors(expect_, sdlStr, schema).toEqual({})
	end

	describe("Validate: Unique operation types", function()
		it("no schema definition", function()
			expectValidSDL(
				expect,
				[[
				type Foo
			]]
			)
		end)

		it("schema definition with all types", function()
			expectValidSDL(
				expect,
				[[
				type Foo

				schema {
					query: Foo
					mutation: Foo
					subscription: Foo
				}
			]]
			)
		end)

		it("schema definition with single extension", function()
			expectValidSDL(
				expect,
				[[
				type Foo

				schema { query: Foo }

				extend schema {
					mutation: Foo
					subscription: Foo
				}
			]]
			)
		end)

		it("schema definition with separate extensions", function()
			expectValidSDL(
				expect,
				[[
				type Foo

				schema { query: Foo }
				extend schema { mutation: Foo }
				extend schema { subscription: Foo }
			]]
			)
		end)

		it("extend schema before definition", function()
			expectValidSDL(
				expect,
				[[
				type Foo

				extend schema { mutation: Foo }
				extend schema { subscription: Foo }

				schema { query: Foo }
			]]
			)
		end)

		it("duplicate operation types inside single schema definition", function()
			expectSDLErrors(
				expect,
				[[
      type Foo

      schema {
        query: Foo
        mutation: Foo
        subscription: Foo

        query: Foo
        mutation: Foo
        subscription: Foo
      }
			]]
			).toEqual({
				{
					message = "There can be only one query type in schema.",
					locations = {
						{ line = 5, column = 9 },
						{ line = 9, column = 9 },
					},
				},
				{
					message = "There can be only one mutation type in schema.",
					locations = {
						{ line = 6, column = 9 },
						{ line = 10, column = 9 },
					},
				},
				{
					message = "There can be only one subscription type in schema.",
					locations = {
						{ line = 7, column = 9 },
						{ line = 11, column = 9 },
					},
				},
			})
		end)

		it("duplicate operation types inside schema extension", function()
			expectSDLErrors(
				expect,
				[[
      type Foo

      schema {
        query: Foo
        mutation: Foo
        subscription: Foo
      }

      extend schema {
        query: Foo
        mutation: Foo
        subscription: Foo
      }
			]]
			).toEqual({
				{
					message = "There can be only one query type in schema.",
					locations = {
						{ line = 5, column = 9 },
						{ line = 11, column = 9 },
					},
				},
				{
					message = "There can be only one mutation type in schema.",
					locations = {
						{ line = 6, column = 9 },
						{ line = 12, column = 9 },
					},
				},
				{
					message = "There can be only one subscription type in schema.",
					locations = {
						{ line = 7, column = 9 },
						{ line = 13, column = 9 },
					},
				},
			})
		end)

		it("duplicate operation types inside schema extension twice", function()
			expectSDLErrors(
				expect,
				[[
      type Foo

      schema {
        query: Foo
        mutation: Foo
        subscription: Foo
      }

      extend schema {
        query: Foo
        mutation: Foo
        subscription: Foo
      }

      extend schema {
        query: Foo
        mutation: Foo
        subscription: Foo
      }
			]]
			).toEqual({
				{
					message = "There can be only one query type in schema.",
					locations = {
						{ line = 5, column = 9 },
						{ line = 11, column = 9 },
					},
				},
				{
					message = "There can be only one mutation type in schema.",
					locations = {
						{ line = 6, column = 9 },
						{ line = 12, column = 9 },
					},
				},
				{
					message = "There can be only one subscription type in schema.",
					locations = {
						{ line = 7, column = 9 },
						{ line = 13, column = 9 },
					},
				},
				{
					message = "There can be only one query type in schema.",
					locations = {
						{ line = 5, column = 9 },
						{ line = 17, column = 9 },
					},
				},
				{
					message = "There can be only one mutation type in schema.",
					locations = {
						{ line = 6, column = 9 },
						{ line = 18, column = 9 },
					},
				},
				{
					message = "There can be only one subscription type in schema.",
					locations = {
						{ line = 7, column = 9 },
						{ line = 19, column = 9 },
					},
				},
			})
		end)

		it("duplicate operation types inside second schema extension", function()
			expectSDLErrors(
				expect,
				[[
      type Foo

      schema {
        query: Foo
      }

      extend schema {
        mutation: Foo
        subscription: Foo
      }

      extend schema {
        query: Foo
        mutation: Foo
        subscription: Foo
      }
			]]
			).toEqual({
				{
					message = "There can be only one query type in schema.",
					locations = {
						{ line = 5, column = 9 },
						{ line = 14, column = 9 },
					},
				},
				{
					message = "There can be only one mutation type in schema.",
					locations = {
						{ line = 9, column = 9 },
						{ line = 15, column = 9 },
					},
				},
				{
					message = "There can be only one subscription type in schema.",
					locations = {
						{ line = 10, column = 9 },
						{ line = 16, column = 9 },
					},
				},
			})
		end)

		it("define schema inside extension SDL", function()
			local schema = buildSchema("type Foo")
			local sdl = [[
				schema {
					query: Foo
					mutation: Foo
					subscription: Foo
				}
			]]

			expectValidSDL(expect, sdl, schema)
		end)

		it("define and extend schema inside extension SDL", function()
			local schema = buildSchema("type Foo")
			local sdl = [[
				schema { query: Foo }
				extend schema { mutation: Foo }
				extend schema { subscription: Foo }
			]]

			expectValidSDL(expect, sdl, schema)
		end)

		it("adding new operation types to existing schema", function()
			local schema = buildSchema("type Query")
			local sdl = [[
				extend schema { mutation: Foo }
				extend schema { subscription: Foo }
			]]

			expectValidSDL(expect, sdl, schema)
		end)

		it("adding conflicting operation types to existing schema", function()
			local schema = buildSchema([[
				type Query
				type Mutation
				type Subscription

				type Foo
			]])
			local sdl = [[
      extend schema {
        query: Foo
        mutation: Foo
        subscription: Foo
      }
			]]

			expectSDLErrors(expect, sdl, schema).toEqual({
				{
					message = "Type for query already defined in the schema. It cannot be redefined.",
					locations = {
						{ line = 3, column = 9 },
					},
				},
				{
					message = "Type for mutation already defined in the schema. It cannot be redefined.",
					locations = {
						{ line = 4, column = 9 },
					},
				},
				{
					message = "Type for subscription already defined in the schema. It cannot be redefined.",
					locations = {
						{ line = 5, column = 9 },
					},
				},
			})
		end)

		it("adding conflicting operation types to existing schema twice", function()
			local schema = buildSchema([[
				type Query
				type Mutation
				type Subscription
			]])
			local sdl = [[
      extend schema {
        query: Foo
        mutation: Foo
        subscription: Foo
      }

      extend schema {
        query: Foo
        mutation: Foo
        subscription: Foo
      }
			]]

			expectSDLErrors(expect, sdl, schema).toEqual({
				{
					message = "Type for query already defined in the schema. It cannot be redefined.",
					locations = {
						{ line = 3, column = 9 },
					},
				},
				{
					message = "Type for mutation already defined in the schema. It cannot be redefined.",
					locations = {
						{ line = 4, column = 9 },
					},
				},
				{
					message = "Type for subscription already defined in the schema. It cannot be redefined.",
					locations = {
						{ line = 5, column = 9 },
					},
				},
				{
					message = "Type for query already defined in the schema. It cannot be redefined.",
					locations = {
						{ line = 9, column = 9 },
					},
				},
				{
					message = "Type for mutation already defined in the schema. It cannot be redefined.",
					locations = {
						{ line = 10, column = 9 },
					},
				},
				{
					message = "Type for subscription already defined in the schema. It cannot be redefined.",
					locations = {
						{ line = 11, column = 9 },
					},
				},
			})
		end)
	end)
end

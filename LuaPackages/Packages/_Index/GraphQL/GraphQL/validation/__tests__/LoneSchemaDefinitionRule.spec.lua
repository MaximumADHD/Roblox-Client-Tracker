--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/LoneSchemaDefinitionRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local root = validationWorkspace.Parent
	local buildASTSchema = require(root.utilities.buildASTSchema)
	local buildSchema = buildASTSchema.buildSchema
	local LoneSchemaDefinitionRule =
		require(validationWorkspace.rules.LoneSchemaDefinitionRule).LoneSchemaDefinitionRule
	local harness = require(script.Parent.harness)
	local expectSDLValidationErrors = harness.expectSDLValidationErrors

	local function expectSDLErrors(expect_, sdlStr: string, schema)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectSDLValidationErrors(expect_, schema, LoneSchemaDefinitionRule, "\n" .. sdlStr)
	end

	local function expectValidSDL(expect_, sdlStr: string, schema)
		expectSDLErrors(expect_, sdlStr, schema).toEqual({})
	end

	describe("Validate: Schema definition should be alone", function()
		it("no schema", function()
			expectValidSDL(
				expect,
				[[
				type Query {
					foo: String
				}
			]]
			)
		end)

		it("one schema definition", function()
			expectValidSDL(
				expect,
				[[
				schema {
					query: Foo
				}

				type Foo {
					foo: String
				}
			]]
			)
		end)

		it("multiple schema definitions", function()
			expectSDLErrors(
				expect,
				[[
      schema {
        query: Foo
      }

      type Foo {
        foo: String
      }

      schema {
        mutation: Foo
      }

      schema {
        subscription: Foo
      }
			]]
			).toEqual({
				{
					message = "Must provide only one schema definition.",
					locations = { { line = 10, column = 7 } },
				},
				{
					message = "Must provide only one schema definition.",
					locations = { { line = 14, column = 7 } },
				},
			})
		end)

		it("define schema in schema extension", function()
			local schema = buildSchema([[
				type Foo {
					foo: String
				}
			]])

			expectSDLErrors(
				expect,
				[[
				schema {
					query: Foo
				}
			]],
				schema
			).toEqual({})
		end)

		it("redefine schema in schema extension", function()
			local schema = buildSchema([[
				schema {
					query: Foo
				}

				type Foo {
					foo: String
				}
			]])

			expectSDLErrors(
				expect,
				[[
        schema {
          mutation: Foo
        }
			]],
				schema
			).toEqual({
				{
					message = "Cannot define a new schema within a schema extension.",
					locations = { { line = 2, column = 9 } },
				},
			})
		end)

		it("redefine implicit schema in schema extension", function()
			local schema = buildSchema([[
				type Query {
					fooField: Foo
				}

				type Foo {
					foo: String
				}
			]])

			expectSDLErrors(
				expect,
				[[
        schema {
          mutation: Foo
        }
			]],
				schema
			).toEqual({
				{
					message = "Cannot define a new schema within a schema extension.",
					locations = { { line = 2, column = 9 } },
				},
			})
		end)

		it("extend schema in schema extension", function()
			local schema = buildSchema([[
				type Query {
					fooField: Foo
				}

				type Foo {
					foo: String
				}
			]])

			expectValidSDL(
				expect,
				[[
				extend schema {
				mutation: Foo
				}
			]],
				schema
			)
		end)
	end)
end

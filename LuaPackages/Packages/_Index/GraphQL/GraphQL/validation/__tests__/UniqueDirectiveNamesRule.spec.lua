--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/UniqueDirectiveNamesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local root = validationWorkspace.Parent
	local buildASTSchema = require(root.utilities.buildASTSchema)
	local buildSchema = buildASTSchema.buildSchema
	local UniqueDirectiveNamesRule =
		require(validationWorkspace.rules.UniqueDirectiveNamesRule).UniqueDirectiveNamesRule
	local harness = require(script.Parent.harness)
	local expectSDLValidationErrors = harness.expectSDLValidationErrors

	local function expectSDLErrors(expect_, sdlStr, schema)
		return expectSDLValidationErrors(expect_, schema, UniqueDirectiveNamesRule, sdlStr)
	end

	local function expectValidSDL(expect_, sdlStr, schema)
		expectSDLErrors(expect_, sdlStr, schema).toEqual({})
	end

	describe("Validate: Unique directive names", function()
		it("no directive", function()
			expectValidSDL(
				expect,
				[[
				type Foo
			]]
			)
		end)

		it("one directive", function()
			expectValidSDL(
				expect,
				[[
				directive @foo on SCHEMA
			]]
			)
		end)

		it("many directives", function()
			expectValidSDL(
				expect,
				[[
				directive @foo on SCHEMA
				directive @bar on SCHEMA
				directive @baz on SCHEMA
			]]
			)
		end)

		it("directive and non-directive definitions named the same", function()
			expectValidSDL(
				expect,
				[[
				query foo { __typename }
				fragment foo on foo { __typename }
				type foo

				directive @foo on SCHEMA
			]]
			)
		end)

		it("directives named the same", function()
			-- ROBLOX deviation: we append a new line at the begining of the
			-- query string because of how Lua multiline strings works (it does
			-- take the new line if it's the first character of the string)
			expectSDLErrors(
				expect,
				[[

      directive @foo on SCHEMA

      directive @foo on SCHEMA
			]]
			).toEqual({
				{
					message = 'There can be only one directive named "@foo".',
					locations = {
						{ line = 2, column = 18 },
						{ line = 4, column = 18 },
					},
				},
			})
		end)

		it("adding new directive to existing schema", function()
			local schema = buildSchema("directive @foo on SCHEMA")

			expectValidSDL(expect, "directive @bar on SCHEMA", schema)
		end)

		it("adding new directive with standard name to existing schema", function()
			local schema = buildSchema("type foo")

			expectSDLErrors(expect, "directive @skip on SCHEMA", schema).toEqual({
				{
					message = 'Directive "@skip" already exists in the schema. It cannot be redefined.',
					locations = { { line = 1, column = 12 } },
				},
			})
		end)

		it("adding new directive to existing schema with same-named type", function()
			local schema = buildSchema("type foo")

			expectValidSDL(expect, "directive @foo on SCHEMA", schema)
		end)

		it("adding conflicting directives to existing schema", function()
			local schema = buildSchema("directive @foo on SCHEMA")

			expectSDLErrors(expect, "directive @foo on SCHEMA", schema).toEqual({
				{
					message = 'Directive "@foo" already exists in the schema. It cannot be redefined.',
					locations = { { line = 1, column = 12 } },
				},
			})
		end)
	end)
end

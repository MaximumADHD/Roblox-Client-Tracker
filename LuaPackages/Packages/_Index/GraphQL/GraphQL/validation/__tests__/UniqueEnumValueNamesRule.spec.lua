--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/UniqueEnumValueNamesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local root = validationWorkspace.Parent
	local buildASTSchema = require(root.utilities.buildASTSchema)
	local buildSchema = buildASTSchema.buildSchema
	local UniqueEnumValueNamesRule =
		require(validationWorkspace.rules.UniqueEnumValueNamesRule).UniqueEnumValueNamesRule
	local harness = require(script.Parent.harness)
	local expectSDLValidationErrors = harness.expectSDLValidationErrors

	local function expectSDLErrors(expect_, sdlStr: string, schema)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectSDLValidationErrors(expect_, schema, UniqueEnumValueNamesRule, "\n" .. sdlStr)
	end

	local function expectValidSDL(expect_, sdlStr: string, schema)
		expectSDLErrors(expect_, sdlStr, schema).toEqual({})
	end

	describe("Validate: Unique enum value names", function()
		it("no values", function()
			expectValidSDL(
				expect,
				[[
				enum SomeEnum
			]]
			)
		end)

		it("one value", function()
			expectValidSDL(
				expect,
				[[
				enum SomeEnum {
					FOO
				}
			]]
			)
		end)

		it("multiple values", function()
			expectValidSDL(
				expect,
				[[
				enum SomeEnum {
					FOO
					BAR
				}
			]]
			)
		end)

		it("duplicate values inside the same enum definition", function()
			expectSDLErrors(
				expect,
				[[
      enum SomeEnum {
        FOO
        BAR
        FOO
      }
			]]
			).toEqual({
				{
					message = 'Enum value "SomeEnum.FOO" can only be defined once.',
					locations = {
						{ line = 3, column = 9 },
						{ line = 5, column = 9 },
					},
				},
			})
		end)

		it("extend enum with new value", function()
			expectValidSDL(
				expect,
				[[
				enum SomeEnum {
					FOO
				}
				extend enum SomeEnum {
					BAR
				}
				extend enum SomeEnum {
					BAZ
				}
			]]
			)
		end)

		it("extend enum with duplicate value", function()
			expectSDLErrors(
				expect,
				[[
      extend enum SomeEnum {
        FOO
      }
      enum SomeEnum {
        FOO
      }
			]]
			).toEqual({
				{
					message = 'Enum value "SomeEnum.FOO" can only be defined once.',
					locations = {
						{ line = 3, column = 9 },
						{ line = 6, column = 9 },
					},
				},
			})
		end)

		it("duplicate value inside extension", function()
			expectSDLErrors(
				expect,
				[[
      enum SomeEnum
      extend enum SomeEnum {
        FOO
        BAR
        FOO
      }
			]]
			).toEqual({
				{
					message = 'Enum value "SomeEnum.FOO" can only be defined once.',
					locations = {
						{ line = 4, column = 9 },
						{ line = 6, column = 9 },
					},
				},
			})
		end)

		it("duplicate value inside different extensions", function()
			expectSDLErrors(
				expect,
				[[
      enum SomeEnum
      extend enum SomeEnum {
        FOO
      }
      extend enum SomeEnum {
        FOO
      }
			]]
			).toEqual({
				{
					message = 'Enum value "SomeEnum.FOO" can only be defined once.',
					locations = {
						{ line = 4, column = 9 },
						{ line = 7, column = 9 },
					},
				},
			})
		end)

		it("adding new value to the type inside existing schema", function()
			local schema = buildSchema("enum SomeEnum")
			local sdl = [[
				extend enum SomeEnum {
					FOO
				}
			]]

			expectValidSDL(expect, sdl, schema)
		end)

		it("adding conflicting value to existing schema twice", function()
			local schema = buildSchema([[
				enum SomeEnum {
					FOO
				}
			]])
			local sdl = [[
      extend enum SomeEnum {
        FOO
      }
      extend enum SomeEnum {
        FOO
      }
			]]

			expectSDLErrors(expect, sdl, schema).toEqual({
				{
					message = 'Enum value "SomeEnum.FOO" already exists in the schema. It cannot also be defined in this type extension.',
					locations = { { line = 3, column = 9 } },
				},
				{
					message = 'Enum value "SomeEnum.FOO" already exists in the schema. It cannot also be defined in this type extension.',
					locations = { { line = 6, column = 9 } },
				},
			})
		end)

		it("adding enum values to existing schema twice", function()
			local schema = buildSchema("enum SomeEnum")
			local sdl = [[
      extend enum SomeEnum {
        FOO
      }
      extend enum SomeEnum {
        FOO
      }
			]]

			expectSDLErrors(expect, sdl, schema).toEqual({
				{
					message = 'Enum value "SomeEnum.FOO" can only be defined once.',
					locations = {
						{ line = 3, column = 9 },
						{ line = 6, column = 9 },
					},
				},
			})
		end)
	end)
end

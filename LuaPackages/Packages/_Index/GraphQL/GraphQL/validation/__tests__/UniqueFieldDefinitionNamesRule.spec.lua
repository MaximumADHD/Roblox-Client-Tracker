--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/UniqueFieldDefinitionNamesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local root = validationWorkspace.Parent
	local buildASTSchema = require(root.utilities.buildASTSchema)
	local buildSchema = buildASTSchema.buildSchema
	local UniqueFieldDefinitionNamesRule = require(
		validationWorkspace.rules.UniqueFieldDefinitionNamesRule
	).UniqueFieldDefinitionNamesRule
	local harness = require(script.Parent.harness)
	local expectSDLValidationErrors = harness.expectSDLValidationErrors

	local function expectSDLErrors(expect_, sdlStr: string, schema)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectSDLValidationErrors(
			expect_,
			schema,
			UniqueFieldDefinitionNamesRule,
			"\n" .. sdlStr
		)
	end

	local function expectValidSDL(expect_, sdlStr: string, schema)
		expectSDLErrors(expect_, sdlStr, schema).toEqual({})
	end

	describe("Validate: Unique field definition names", function()
		it("no fields", function()
			expectValidSDL(
				expect,
				[[
				type SomeObject
				interface SomeInterface
				input SomeInputObject
			]]
			)
		end)

		it("one field", function()
			expectValidSDL(
				expect,
				[[
				type SomeObject {
					foo: String
				}

				interface SomeInterface {
					foo: String
				}

				input SomeInputObject {
					foo: String
				}
			]]
			)
		end)

		it("multiple fields", function()
			expectValidSDL(
				expect,
				[[
				type SomeObject {
					foo: String
					bar: String
				}

				interface SomeInterface {
					foo: String
					bar: String
				}

				input SomeInputObject {
					foo: String
					bar: String
				}
			]]
			)
		end)

		it("duplicate fields inside the same type definition", function()
			expectSDLErrors(
				expect,
				[[
      type SomeObject {
        foo: String
        bar: String
        foo: String
      }

      interface SomeInterface {
        foo: String
        bar: String
        foo: String
      }

      input SomeInputObject {
        foo: String
        bar: String
        foo: String
      }
			]]
			).toEqual({
				{
					message = 'Field "SomeObject.foo" can only be defined once.',
					locations = {
						{ line = 3, column = 9 },
						{ line = 5, column = 9 },
					},
				},
				{
					message = 'Field "SomeInterface.foo" can only be defined once.',
					locations = {
						{ line = 9, column = 9 },
						{ line = 11, column = 9 },
					},
				},
				{
					message = 'Field "SomeInputObject.foo" can only be defined once.',
					locations = {
						{ line = 15, column = 9 },
						{ line = 17, column = 9 },
					},
				},
			})
		end)

		it("extend type with new field", function()
			expectValidSDL(
				expect,
				[[
				type SomeObject {
					foo: String
				}
				extend type SomeObject {
					bar: String
				}
				extend type SomeObject {
					baz: String
				}

				interface SomeInterface {
					foo: String
				}
				extend interface SomeInterface {
					bar: String
				}
				extend interface SomeInterface {
					baz: String
				}

				input SomeInputObject {
					foo: String
				}
				extend input SomeInputObject {
					bar: String
				}
				extend input SomeInputObject {
					baz: String
				}
			]]
			)
		end)

		it("extend type with duplicate field", function()
			expectSDLErrors(
				expect,
				[[
      extend type SomeObject {
        foo: String
      }
      type SomeObject {
        foo: String
      }

      extend interface SomeInterface {
        foo: String
      }
      interface SomeInterface {
        foo: String
      }

      extend input SomeInputObject {
        foo: String
      }
      input SomeInputObject {
        foo: String
      }
			]]
			).toEqual({
				{
					message = 'Field "SomeObject.foo" can only be defined once.',
					locations = {
						{ line = 3, column = 9 },
						{ line = 6, column = 9 },
					},
				},
				{
					message = 'Field "SomeInterface.foo" can only be defined once.',
					locations = {
						{ line = 10, column = 9 },
						{ line = 13, column = 9 },
					},
				},
				{
					message = 'Field "SomeInputObject.foo" can only be defined once.',
					locations = {
						{ line = 17, column = 9 },
						{ line = 20, column = 9 },
					},
				},
			})
		end)

		it("duplicate field inside extension", function()
			expectSDLErrors(
				expect,
				[[
      type SomeObject
      extend type SomeObject {
        foo: String
        bar: String
        foo: String
      }

      interface SomeInterface
      extend interface SomeInterface {
        foo: String
        bar: String
        foo: String
      }

      input SomeInputObject
      extend input SomeInputObject {
        foo: String
        bar: String
        foo: String
      }
			]]
			).toEqual({
				{
					message = 'Field "SomeObject.foo" can only be defined once.',
					locations = {
						{ line = 4, column = 9 },
						{ line = 6, column = 9 },
					},
				},
				{
					message = 'Field "SomeInterface.foo" can only be defined once.',
					locations = {
						{ line = 11, column = 9 },
						{ line = 13, column = 9 },
					},
				},
				{
					message = 'Field "SomeInputObject.foo" can only be defined once.',
					locations = {
						{ line = 18, column = 9 },
						{ line = 20, column = 9 },
					},
				},
			})
		end)

		it("duplicate field inside different extensions", function()
			expectSDLErrors(
				expect,
				[[
      type SomeObject
      extend type SomeObject {
        foo: String
      }
      extend type SomeObject {
        foo: String
      }

      interface SomeInterface
      extend interface SomeInterface {
        foo: String
      }
      extend interface SomeInterface {
        foo: String
      }

      input SomeInputObject
      extend input SomeInputObject {
        foo: String
      }
      extend input SomeInputObject {
        foo: String
      }
			]]
			).toEqual({
				{
					message = 'Field "SomeObject.foo" can only be defined once.',
					locations = {
						{ line = 4, column = 9 },
						{ line = 7, column = 9 },
					},
				},
				{
					message = 'Field "SomeInterface.foo" can only be defined once.',
					locations = {
						{ line = 12, column = 9 },
						{ line = 15, column = 9 },
					},
				},
				{
					message = 'Field "SomeInputObject.foo" can only be defined once.',
					locations = {
						{ line = 20, column = 9 },
						{ line = 23, column = 9 },
					},
				},
			})
		end)

		it("adding new field to the type inside existing schema", function()
			local schema = buildSchema([[
				type SomeObject
				interface SomeInterface
				input SomeInputObject
			]])
			local sdl = [[
				extend type SomeObject {
					foo: String
				}

				extend interface SomeInterface {
					foo: String
				}

				extend input SomeInputObject {
					foo: String
				}
			]]

			expectValidSDL(expect, sdl, schema)
		end)

		it("adding conflicting fields to existing schema twice", function()
			local schema = buildSchema([[
				type SomeObject {
					foo: String
				}

				interface SomeInterface {
					foo: String
				}

				input SomeInputObject {
					foo: String
				}
			]])
			local sdl = [[
      extend type SomeObject {
        foo: String
      }
      extend interface SomeInterface {
        foo: String
      }
      extend input SomeInputObject {
        foo: String
      }

      extend type SomeObject {
        foo: String
      }
      extend interface SomeInterface {
        foo: String
      }
      extend input SomeInputObject {
        foo: String
      }
			]]

			expectSDLErrors(expect, sdl, schema).toEqual({
				{
					message = 'Field "SomeObject.foo" already exists in the schema. It cannot also be defined in this type extension.',
					locations = {
						{ line = 3, column = 9 },
					},
				},
				{
					message = 'Field "SomeInterface.foo" already exists in the schema. It cannot also be defined in this type extension.',
					locations = {
						{ line = 6, column = 9 },
					},
				},
				{
					message = 'Field "SomeInputObject.foo" already exists in the schema. It cannot also be defined in this type extension.',
					locations = {
						{ line = 9, column = 9 },
					},
				},
				{
					message = 'Field "SomeObject.foo" already exists in the schema. It cannot also be defined in this type extension.',
					locations = {
						{ line = 13, column = 9 },
					},
				},
				{
					message = 'Field "SomeInterface.foo" already exists in the schema. It cannot also be defined in this type extension.',
					locations = {
						{ line = 16, column = 9 },
					},
				},
				{
					message = 'Field "SomeInputObject.foo" already exists in the schema. It cannot also be defined in this type extension.',
					locations = {
						{ line = 19, column = 9 },
					},
				},
			})
		end)

		it("adding fields to existing schema twice", function()
			local schema = buildSchema([[
				type SomeObject
				interface SomeInterface
				input SomeInputObject
			]])
			local sdl = [[
      extend type SomeObject {
        foo: String
      }
      extend type SomeObject {
        foo: String
      }

      extend interface SomeInterface {
        foo: String
      }
      extend interface SomeInterface {
        foo: String
      }

      extend input SomeInputObject {
        foo: String
      }
      extend input SomeInputObject {
        foo: String
      }
			]]

			expectSDLErrors(expect, sdl, schema).toEqual({
				{
					message = 'Field "SomeObject.foo" can only be defined once.',
					locations = {
						{ line = 3, column = 9 },
						{ line = 6, column = 9 },
					},
				},
				{
					message = 'Field "SomeInterface.foo" can only be defined once.',
					locations = {
						{ line = 10, column = 9 },
						{ line = 13, column = 9 },
					},
				},
				{
					message = 'Field "SomeInputObject.foo" can only be defined once.',
					locations = {
						{ line = 17, column = 9 },
						{ line = 20, column = 9 },
					},
				},
			})
		end)
	end)
end

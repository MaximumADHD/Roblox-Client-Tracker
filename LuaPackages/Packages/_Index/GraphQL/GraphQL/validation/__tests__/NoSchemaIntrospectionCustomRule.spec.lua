--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/NoSchemaIntrospectionCustomRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local root = validationWorkspace.Parent
	local buildASTSchema = require(root.utilities.buildASTSchema)
	local buildSchema = buildASTSchema.buildSchema
	local NoSchemaIntrospectionCustomRule = require(
		validationWorkspace.rules.custom.NoSchemaIntrospectionCustomRule
	).NoSchemaIntrospectionCustomRule
	local harness = require(script.Parent.harness)
	local expectValidationErrorsWithSchema = harness.expectValidationErrorsWithSchema

	-- ROBLOX deviation: pre-declare constant
	local schema = nil

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrorsWithSchema(
			expect_,
			schema,
			NoSchemaIntrospectionCustomRule,
			"\n" .. queryStr
		)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	schema = buildSchema([[
		type Query {
			someQuery: SomeType
		}

		type SomeType {
			someField: String
			introspectionField: __EnumValue
		}
	]])

	describe("Validate: Prohibit introspection queries", function()
		it("ignores valid fields including __typename", function()
			expectValid(
				expect,
				[[
				{
					someQuery {
						__typename
						someField
					}
				}
			]]
			)
		end)

		it("ignores fields not in the schema", function()
			expectValid(
				expect,
				[[
		{
			__introspect
		}
			]]
			)
		end)

		it("reports error when a field with an introspection type is requested", function()
			expectErrors(
				expect,
				[[
      {
        __schema {
          queryType {
            name
          }
        }
      }
			]]
			).toEqual({
				{
					message = 'GraphQL introspection has been disabled, but the requested query contained the field "__schema".',
					locations = { { line = 3, column = 9 } },
				},
				{
					message = 'GraphQL introspection has been disabled, but the requested query contained the field "queryType".',
					locations = { { line = 4, column = 11 } },
				},
			})
		end)

		it(
			"reports error when a field with an introspection type is requested and aliased",
			function()
				expectErrors(
					expect,
					[[
      {
        s: __schema {
          queryType {
            name
          }
        }
      }
			]]
				).toEqual({
					{
						message = 'GraphQL introspection has been disabled, but the requested query contained the field "__schema".',
						locations = { { line = 3, column = 9 } },
					},
					{
						message = 'GraphQL introspection has been disabled, but the requested query contained the field "queryType".',
						locations = { { line = 4, column = 11 } },
					},
				})
			end
		)

		it("reports error when using a fragment with a field with an introspection type", function()
			expectErrors(
				expect,
				[[
      {
        ...QueryFragment
      }

      fragment QueryFragment on Query {
        __schema {
          queryType {
            name
          }
        }
      }
			]]
			).toEqual({
				{
					message = 'GraphQL introspection has been disabled, but the requested query contained the field "__schema".',
					locations = { { line = 7, column = 9 } },
				},
				{
					message = 'GraphQL introspection has been disabled, but the requested query contained the field "queryType".',
					locations = { { line = 8, column = 11 } },
				},
			})
		end)

		it("reports error for non-standard introspection fields", function()
			expectErrors(
				expect,
				[[
      {
        someQuery {
          introspectionField
        }
      }
			]]
			).toEqual({
				{
					message = 'GraphQL introspection has been disabled, but the requested query contained the field "introspectionField".',
					locations = { { line = 4, column = 11 } },
				},
			})
		end)
	end)
end

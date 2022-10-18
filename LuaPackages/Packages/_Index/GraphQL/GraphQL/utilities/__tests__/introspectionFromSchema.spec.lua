--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/introspectionFromSchema-test.js

return function()
	local utilitiesWorkspace = script.Parent.Parent
	local srcWorkspace = utilitiesWorkspace.Parent
	local typeWorkspace = srcWorkspace.type

	local dedent = require(srcWorkspace.__testUtils__.dedent).dedent

	local GraphQLSchema = require(typeWorkspace.schema).GraphQLSchema
	local GraphQLString = require(typeWorkspace.scalars).GraphQLString
	local GraphQLObjectType = require(typeWorkspace.definition).GraphQLObjectType

	local getIntrospectionQueryModule = require(utilitiesWorkspace.getIntrospectionQuery)
	type IntrospectionQuery = getIntrospectionQueryModule.IntrospectionQuery
	local introspectionFromSchema =
		require(srcWorkspace.utilities.introspectionFromSchema).introspectionFromSchema
	local printSchema = require(utilitiesWorkspace.printSchema).printSchema
	local buildClientSchema = require(utilitiesWorkspace.buildClientSchema).buildClientSchema

	local function introspectionToSDL(introspection: IntrospectionQuery): string
		return printSchema(buildClientSchema(introspection))
	end

	describe("introspectionFromSchema", function()
		local schema = GraphQLSchema.new({
			description = "This is a simple schema",
			query = GraphQLObjectType.new({
				name = "Simple",
				description = "This is a simple type",
				fields = {
					string = {
						type = GraphQLString,
						description = "This is a string field",
					},
				},
			}),
		})

		it("converts a simple schema", function()
			local introspection = introspectionFromSchema(schema)

			expect(introspectionToSDL(introspection)).toEqual(dedent([[
      """This is a simple schema"""
      schema {
        query: Simple
      }

      """This is a simple type"""
      type Simple {
        """This is a string field"""
        string: String
      }
    ]]))
		end)

		it("converts a simple schema without descriptions", function()
			local introspection = introspectionFromSchema(schema, {
				descriptions = false,
			})

			expect(introspectionToSDL(introspection)).toEqual(dedent([[
      schema {
        query: Simple
      }

      type Simple {
        string: String
      }
    ]]))
		end)
	end)
end

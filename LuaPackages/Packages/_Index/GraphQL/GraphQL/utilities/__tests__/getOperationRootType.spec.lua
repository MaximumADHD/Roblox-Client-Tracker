--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/getOperationRootType-test.js

return function()
	local utilitiesWorkspace = script.Parent.Parent
	local srcWorkspace = utilitiesWorkspace.Parent

	local invariant = require(srcWorkspace.jsutils.invariant).invariant
	local Kind = require(srcWorkspace.language.kinds).Kind
	local parse = require(srcWorkspace.language.parser).parse
	local GraphQLSchema = require(srcWorkspace.type.schema).GraphQLSchema
	local GraphQLString = require(srcWorkspace.type.scalars).GraphQLString
	local GraphQLObjectType = require(srcWorkspace.type.definition).GraphQLObjectType
	local getOperationRootType =
		require(utilitiesWorkspace.getOperationRootType).getOperationRootType

	local Object = require(srcWorkspace.Parent.LuauPolyfill).Object

	local queryType = GraphQLObjectType.new({
		name = "FooQuery",
		fields = function()
			return {
				field = { type = GraphQLString },
			}
		end,
	})
	local mutationType = GraphQLObjectType.new({
		name = "FooMutation",
		fields = function()
			return {
				field = { type = GraphQLString },
			}
		end,
	})
	local subscriptionType = GraphQLObjectType.new({
		name = "FooSubscription",
		fields = function()
			return {
				field = { type = GraphQLString },
			}
		end,
	})

	local function getOperationNode(doc)
		local operationNode = doc.definitions[1]
		invariant(operationNode and operationNode.kind == Kind.OPERATION_DEFINITION)
		return operationNode
	end

	describe("getOperationRootType", function()
		it("Gets a Query type for an unnamed OperationDefinitionNode", function()
			local testSchema = GraphQLSchema.new({ query = queryType })
			local doc = parse("{ field }")
			local operationNode = getOperationNode(doc)
			expect(getOperationRootType(testSchema, operationNode)).to.equal(queryType)
		end)

		it("Gets a Query type for an named OperationDefinitionNode", function()
			local testSchema = GraphQLSchema.new({ query = queryType })

			local doc = parse("query Q { field }")
			local operationNode = getOperationNode(doc)
			expect(getOperationRootType(testSchema, operationNode)).to.equal(queryType)
		end)

		it("Gets a type for OperationTypeDefinitionNodes", function()
			local testSchema = GraphQLSchema.new({
				query = queryType,
				mutation = mutationType,
				subscription = subscriptionType,
			})

			local doc = parse(([[

        schema {
            query: FooQuery
            mutation: FooMutation
            subscription: FooSubscription
        }
        ]]):format())

			local schemaNode = doc.definitions[1]
			invariant(schemaNode and schemaNode.kind == Kind.SCHEMA_DEFINITION)
			local queryNode, mutationNode, subscriptionNode = table.unpack(
				schemaNode.operationTypes
			)

			expect(getOperationRootType(testSchema, queryNode)).to.equal(queryType)
			expect(getOperationRootType(testSchema, mutationNode)).to.equal(mutationType)
			expect(getOperationRootType(testSchema, subscriptionNode)).to.equal(subscriptionType)
		end)

		it("Gets a Mutation type for an OperationDefinitionNode", function()
			local testSchema = GraphQLSchema.new({ mutation = mutationType })

			local doc = parse("mutation { field }")
			local operationNode = getOperationNode(doc)
			expect(getOperationRootType(testSchema, operationNode)).to.equal(mutationType)
		end)

		it("Gets a Subscription type for an OperationDefinitionNode", function()
			local testSchema = GraphQLSchema.new({ subscription = subscriptionType })

			local doc = parse("subscription { field }")
			local operationNode = getOperationNode(doc)
			expect(getOperationRootType(testSchema, operationNode)).to.equal(subscriptionType)
		end)

		it("Throws when query type not defined in schema", function()
			local testSchema = GraphQLSchema.new({})

			local doc = parse("query { field }")
			local operationNode = getOperationNode(doc)
			expect(function()
				return getOperationRootType(testSchema, operationNode)
			end).toThrow("Schema does not define the required query root type.")
		end)

		it("Throws when mutation type not defined in schema", function()
			local testSchema = GraphQLSchema.new({})

			local doc = parse("mutation { field }")
			local operationNode = getOperationNode(doc)
			expect(function()
				return getOperationRootType(testSchema, operationNode)
			end).toThrow("Schema is not configured for mutations.")
		end)

		it("Throws when subscription type not defined in schema", function()
			local testSchema = GraphQLSchema.new({})

			local doc = parse("subscription { field }")
			local operationNode = getOperationNode(doc)
			expect(function()
				return getOperationRootType(testSchema, operationNode)
			end).toThrow("Schema is not configured for subscriptions.")
		end)

		it("Throws when operation not a valid operation kind", function()
			local testSchema = GraphQLSchema.new({})
			local doc = parse("{ field }")
			local operationNode = Object.assign({}, getOperationNode(doc), {
				operation = "non_existent_operation",
			})

			-- $FlowExpectedError[incompatible-call]
			expect(function()
				return getOperationRootType(testSchema, operationNode)
			end).toThrow("Can only have query, mutation and subscription operations.")
		end)
	end)
end

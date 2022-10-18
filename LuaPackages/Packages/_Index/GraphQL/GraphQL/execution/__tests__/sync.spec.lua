--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/execution/__tests__/sync-test.js

return function()
	local executionWorkspace = script.Parent.Parent
	local srcWorkspace = executionWorkspace.Parent

	local LuauPolyfill = require(srcWorkspace.Parent.LuauPolyfill)
	local Array = LuauPolyfill.Array
	local Object = LuauPolyfill.Object

	local Promise = require(srcWorkspace.Parent.Promise)
	local HttpService = game:GetService("HttpService")
	local inspect = require(srcWorkspace.jsutils.inspect).inspect

	local parse = require(srcWorkspace.language.parser).parse

	local validate = require(srcWorkspace.validation.validate).validate

	local GraphQLSchema = require(srcWorkspace.type.schema).GraphQLSchema
	local GraphQLString = require(srcWorkspace.type.scalars).GraphQLString
	local GraphQLObjectType = require(srcWorkspace.type.definition).GraphQLObjectType

	local graphqlSync = require(srcWorkspace.graphql).graphqlSync

	local executeImport = require(executionWorkspace.execute)
	local execute = executeImport.execute
	local executeSync = executeImport.executeSync

	describe("Execute: synchronously when possible", function()
		local schema = GraphQLSchema.new({
			query = GraphQLObjectType.new({
				name = "Query",
				fields = {
					syncField = {
						type = GraphQLString,
						resolve = function(rootValue)
							return rootValue
						end,
					},
					asyncField = {
						type = GraphQLString,
						resolve = function(rootValue)
							return Promise.resolve(rootValue)
						end,
					},
				},
			}),
			mutation = GraphQLObjectType.new({
				name = "Mutation",
				fields = {
					syncMutationField = {
						type = GraphQLString,
						resolve = function(rootValue)
							return rootValue
						end,
					},
				},
			}),
		})

		it("does not return a Promise for initial errors", function()
			local doc = "fragment Example on Query { syncField }"
			local result = execute({
				schema = schema,
				document = parse(doc),
				rootValue = "rootValue",
			})

			--[[
			--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
			--]]
			expect(Object.keys(result)).toEqual({ "errors" })
			expect(result.errors).toHaveSameMembers({
				{
					message = "Must provide an operation.",
				},
			}, true)
		end)

		it("does not return a Promise if fields are all synchronous", function()
			local doc = "query Example { syncField }"
			local result = execute({
				schema = schema,
				document = parse(doc),
				rootValue = "rootValue",
			})

			expect(result).toEqual({
				data = {
					syncField = "rootValue",
				},
			})
		end)

		it("does not return a Promise if mutation fields are all synchronous", function()
			local doc = "mutation Example { syncMutationField }"
			local result = execute({
				schema = schema,
				document = parse(doc),
				rootValue = "rootValue",
			})

			expect(result).toEqual({
				data = {
					syncMutationField = "rootValue",
				},
			})
		end)

		it("returns a Promise if any field is asynchronous", function()
			local doc = "query Example { syncField, asyncField }"
			local result = execute({
				schema = schema,
				document = parse(doc),
				rootValue = "rootValue",
			})

			-- ROBLOX deviation: use Promise.is instead of instanceOf
			expect(Promise.is(result)).to.equal(true)

			expect(result:expect()).toEqual({
				data = {
					syncField = "rootValue",
					asyncField = "rootValue",
				},
			})
		end)

		describe("executeSync", function()
			it("does not return a Promise for sync execution", function()
				local doc = "query Example { syncField }"
				local result = executeSync({
					schema = schema,
					document = parse(doc),
					rootValue = "rootValue",
				})

				expect(result).toEqual({
					data = {
						syncField = "rootValue",
					},
				})
			end)

			it("throws if encountering async execution", function()
				local doc = "query Example { syncField, asyncField }"

				expect(function()
					executeSync({
						schema = schema,
						document = parse(doc),
						rootValue = "rootValue",
					})
				end).toThrow("GraphQL execution failed to complete synchronously.")
			end)
		end)

		describe("graphqlSync", function()
			it("report errors raised during schema validation", function()
				local badSchema = GraphQLSchema.new({})
				local result = graphqlSync({
					schema = badSchema,
					source = "{ __typename }",
				})

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toEqual({ "errors" })
				expect(result.errors).toHaveSameMembers({
					{
						message = "Query root type must be provided.",
					},
				}, true)
			end)

			it("does not return a Promise for syntax errors", function()
				local doc = "fragment Example on Query { { { syncField }"
				local result = graphqlSync({
					schema = schema,
					source = doc,
				})

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toEqual({ "errors" })
				expect(result.errors).toHaveSameMembers({
					{
						message = 'Syntax Error: Expected Name, found "{".',
						locations = {
							{
								line = 1,
								column = 29,
							},
						},
					},
				}, true)
			end)

			it("does not return a Promise for validation errors", function()
				local doc = "fragment Example on Query { unknownField }"
				local validationErrors = validate(schema, parse(doc))
				local result = graphqlSync({
					schema = schema,
					source = doc,
				})

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toEqual({ "errors" })
				-- ROBLOX deviation: helper function
				local function enumerableOnly(err_)
					return HttpService:JSONDecode(inspect(err_))
				end
				-- ROBLOX deviation: upstream only compares enumerable properties
				expect(Array.map(result.errors, enumerableOnly)).toEqual(
					Array.map(validationErrors, enumerableOnly),
					true
				)
			end)

			it("does not return a Promise for sync execution", function()
				local doc = "query Example { syncField }"
				local result = graphqlSync({
					schema = schema,
					source = doc,
					rootValue = "rootValue",
				})

				expect(result).toEqual({
					data = {
						syncField = "rootValue",
					},
				})
			end)

			it("throws if encountering async execution", function()
				local doc = "query Example { syncField, asyncField }"

				expect(function()
					graphqlSync({
						schema = schema,
						source = doc,
						rootValue = "rootValue",
					})
				end).toThrow("GraphQL execution failed to complete synchronously.")
			end)
		end)
	end)
end

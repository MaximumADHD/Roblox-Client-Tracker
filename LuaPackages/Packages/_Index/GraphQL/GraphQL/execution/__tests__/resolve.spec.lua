--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/execution/__tests__/resolve-test.js

return function()
	local executionWorkspace = script.Parent.Parent
	local srcWorkspace = executionWorkspace.Parent

	-- ROBLOX deviation: utils
	local inspect = require(srcWorkspace.jsutils.inspect).inspect

	local parse = require(srcWorkspace.language.parser).parse

	local GraphQLSchema = require(srcWorkspace.type.schema).GraphQLSchema
	local scalarsImport = require(srcWorkspace.type.scalars)
	local GraphQLInt = scalarsImport.GraphQLInt
	local GraphQLString = scalarsImport.GraphQLString
	local GraphQLObjectType = require(srcWorkspace.type.definition).GraphQLObjectType

	local executeSync = require(executionWorkspace.execute).executeSync

	describe("Execute: resolve function", function()
		local function testSchema(testField)
			return GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = { test = testField },
				}),
			})
		end

		it("default function accesses properties", function()
			local result = executeSync({
				schema = testSchema({ type = GraphQLString }),
				document = parse("{ test }"),
				rootValue = {
					test = "testValue",
				},
			})

			expect(result).toEqual({
				data = {
					test = "testValue",
				},
			})
		end)

		it("default function calls methods", function()
			local rootValue = {
				_secret = "secretValue",
				test = function(self)
					return self._secret
				end,
			}
			local result = executeSync({
				schema = testSchema({ type = GraphQLString }),
				document = parse("{ test }"),
				rootValue = rootValue,
			})

			expect(result).toEqual({
				data = {
					test = "secretValue",
				},
			})
		end)

		it("default function passes args and context", function()
			local Adder = {}
			local AdderMetatable = { __index = Adder }

			function Adder.new(num)
				local self = setmetatable({}, AdderMetatable)

				self._num = num
				return self
			end
			function Adder:test(args, context)
				return self._num + args.addend1 + context.addend2
			end

			local rootValue = Adder.new(700)
			local schema = testSchema({
				type = GraphQLInt,
				args = {
					addend1 = { type = GraphQLInt },
				},
			})
			local contextValue = { addend2 = 9 }
			local document = parse("{ test(addend1: 80) }")
			local result = executeSync({
				schema = schema,
				document = document,
				rootValue = rootValue,
				contextValue = contextValue,
			})

			expect(result).toEqual({
				data = { test = 789 },
			})
		end)

		it("uses provided resolve function", function()
			local schema = testSchema({
				type = GraphQLString,
				args = {
					aStr = { type = GraphQLString },
					aInt = { type = GraphQLInt },
				},
				resolve = function(source, args)
					-- ROBLOX deviation: no JSON.stringify. Create a helper function for testing purposes
					local function stringify(value: any): string
						if value == nil then
							return "null"
						elseif typeof(value) == "table" and next(value) == nil then
							return "{}"
						end
						return inspect(value)
					end
					-- ROBLOX deviation: no JSON.stringify - original call: JSON.stringify({source, args})
					return ("[%s,%s]"):format(stringify(source), stringify(args))
				end,
			})

			local function executeQuery(query, rootValue)
				local document = parse(query)

				return executeSync({
					schema = schema,
					document = document,
					rootValue = rootValue,
				})
			end

			expect(executeQuery("{ test }")).toEqual({
				data = {
					test = "[null,{}]",
				},
			})
			expect(executeQuery("{ test }", "Source!")).toEqual({
				data = {
					test = '["Source!",{}]',
				},
			})
			expect(executeQuery('{ test(aStr: "String!") }', "Source!")).toEqual({
				--[[
                    ROBLOX deviation:
                    - inspect doesn't put quotes around prop names
                    - inspect adds spacing within printed object
                    - original test string '["Source!",{"aStr":"String!"}]'
                --]]
				data = {
					test = '["Source!",{ aStr: "String!" }]',
				},
			})
			expect(executeQuery('{ test(aInt: -123, aStr: "String!") }', "Source!")).toEqual({
				--[[
                    ROBLOX deviation:
                    - inspect doesn't put quotes around prop names
                    - inspect adds spacing within printed object
                    - original test string '["Source!",{"aStr":"String!","aInt":-123}]'
                --]]
				-- ROBLOX FIXME: order of params is not kept
				data = {
					test = '["Source!",{ aInt: -123, aStr: "String!" }]',
				},
			})
		end)
	end)
end

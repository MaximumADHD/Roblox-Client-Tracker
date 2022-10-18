--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/execution/__tests__/mutations-test.js

return function()
	local srcWorkspace = script.Parent.Parent.Parent

	local resolveOnNextTick = require(srcWorkspace.__testUtils__.resolveOnNextTick)
	local parse = require(srcWorkspace.language.parser).parse
	local GraphQLInt = require(srcWorkspace.type.scalars).GraphQLInt
	local GraphQLSchema = require(srcWorkspace.type.schema).GraphQLSchema
	local GraphQLObjectType = require(srcWorkspace.type.definition).GraphQLObjectType
	local executeModule = require(srcWorkspace.execution.execute)
	local execute = executeModule.execute
	local executeSync = executeModule.executeSync

	local NULL = require(srcWorkspace.luaUtils.null)

	local NumberHolder = {}

	function NumberHolder.new(originalNumber)
		local self = {}
		self.theNumber = originalNumber
		return setmetatable(self, NumberHolder)
	end

	NumberHolder.__index = NumberHolder

	local Root = {}

	function Root.new(originalNumber)
		local self = {}

		self.numberHolder = NumberHolder.new(originalNumber)
		return setmetatable(self, Root)
	end

	Root.__index = Root

	function Root:immediatelyChangeTheNumber(newNumber)
		self.numberHolder.theNumber = newNumber

		return self.numberHolder
	end

	function Root:promiseToChangeTheNumber(newNumber)
		return resolveOnNextTick():andThen(function()
			return self:immediatelyChangeTheNumber(newNumber)
		end)
	end

	function Root:failToChangeTheNumber()
		error("Cannot change the number")
	end

	function Root:promiseAndFailToChangeTheNumber()
		return resolveOnNextTick():andThen(function()
			error("Cannot change the number")
		end)
	end

	local numberHolderType = GraphQLObjectType.new({
		fields = {
			theNumber = { type = GraphQLInt },
		},
		name = "NumberHolder",
	})

	local schema = GraphQLSchema.new({
		query = GraphQLObjectType.new({
			fields = {
				numberHolder = { type = numberHolderType },
			},
			name = "Query",
		}),
		mutation = GraphQLObjectType.new({
			fields = {
				immediatelyChangeTheNumber = {
					type = numberHolderType,
					args = {
						newNumber = { type = GraphQLInt },
					},
					resolve = function(obj, _ref)
						local newNumber = _ref.newNumber

						return obj:immediatelyChangeTheNumber(newNumber)
					end,
				},
				promiseToChangeTheNumber = {
					type = numberHolderType,
					args = {
						newNumber = { type = GraphQLInt },
					},
					resolve = function(obj, _ref2)
						local newNumber = _ref2.newNumber

						return obj:promiseToChangeTheNumber(newNumber)
					end,
				},
				failToChangeTheNumber = {
					type = numberHolderType,
					args = {
						newNumber = { type = GraphQLInt },
					},
					resolve = function(obj, _ref3)
						local newNumber = _ref3.newNumber

						return obj:failToChangeTheNumber(newNumber)
					end,
				},
				promiseAndFailToChangeTheNumber = {
					type = numberHolderType,
					args = {
						newNumber = { type = GraphQLInt },
					},
					resolve = function(obj, _ref4)
						local newNumber = _ref4.newNumber

						return obj:promiseAndFailToChangeTheNumber(newNumber)
					end,
				},
			},
			name = "Mutation",
		}),
	})

	describe("Execute: Handles mutation execution ordering", function()
		it("evaluates mutations serially", function()
			local document = parse([[
      mutation M {
        first: immediatelyChangeTheNumber(newNumber: 1) {
          theNumber
        },
        second: promiseToChangeTheNumber(newNumber: 2) {
          theNumber
        },
        third: immediatelyChangeTheNumber(newNumber: 3) {
          theNumber
        }
        fourth: promiseToChangeTheNumber(newNumber: 4) {
          theNumber
        },
        fifth: immediatelyChangeTheNumber(newNumber: 5) {
          theNumber
        }
      }
    ]])

			local rootValue = Root.new(6)

			expect(execute({
				schema = schema,
				document = document,
				rootValue = rootValue,
			}):expect()).toEqual({
				data = {
					first = { theNumber = 1 },
					second = { theNumber = 2 },
					third = { theNumber = 3 },
					fourth = { theNumber = 4 },
					fifth = { theNumber = 5 },
				},
			})
		end)

		it("does not include illegal mutation fields in output", function()
			local document = parse("mutation { thisIsIllegalDoNotIncludeMe }")
			local result = executeSync({
				schema = schema,
				document = document,
			})

			expect(result).toEqual({ data = {} })
		end)

		it("evaluates mutations correctly in the presence of a failed mutation", function()
			local document = parse([[

      mutation M {
        first: immediatelyChangeTheNumber(newNumber: 1) {
          theNumber
        },
        second: promiseToChangeTheNumber(newNumber: 2) {
          theNumber
        },
        third: failToChangeTheNumber(newNumber: 3) {
          theNumber
        }
        fourth: promiseToChangeTheNumber(newNumber: 4) {
          theNumber
        },
        fifth: immediatelyChangeTheNumber(newNumber: 5) {
          theNumber
        }
        sixth: promiseAndFailToChangeTheNumber(newNumber: 6) {
          theNumber
        }
      }
    ]])
			local rootValue = Root.new(6)

			local result = execute({
				schema = schema,
				document = document,
				rootValue = rootValue,
			}):expect()

			-- ROBLOX deviation: result.errors contains more error information than expected
			-- so we check each value in result array

			expect(result).toObjectContain({
				data = {
					first = { theNumber = 1 },
					second = { theNumber = 2 },
					third = NULL,
					fourth = { theNumber = 4 },
					fifth = { theNumber = 5 },
					sixth = NULL,
				},
			})
			expect(result.errors[1]).toObjectContain({
				locations = {
					{
						line = 9,
						column = 9,
					},
				},
				path = {
					"third",
				},
			})
			-- ROBLOX deviation: message property contains more error substrings
			expect(result.errors[1].message:match("Cannot change the number")).to.be.ok()

			expect(result.errors[2]).toObjectContain({
				locations = {
					{
						line = 18,
						column = 9,
					},
				},
				path = {
					"sixth",
				},
			})
			-- ROBLOX deviation: message property contains more error substrings
			expect(result.errors[2].message:match("Cannot change the number")).to.be.ok()
		end)
	end)
end

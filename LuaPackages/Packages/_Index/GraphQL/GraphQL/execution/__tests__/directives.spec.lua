--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/execution/__tests__/directives-test.js

return function()
	local executionWorkspace = script.Parent.Parent
	local srcWorkspace = executionWorkspace.Parent

	local parse = require(srcWorkspace.language.parser).parse

	local GraphQLSchema = require(srcWorkspace.type.schema).GraphQLSchema
	local GraphQLString = require(srcWorkspace.type.scalars).GraphQLString
	local GraphQLObjectType = require(srcWorkspace.type.definition).GraphQLObjectType

	local executeSync = require(executionWorkspace.execute).executeSync

	local schema = GraphQLSchema.new({
		query = GraphQLObjectType.new({
			name = "TestType",
			fields = {
				a = { type = GraphQLString },
				b = { type = GraphQLString },
			},
		}),
	})

	local rootValue = {
		a = function()
			return "a"
		end,
		b = function()
			return "b"
		end,
	}

	local function executeTestQuery(query: string)
		local document = parse(query)

		return executeSync({
			schema = schema,
			document = document,
			rootValue = rootValue,
		})
	end

	describe("Execute: handles directives", function()
		describe("works without directives", function()
			it("basic query works", function()
				local result = executeTestQuery("{ a, b }")

				expect(result).toEqual({
					data = {
						a = "a",
						b = "b",
					},
				})
			end)
		end)

		describe("works on scalars", function()
			it("if true includes scalar", function()
				local result = executeTestQuery("{ a, b @include(if: true) }")

				expect(result).toEqual({
					data = {
						a = "a",
						b = "b",
					},
				})
			end)

			it("if false omits on scalar", function()
				local result = executeTestQuery("{ a, b @include(if: false) }")

				expect(result).toEqual({
					data = {
						a = "a",
					},
				})
			end)

			it("unless false includes scalar", function()
				local result = executeTestQuery("{ a, b @skip(if: false) }")

				expect(result).toEqual({
					data = {
						a = "a",
						b = "b",
					},
				})
			end)

			it("unless true omits scalar", function()
				local result = executeTestQuery("{ a, b @skip(if: true) }")

				expect(result).toEqual({
					data = {
						a = "a",
					},
				})
			end)
		end)

		describe("works on fragment spreads", function()
			it("if false omits fragment spread", function()
				local result = executeTestQuery([[
        query {
          a
          ...Frag @include(if: false)
        }
        fragment Frag on TestType {
          b
        }
      ]])

				expect(result).toEqual({
					data = {
						a = "a",
					},
				})
			end)

			it("if true includes fragment spread", function()
				local result = executeTestQuery([[
        query {
          a
          ...Frag @include(if: true)
        }
        fragment Frag on TestType {
          b
        }
      ]])

				expect(result).toEqual({
					data = {
						a = "a",
						b = "b",
					},
				})
			end)

			it("unless false includes fragment spread", function()
				local result = executeTestQuery([[
        query {
          a
          ...Frag @skip(if: false)
        }
        fragment Frag on TestType {
          b
        }
      ]])

				expect(result).toEqual({
					data = {
						a = "a",
						b = "b",
					},
				})
			end)

			it("unless true omits fragment spread", function()
				local result = executeTestQuery([[
        query {
          a
          ...Frag @skip(if: true)
        }
        fragment Frag on TestType {
          b
        }
      ]])

				expect(result).toEqual({
					data = {
						a = "a",
					},
				})
			end)
		end)

		describe("works on inline fragment", function()
			it("if false omits inline fragment", function()
				local result = executeTestQuery([[
        query {
          a
          ... on TestType @include(if: false) {
            b
          }
        }
      ]])

				expect(result).toEqual({
					data = {
						a = "a",
					},
				})
			end)

			it("if true includes inline fragment", function()
				local result = executeTestQuery([[
        query {
          a
          ... on TestType @include(if: true) {
            b
          }
        }
      ]])

				expect(result).toEqual({
					data = {
						a = "a",
						b = "b",
					},
				})
			end)

			it("unless false includes inline fragment", function()
				local result = executeTestQuery([[
        query {
          a
          ... on TestType @skip(if: false) {
            b
          }
        }
      ]])

				expect(result).toEqual({
					data = {
						a = "a",
						b = "b",
					},
				})
			end)

			it("unless true includes inline fragment", function()
				local result = executeTestQuery([[
        query {
          a
          ... on TestType @skip(if: true) {
            b
          }
        }
      ]])

				expect(result).toEqual({
					data = {
						a = "a",
					},
				})
			end)
		end)

		describe("works on anonymous inline fragment", function()
			it("if false omits anonymous inline fragment", function()
				local result = executeTestQuery([[
        query {
          a
          ... @include(if: false) {
            b
          }
        }
      ]])

				expect(result).toEqual({
					data = {
						a = "a",
					},
				})
			end)

			it("if true includes anonymous inline fragment", function()
				local result = executeTestQuery([[
        query {
          a
          ... @include(if: true) {
            b
          }
        }
      ]])

				expect(result).toEqual({
					data = {
						a = "a",
						b = "b",
					},
				})
			end)

			it("unless false includes anonymous inline fragment", function()
				local result = executeTestQuery([[
        query Q {
          a
          ... @skip(if: false) {
            b
          }
        }
      ]])

				expect(result).toEqual({
					data = {
						a = "a",
						b = "b",
					},
				})
			end)

			it("unless true includes anonymous inline fragment", function()
				local result = executeTestQuery([[
        query {
          a
          ... @skip(if: true) {
            b
          }
        }
      ]])

				expect(result).toEqual({
					data = {
						a = "a",
					},
				})
			end)
		end)

		describe("works with skip and include directives", function()
			it("include and no skip", function()
				local result = executeTestQuery([[
        {
          a
          b @include(if: true) @skip(if: false)
        }
      ]])

				expect(result).toEqual({
					data = {
						a = "a",
						b = "b",
					},
				})
			end)

			it("include and skip", function()
				local result = executeTestQuery([[
        {
          a
          b @include(if: true) @skip(if: true)
        }
      ]])

				expect(result).toEqual({
					data = {
						a = "a",
					},
				})
			end)

			it("no include or skip", function()
				local result = executeTestQuery([[
        {
          a
          b @include(if: false) @skip(if: false)
        }
      ]])

				expect(result).toEqual({
					data = {
						a = "a",
					},
				})
			end)
		end)
	end)
end

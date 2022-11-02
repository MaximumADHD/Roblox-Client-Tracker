local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect
local graphql = require(Packages.GraphQL)
type GraphQLResolveInfo = graphql.GraphQLResolveInfo
type GraphQLAbstractType = graphql.GraphQLAbstractType

local addMockResolvers = require(script.Parent.addMockResolvers)
local buildRootValue = require(script.Parent.buildRootValue)
local buildTypeResolver = require(script.Parent.buildTypeResolver)
local buildFieldResolver = require(script.Parent.buildFieldResolver)

return function()
	describe("addMockResolvers", function()
		it("should add mock resolvers to a schema", function()
			local resolvers = {
				Query = {
					count = function()
						return 10
					end,
					hello = function()
						return "hello"
					end,
					goodbye = function()
						return "goodbye"
					end,
				},
				Mutation = {
					updateCount = function(newCount)
						return newCount
					end,
					updateHello = function(newHello)
						return newHello
					end,
					updateGoodbye = function(newGoodbye)
						return newGoodbye
					end,
				},
				Count = {
					__resolveType = function()
						return "Number"
					end,
				},
				Hello = {
					__resolveType = function()
						return "String"
					end,
				},
			}

			local mocks = {
				Query = {
					count = function()
						return 20
					end,
				},
				Mutation = {
					updateHello = function(_)
						return "mockHello"
					end,
				},
				Hello = {
					__resolveType = function()
						return "Dictionary"
					end,
				},
			}

			local updatedResolvers = addMockResolvers(resolvers, mocks)

			-- Should only override count query
			jestExpect(updatedResolvers.Query.count()).toEqual(20)
			jestExpect(updatedResolvers.Query.hello()).toEqual("hello")
			jestExpect(updatedResolvers.Query.goodbye()).toEqual("goodbye")

			-- Should only override updateHello mutation
			jestExpect(updatedResolvers.Mutation.updateCount(30)).toEqual(30)
			jestExpect(updatedResolvers.Mutation.updateHello("hi!")).toEqual("mockHello")
			jestExpect(updatedResolvers.Mutation.updateGoodbye("bye!")).toEqual("bye!")

			-- Should only override Hello type
			jestExpect(updatedResolvers.Hello.__resolveType()).toEqual("Dictionary")
			jestExpect(updatedResolvers.Count.__resolveType()).toEqual("Number")

			local defaultResolvers = addMockResolvers(resolvers, {})
			-- Should be the same as default
			jestExpect(defaultResolvers.Query.count()).toEqual(10)
			jestExpect(defaultResolvers.Query.hello()).toEqual("hello")
			jestExpect(defaultResolvers.Query.goodbye()).toEqual("goodbye")

			-- Should be the same as default
			jestExpect(defaultResolvers.Mutation.updateCount(30)).toEqual(30)
			jestExpect(defaultResolvers.Mutation.updateHello("hi!")).toEqual("hi!")
			jestExpect(defaultResolvers.Mutation.updateGoodbye("bye!")).toEqual("bye!")

			-- Should be the same as default
			jestExpect(defaultResolvers.Hello.__resolveType()).toEqual("String")
			jestExpect(defaultResolvers.Count.__resolveType()).toEqual("Number")
		end)
	end)

	describe("buildRootValue", function()
		it("should build a root value given resolver with mutations and queries", function()
			local resolvers = {
				Query = {
					count = function()
						return 20
					end,
					name = function()
						return "testName"
					end,
				},
				Mutation = {
					updateCount = function(count)
						return count
					end,
					updateName = function(name)
						return name
					end,
				},
			}

			local rootValue = buildRootValue(resolvers)
			jestExpect(rootValue.count()).toEqual(20)
			jestExpect(rootValue.name()).toEqual("testName")
			jestExpect(rootValue.updateCount(30)).toEqual(30)
			jestExpect(rootValue.updateName("newName")).toEqual("newName")
		end)

		it("should handle nil Mutation", function()
			local resolvers = {
				Query = {
					count = function()
						return 20
					end,
					name = function()
						return "testName"
					end,
				},
			}

			local rootValue = buildRootValue(resolvers)
			jestExpect(rootValue.count()).toEqual(20)
			jestExpect(rootValue.name()).toEqual("testName")
		end)

		it("should handle nil Query", function()
			local resolvers = {
				Mutation = {
					updateCount = function(count)
						return count
					end,
					updateName = function(name)
						return name
					end,
				},
			}

			local rootValue = buildRootValue(resolvers)
			jestExpect(rootValue.updateCount(30)).toEqual(30)
			jestExpect(rootValue.updateName("newName")).toEqual("newName")
		end)

		it("should handle nil Query and Mutation", function()
			local resolvers = {}

			local rootValue = buildRootValue(resolvers)
			jestExpect(rootValue).toEqual({})
		end)
	end)

	describe("buildTypeResolver", function()
		it("should build a type resolver given a resolvers object", function()
			local resolvers = {
				Car = {
					__resolveType = function()
						return "Sedan"
					end,
				},
				Computer = {
					__resolveType = function()
						return "PC"
					end,
				},
			}

			-- No need to create an acutal resolveInfo obj, it just gets passed through.
			local ResolveInfo = ({} :: any) :: GraphQLResolveInfo

			local typeResolver = buildTypeResolver(resolvers)
			jestExpect(typeResolver(nil, nil, ResolveInfo, {
				name = "Car",
			} :: GraphQLAbstractType)).toEqual("Sedan")

			jestExpect(typeResolver(nil, nil, ResolveInfo, {
				name = "Computer",
			} :: GraphQLAbstractType)).toEqual("PC")

			jestExpect(typeResolver(nil, nil, ResolveInfo, {
				name = "NotAType",
			} :: GraphQLAbstractType)).toEqual("NotAType")
		end)
	end)

	describe("buildFieldResolver", function()
		it("should build a field resolver given a resolvers object", function()
			local resolvers = {
				Car = {
					age = function(obj)
						return 2022 - obj.year
					end,
				},
			}

			local fieldResolver = buildFieldResolver(resolvers)
			jestExpect(fieldResolver(
				{
					model = "Accord",
					year = 2014,
				},
				nil,
				nil,
				(
						{
							fieldName = "model",
							parentType = {
								name = "Car",
							},
						} :: any
					) :: GraphQLResolveInfo
			)).toEqual("Accord")

			jestExpect(fieldResolver(
				{
					model = "Accord",
					year = 2014,
				},
				nil,
				nil,
				(
						{
							fieldName = "age",
							parentType = {
								name = "Car",
							},
						} :: any
					) :: GraphQLResolveInfo
			)).toEqual(8)

			jestExpect(fieldResolver(
				{
					model = "Accord",
					year = 2014,
				},
				nil,
				nil,
				(
						{
							fieldName = "notAField",
							parentType = {
								name = "Car",
							},
						} :: any
					) :: GraphQLResolveInfo
			)).toEqual(nil)

			jestExpect(fieldResolver(
				{
					model = "Accord",
					year = 2014,
				},
				nil,
				nil,
				({
					fieldName = "notAField",
					parentType = {},
				} :: any) :: GraphQLResolveInfo
			)).toEqual(nil)

			jestExpect(fieldResolver({
				model = "Accord",
				year = 2014,
			}, nil, nil, ({} :: any) :: GraphQLResolveInfo)).toEqual(nil)
		end)
	end)
end

--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/aa650618426a301e3f0f61ead3adcd755055a627/src/type/__tests__/schema-test.js
local HttpService = game:GetService("HttpService")

return function()
	local root = script.Parent.Parent.Parent

	local dedent = require(root.__testUtils__.dedent).dedent

	local printSchema = require(root.utilities.printSchema).printSchema

	local GraphQLSchema = require(root.type.schema).GraphQLSchema
	local directives = require(root.type.directives)
	local GraphQLDirective = directives.GraphQLDirective
	local scalars = require(root.type.scalars)
	local GraphQLInt = scalars.GraphQLInt
	local GraphQLString = scalars.GraphQLString
	local GraphQLBoolean = scalars.GraphQLBoolean

	local definition = require(root.type.definition)
	local GraphQLList = definition.GraphQLList
	local GraphQLScalarType = definition.GraphQLScalarType
	local GraphQLObjectType = definition.GraphQLObjectType
	local GraphQLInterfaceType = definition.GraphQLInterfaceType
	local GraphQLInputObjectType = definition.GraphQLInputObjectType

	describe("Type System: Schema", function()
		it("Define sample schema", function()
			local BlogImage = GraphQLObjectType.new({
				name = "Image",
				fields = {
					url = { type = GraphQLString },
					width = { type = GraphQLInt },
					height = { type = GraphQLInt },
				},
			})
			-- ROBLOX deviation: pre-declare variable
			local BlogArticle

			local BlogAuthor = GraphQLObjectType.new({
				name = "Author",
				fields = function()
					return {
						id = { type = GraphQLString },
						name = { type = GraphQLString },
						pic = {
							args = {
								width = { type = GraphQLInt },
								height = { type = GraphQLInt },
							},
							type = BlogImage,
						},
						recentArticle = { type = BlogArticle },
					}
				end,
			})

			BlogArticle = GraphQLObjectType.new({
				name = "Article",
				fields = {
					id = { type = GraphQLString },
					isPublished = { type = GraphQLBoolean },
					author = { type = BlogAuthor },
					title = { type = GraphQLString },
					body = { type = GraphQLString },
				},
			})

			local BlogQuery = GraphQLObjectType.new({
				name = "Query",
				fields = {
					article = {
						args = {
							id = { type = GraphQLString },
						},
						type = BlogArticle,
					},
					feed = {
						type = GraphQLList.new(BlogArticle),
					},
				},
			})

			local BlogMutation = GraphQLObjectType.new({
				name = "Mutation",
				fields = {
					writeArticle = { type = BlogArticle },
				},
			})

			local BlogSubscription = GraphQLObjectType.new({
				name = "Subscription",
				fields = {
					articleSubscribe = {
						args = {
							id = { type = GraphQLString },
						},
						type = BlogArticle,
					},
				},
			})

			local schema = GraphQLSchema.new({
				description = "Sample schema",
				query = BlogQuery,
				mutation = BlogMutation,
				subscription = BlogSubscription,
			})

			-- ROBLOX deviation: when doing real parsing, order is preserved, but in these manually created objects it isn't
			-- re-order some of the fields here (Query, Article, Author, ...)
			expect(printSchema(schema)).to.equal(dedent([[
      """Sample schema"""
      schema {
        query: Query
        mutation: Mutation
        subscription: Subscription
      }

      type Query {
        feed: [Article]
        article(id: String): Article
      }

      type Article {
        title: String
        id: String
        author: Author
        body: String
        isPublished: Boolean
      }

      type Author {
        id: String
        recentArticle: Article
        name: String
        pic(height: Int, width: Int): Image
      }

      type Image {
        height: Int
        url: String
        width: Int
      }

      type Mutation {
        writeArticle: Article
      }

      type Subscription {
        articleSubscribe(id: String): Article
      }
    ]]))
		end)

		describe("Root types", function()
			local testType = GraphQLObjectType.new({ name = "TestType", fields = {} })

			it("defines a query root", function()
				local schema = GraphQLSchema.new({ query = testType })
				expect(schema:getQueryType()).to.equal(testType)

				expect(schema:getTypeMap().TestType).never.to.equal(nil)
			end)

			it("defines a mutation root", function()
				local schema = GraphQLSchema.new({ mutation = testType })
				expect(schema:getMutationType()).to.equal(testType)
				expect(schema:getTypeMap().TestType).never.to.equal(nil)
			end)

			it("defines a subscription root", function()
				local schema = GraphQLSchema.new({ subscription = testType })
				expect(schema:getSubscriptionType()).to.equal(testType)
				expect(schema:getTypeMap().TestType).never.to.equal(nil)
			end)
		end)

		describe("Type Map", function()
			it("includes interface possible types in the type map", function()
				local SomeInterface = GraphQLInterfaceType.new({
					name = "SomeInterface",
					fields = {},
				})

				local SomeSubtype = GraphQLObjectType.new({
					name = "SomeSubtype",
					fields = {},
					interfaces = { SomeInterface },
				})

				local schema = GraphQLSchema.new({
					query = GraphQLObjectType.new({
						name = "Query",
						fields = {
							iface = { type = SomeInterface },
						},
					}),
					types = { SomeSubtype },
				})

				expect(schema:getType("SomeInterface")).to.equal(SomeInterface)
				expect(schema:getType("SomeSubtype")).to.equal(SomeSubtype)

				expect(schema:isSubType(SomeInterface, SomeSubtype)).to.equal(true)
			end)

			it("includes interface's thunk subtypes in the type map", function()
				-- ROBLOX deviation: pre-declare variable
				local AnotherInterface

				local SomeInterface = GraphQLInterfaceType.new({
					name = "SomeInterface",
					fields = {},
					interfaces = function()
						return { AnotherInterface }
					end,
				})

				AnotherInterface = GraphQLInterfaceType.new({
					name = "AnotherInterface",
					fields = {},
				})

				local SomeSubtype = GraphQLObjectType.new({
					name = "SomeSubtype",
					fields = {},
					interfaces = function()
						return { SomeInterface }
					end,
				})

				local schema = GraphQLSchema.new({
					types = { SomeSubtype },
				})

				expect(schema:getType("SomeInterface")).to.equal(SomeInterface)
				expect(schema:getType("AnotherInterface")).to.equal(AnotherInterface)
				expect(schema:getType("SomeSubtype")).to.equal(SomeSubtype)
			end)

			it("includes nested input objects in the map", function()
				local NestedInputObject = GraphQLInputObjectType.new({
					name = "NestedInputObject",
					fields = {},
				})
				local SomeInputObject = GraphQLInputObjectType.new({
					name = "SomeInputObject",
					fields = { nested = { type = NestedInputObject } },
				})

				local schema = GraphQLSchema.new({
					query = GraphQLObjectType.new({
						name = "Query",
						fields = {
							something = {
								type = GraphQLString,
								args = { input = { type = SomeInputObject } },
							},
						},
					}),
				})

				expect(schema:getType("SomeInputObject")).to.equal(SomeInputObject)
				expect(schema:getType("NestedInputObject")).to.equal(NestedInputObject)
			end)

			it("includes input types only used in directives", function()
				local directive = GraphQLDirective.new({
					name = "dir",
					locations = { "OBJECT" },
					args = {
						arg = {
							type = GraphQLInputObjectType.new({ name = "Foo", fields = {} }),
						},
						argList = {
							type = GraphQLList.new(
								GraphQLInputObjectType.new({ name = "Bar", fields = {} })
							),
						},
					},
				})
				local schema = GraphQLSchema.new({ directives = { directive } })

				-- ROBLOX deviation: testez doesn't include .to.include matcher
				-- expect(schema:getTypeMap()).to.include.keys("Foo", "Bar")
				expect(schema:getTypeMap().Foo).never.to.equal(nil)
				expect(schema:getTypeMap().Bar).never.to.equal(nil)
			end)
		end)

		it("preserves the order of user provided types", function()
			local aType = GraphQLObjectType.new({
				name = "A",
				fields = {
					sub = { type = GraphQLScalarType.new({ name = "ASub" }) },
				},
			})
			local zType = GraphQLObjectType.new({
				name = "Z",
				fields = {
					sub = { type = GraphQLScalarType.new({ name = "ZSub" }) },
				},
			})
			local queryType = GraphQLObjectType.new({
				name = "Query",
				fields = {
					a = { type = aType },
					z = { type = zType },
					sub = { type = GraphQLScalarType.new({ name = "QuerySub" }) },
				},
			})
			local schema = GraphQLSchema.new({
				types = { zType, queryType, aType },
				query = queryType,
			})

			-- ROBLOX deviation: use Map type keys method
			local typeNames = schema:getTypeMap():keys()
			expect(typeNames).toEqual({
				"Z",
				"ZSub",
				"Query",
				"QuerySub",
				"A",
				"ASub",
				"Boolean",
				"String",
				"__Schema",
				"__Type",
				"__TypeKind",
				"__Field",
				"__InputValue",
				"__EnumValue",
				"__Directive",
				"__DirectiveLocation",
			})

			-- // Also check that this order is stable
			local copySchema = GraphQLSchema.new(schema:toConfig())
			-- ROBLOX deviation: use Map type
			expect(copySchema:getTypeMap():keys()).toEqual(typeNames)
		end)

		it("can be Object.toStringified", function()
			local schema = GraphQLSchema.new({})

			expect(tostring(schema)).to.equal("GraphQLSchema")
		end)

		describe("Validity", function()
			describe("when not assumed valid", function()
				it("configures the schema to still needing validation", function()
					expect(GraphQLSchema.new({
						assumeValid = false,
					}).__validationErrors).to.equal(nil)
				end)

				it("checks the configuration for mistakes", function()
					-- // $FlowExpectedError[incompatible-exact]
					-- ROBLOX deviation: use JSONDecode instead of JSON.parse
					expect(function()
						return GraphQLSchema.new(function(jsonString)
							return HttpService:JSONDecode(jsonString)
						end)
					end).toThrow()
					-- // $FlowExpectedError[incompatible-call]
					expect(function()
						-- ROBLOX deviation: Lua empty object/array is indistinguishable, so make it a non-empty object
						return GraphQLSchema.new({ types = { nonEmpty = true } })
					end).toThrow()
					-- // $FlowExpectedError[incompatible-call]
					expect(function()
						-- ROBLOX deviation: Lua empty object/array is indistinguishable, so make it a non-empty object
						return GraphQLSchema.new({ directives = { nonEmpty = true } })
					end).toThrow()
				end)
			end)

			describe("A Schema must contain uniquely named types", function()
				it("rejects a Schema which redefines a built-in type", function()
					local FakeString = GraphQLScalarType.new({ name = "String" })
					local QueryType = GraphQLObjectType.new({
						name = "Query",
						fields = {
							normal = { type = GraphQLString },
							fake = { type = FakeString },
						},
					})

					expect(function()
						return GraphQLSchema.new({ query = QueryType })
					end).toThrow(
						'Schema must contain uniquely named types but contains multiple types named "String".'
					)
				end)

				it("rejects a Schema when a provided type has no name", function()
					local query = GraphQLObjectType.new({
						name = "Query",
						fields = { foo = { type = GraphQLString } },
					})
					local types = { {}, query, {} }

					-- // $FlowExpectedError[incompatible-call]
					expect(function()
						return GraphQLSchema.new({
							query = query,
							types = types,
						})
					end).toThrow(
						"One of the provided types for building the Schema is missing a name."
					)
				end)

				it("rejects a Schema which defines an object type twice", function()
					local types = {
						GraphQLObjectType.new({ name = "SameName", fields = {} }),
						GraphQLObjectType.new({ name = "SameName", fields = {} }),
					}

					expect(function()
						return GraphQLSchema.new({ types = types })
					end).toThrow(
						'Schema must contain uniquely named types but contains multiple types named "SameName".'
					)
				end)

				it("rejects a Schema which defines fields with conflicting types", function()
					local fields = {}
					local QueryType = GraphQLObjectType.new({
						name = "Query",
						fields = {
							a = {
								type = GraphQLObjectType.new({
									name = "SameName",
									fields = fields,
								}),
							},
							b = {
								type = GraphQLObjectType.new({
									name = "SameName",
									fields = fields,
								}),
							},
						},
					})

					expect(function()
						return GraphQLSchema.new({ query = QueryType })
					end).toThrow(
						'Schema must contain uniquely named types but contains multiple types named "SameName".'
					)
				end)
			end)

			describe("when assumed valid", function()
				it("configures the schema to have no errors", function()
					expect(GraphQLSchema.new({
						assumeValid = true,
					}).__validationErrors).toEqual({})
				end)
			end)
		end)
	end)
end

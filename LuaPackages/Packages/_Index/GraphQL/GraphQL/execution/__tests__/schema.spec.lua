--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/execution/__tests__/schema-test.js

return function()
	local executionWorkspace = script.Parent.Parent
	local srcWorkspace = executionWorkspace.Parent

	local parse = require(srcWorkspace.language.parser).parse

	local GraphQLSchema = require(srcWorkspace.type.schema).GraphQLSchema
	local definitionImport = require(srcWorkspace.type.definition)
	local GraphQLList = definitionImport.GraphQLList
	local GraphQLNonNull = definitionImport.GraphQLNonNull
	local GraphQLObjectType = definitionImport.GraphQLObjectType
	local scalarsImport = require(srcWorkspace.type.scalars)
	local GraphQLID = scalarsImport.GraphQLID
	local GraphQLInt = scalarsImport.GraphQLInt
	local GraphQLString = scalarsImport.GraphQLString
	local GraphQLBoolean = scalarsImport.GraphQLBoolean

	local executeSync = require(executionWorkspace.execute).executeSync

	describe("Execute: Handles execution with a complex schema", function()
		it("executes using a schema", function()
			-- ROBLOX deviation: predeclare local variables
			local BlogArticle
			local article
			local getPic

			local BlogImage = GraphQLObjectType.new({
				name = "Image",
				fields = {
					url = { type = GraphQLString },
					width = { type = GraphQLInt },
					height = { type = GraphQLInt },
				},
			})
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
							resolve = function(obj, _ref)
								local width, height = _ref.width, _ref.height

								return obj.pic(width, height)
							end,
						},
						recentArticle = { type = BlogArticle },
					}
				end,
			})
			BlogArticle = GraphQLObjectType.new({
				name = "Article",
				fields = {
					id = {
						type = GraphQLNonNull.new(GraphQLString),
					},
					isPublished = { type = GraphQLBoolean },
					author = { type = BlogAuthor },
					title = { type = GraphQLString },
					body = { type = GraphQLString },
					keywords = {
						type = GraphQLList.new(GraphQLString),
					},
				},
			})
			local BlogQuery = GraphQLObjectType.new({
				name = "Query",
				fields = {
					article = {
						type = BlogArticle,
						args = {
							id = { type = GraphQLID },
						},
						resolve = function(_, args)
							return article(args.id)
						end,
					},
					feed = {
						type = GraphQLList.new(BlogArticle),
						resolve = function()
							return {
								article(1),
								article(2),
								article(3),
								article(4),
								article(5),
								article(6),
								article(7),
								article(8),
								article(9),
								article(10),
							}
						end,
					},
				},
			})
			local BlogSchema = GraphQLSchema.new({ query = BlogQuery })

			function article(id: number)
				return {
					id = id,
					isPublished = true,
					author = {
						id = 123,
						name = "John Smith",
						pic = function(width: number, height: number)
							return getPic(123, width, height)
						end,
						recentArticle = function()
							return article(1)
						end,
					},
					title = "My Article " .. id,
					body = "This is a post",
					hidden = "This data is not exposed in the schema",
					keywords = {
						"foo",
						"bar",
						1,
						true,
						nil,
					},
				}
			end
			function getPic(uid: number, width: number, height: number)
				return {
					url = ("cdn://%s"):format(uid),
					width = ("%s"):format(width),
					height = ("%s"):format(height),
				}
			end

			local document = parse([[
      {
        feed {
          id,
          title
        },
        article(id: "1") {
          ...articleFields,
          author {
            id,
            name,
            pic(width: 640, height: 480) {
              url,
              width,
              height
            },
            recentArticle {
              ...articleFields,
              keywords
            }
          }
        }
      }

      fragment articleFields on Article {
        id,
        isPublished,
        title,
        body,
        hidden,
        notDefined
      }
    ]])

			-- Note: this is intentionally not validating to ensure appropriate
			-- behavior occurs when executing an invalid query.
			expect(executeSync({
				schema = BlogSchema,
				document = document,
			})).toEqual({
				data = {
					feed = {
						{
							id = "1",
							title = "My Article 1",
						},
						{
							id = "2",
							title = "My Article 2",
						},
						{
							id = "3",
							title = "My Article 3",
						},
						{
							id = "4",
							title = "My Article 4",
						},
						{
							id = "5",
							title = "My Article 5",
						},
						{
							id = "6",
							title = "My Article 6",
						},
						{
							id = "7",
							title = "My Article 7",
						},
						{
							id = "8",
							title = "My Article 8",
						},
						{
							id = "9",
							title = "My Article 9",
						},
						{
							id = "10",
							title = "My Article 10",
						},
					},
					article = {
						id = "1",
						isPublished = true,
						title = "My Article 1",
						body = "This is a post",
						author = {
							id = "123",
							name = "John Smith",
							pic = {
								url = "cdn://123",
								width = 640,
								height = 480,
							},
							recentArticle = {
								id = "1",
								isPublished = true,
								title = "My Article 1",
								body = "This is a post",
								keywords = {
									"foo",
									"bar",
									"1",
									"true",
									nil,
								},
							},
						},
					},
				},
			})
		end)
	end)
end

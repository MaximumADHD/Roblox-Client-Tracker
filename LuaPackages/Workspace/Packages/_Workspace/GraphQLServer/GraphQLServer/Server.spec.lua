local HttpService = game:GetService("HttpService")
return function()
	local Packages = script:FindFirstAncestor("GraphQLServer").Parent
	local GraphQLServer = require(script.Parent.Server)
	local jestExpect = require(Packages.Dev.JestGlobals).expect
	local GraphQLError = require(Packages.GraphQL).GraphQLError
	local NULL = require(Packages.GraphQL).NULL
	local fetchModule = require(Packages.Fetch)
	local buildFetch = fetchModule.buildFetch

	it("should resolve queries and mutations for a given schema", function()
		local books = {
			{
				title = "The Count of Monte Cristo",
				author = "Alexandre Dumas",
			},
			{
				title = "Beloved",
				author = "Toni Morrison",
			},
		}

		local typeDefs = [[
			interface Book {
				title: String!
				author: String!
			}

			type Novel implements Book {
				title: String!
				author: String!
			}

			type Query {
				books: [Book]
			}

			type Mutation {
				addBook(title: String!, author: String!): [Book]
			}
		]]

		local resolvers = {
			Query = {
				books = function()
					return books
				end,
			},
			Mutation = {
				addBook = function(_, vars)
					table.insert(books, vars)
					return books
				end,
			},
			Book = {
				__resolveType = function()
					return "Novel"
				end,
			},
		}

		local server = GraphQLServer.new({
			typeDefs = typeDefs,
			resolvers = resolvers,
		})

		local GET_BOOKS = [[
			query getBooks {
				books {
					title
				}
			}
		]]

		local body = HttpService:JSONEncode({
			query = GET_BOOKS,
		})

		local fetchedBooks
		server
			:fetchLocal({
				body = body,
			})
			:andThen(function(result)
				fetchedBooks = result.body.data.books
			end)
			:await()

		jestExpect(fetchedBooks).toEqual({
			{
				title = "The Count of Monte Cristo",
			},
			{
				title = "Beloved",
			},
		})

		local ADD_BOOKS = [[
			mutation books($title: String!, $author: String!) {
				addBook(title: $title, author: $author) {
					__typename
					author
				}
			}
		]]

		local mutationBody = HttpService:JSONEncode({
			mutation = ADD_BOOKS,
			variables = {
				title = "Never Let Me Go",
				author = "Kazuo Ishiguro",
			},
		})

		local updatedBooks
		server
			:fetchLocal({
				body = mutationBody,
			})
			:andThen(function(result)
				updatedBooks = result.body.data.addBook
			end)
			:await()

		jestExpect(updatedBooks).toEqual({
			{
				__typename = "Novel",
				author = "Alexandre Dumas",
			},
			{
				__typename = "Novel",
				author = "Toni Morrison",
			},
			{
				__typename = "Novel",
				author = "Kazuo Ishiguro",
			},
		})
	end)

	it("should mock resolvers for a schema", function()
		local books = {
			{
				title = "The Count of Monte Cristo",
				author = "Alexandre Dumas",
			},
			{
				title = "Beloved",
				author = "Toni Morrison",
			},
		}

		local typeDefs = [[
			interface Book {
				title: String!
				author: String!
			}

			type Novel implements Book {
				title: String!
				author: String!
			}

			type TextBook implements Book {
				title: String!
				author: String!
				publisher: String!
			}

			type Query {
				books: [Book]
			}

			type Mutation {
				addBook(title: String!, author: String!): [Book]
			}
		]]

		local resolvers = {
			Query = {
				books = function()
					return books
				end,
			},
			Mutation = {
				addBook = function(_, vars)
					table.insert(books, vars)
					return books
				end,
			},
			Book = {
				__resolveType = function()
					return "Novel"
				end,
			},
		}

		local mockResolvers = {
			Query = {
				books = function()
					return {
						{
							title = "Mock Book",
							author = "Mock Author",
						},
					}
				end,
			},
			Mutation = {
				addBook = function()
					return {
						{
							title = "Mock TextBook",
							author = "Mock TextBook Author",
							publisher = "Mock Publisher",
						},
					}
				end,
			},
			Book = {
				__resolveType = function()
					return "TextBook"
				end,
			},
		}

		local server = GraphQLServer.new({
			typeDefs = typeDefs,
			resolvers = resolvers,
			mockResolvers = mockResolvers,
		})

		local GET_BOOKS = [[
			query getBooks {
				books {
					title
				}
			}
		]]

		local body = HttpService:JSONEncode({
			query = GET_BOOKS,
		})

		local fetchedBooks
		server
			:fetchLocal({
				body = body,
			})
			:andThen(function(result)
				fetchedBooks = result.body.data.books
			end)
			:await()

		jestExpect(fetchedBooks).toEqual({
			{
				title = "Mock Book",
			},
		})

		local ADD_BOOKS = [[
			mutation books($title: String!, $author: String!) {
				addBook(title: $title, author: $author) {
					__typename
					author
				}
			}
		]]

		local mutationBody = HttpService:JSONEncode({
			mutation = ADD_BOOKS,
			variables = {
				title = "Never Let Me Go",
				author = "Kazuo Ishiguro",
			},
		})

		local updatedBooks
		server
			:fetchLocal({
				body = mutationBody,
			})
			:andThen(function(result)
				updatedBooks = result.body.data.addBook
			end)
			:await()

		jestExpect(updatedBooks).toEqual({
			{
				__typename = "TextBook",
				author = "Mock TextBook Author",
			},
		})
	end)

	it("should override the default resolvers for a typedef", function()
		local authors = {
			"Alexandre Dumas",
			"Toni Morrison",
		}

		local books = {
			{
				title = "The Count of Monte Cristo",
				author = "Alexandre Dumas",
			},
			{
				title = "The Three Musketeers",
				author = "Alexandre Dumas",
			},
			{
				title = "Beloved",
				author = "Toni Morrison",
			},
		}

		local typeDefs = [[
			type Book {
				title: String!
				author: String!
			}

			type Author {
				name: String!
				books: [Book]
			}

			type Query {
				author(id: Int!): Author
			}
		]]

		local resolvers = {
			Query = {
				author = function(_, ref)
					return {
						name = authors[ref.id],
					}
				end,
			},
			Author = {
				books = function(author)
					local booksByAuthor = {}
					local name = author.name
					for _, book in books do
						if book.author == name then
							table.insert(booksByAuthor, book)
						end
					end
					return booksByAuthor
				end,
			},
		}

		local server = GraphQLServer.new({
			typeDefs = typeDefs,
			resolvers = resolvers,
		})

		local GET_AUTHOR = [[
			query getAuthor($id: Int!) {
				author(id: $id) {
					name
					books {
						title
					}
				}
			}
		]]

		local queryBody = HttpService:JSONEncode({
			query = GET_AUTHOR,
			variables = {
				id = 1,
			},
		})

		local fetchedAuthor

		server
			:fetchLocal({
				body = queryBody,
			})
			:andThen(function(result)
				fetchedAuthor = result.body.data.author
			end)
			:await()

		jestExpect(fetchedAuthor).toEqual({
			name = "Alexandre Dumas",
			books = {
				{
					title = "The Count of Monte Cristo",
				},
				{
					title = "The Three Musketeers",
				},
			},
		})
	end)

	describe("error handling", function()
		it("should catch graphql execution errors", function()
			local typeDefs = [[
				type Book {
					title: String!
					author: String!
				}

				type Author {
					name: String!
					books: [Book]
				}

				type Query {
					author(id: Int!): Author
				}
			]]

			local resolvers = {
				Query = {
					author = function()
						error(GraphQLError.new("Test Error"))
					end,
				},
			}

			local server = GraphQLServer.new({
				typeDefs = typeDefs,
				resolvers = resolvers,
			})

			local GET_AUTHOR = [[
				query getAuthor($id: Int!) {
					author(id: $id) {
						name
						books {
							title
						}
					}
				}
			]]

			local queryBody = HttpService:JSONEncode({
				query = GET_AUTHOR,
				variables = {
					id = 1,
				},
			})

			local capturedError, capturedAuthor

			server
				:fetchLocal({
					body = queryBody,
				})
				:andThen(function(result)
					capturedError = result.body.errors[1]
					capturedAuthor = result.body.data.author
				end)
				:await()

			jestExpect(capturedError.originalError.message).toEqual("Test Error")
			jestExpect(capturedAuthor).toEqual(NULL)
		end)

		it("should provide partial data", function()
			local typeDefs = [[
				type Book {
					title: String!
					author: String!
				}

				type Author {
					name: String!
					books: [Book]
				}

				type Query {
					author(id: Int!): Author
				}
			]]

			local resolvers = {
				Query = {
					author = function()
						return {
							name = "Test Name",
						}
					end,
				},
				Author = {
					books = function()
						error(GraphQLError.new("Test Error"))
					end,
				},
			}

			local server = GraphQLServer.new({
				typeDefs = typeDefs,
				resolvers = resolvers,
			})

			local GET_AUTHOR = [[
				query getAuthor($id: Int!) {
					author(id: $id) {
						name
						books {
							title
						}
					}
				}
			]]

			local queryBody = HttpService:JSONEncode({
				query = GET_AUTHOR,
				variables = {
					id = 1,
				},
			})

			local capturedError, capturedAuthor

			server
				:fetchLocal({
					body = queryBody,
				})
				:andThen(function(result)
					capturedError = result.body.errors[1]
					capturedAuthor = result.body.data.author
				end)
				:await()

			jestExpect(capturedError.originalError.message).toEqual("Test Error")
			jestExpect(capturedAuthor.name).toEqual("Test Name")
		end)
	end)

	it("should allow mocking fetch via GraphQL context", function()
		local books = {
			{
				title = "The Count of Monte Cristo",
				author = "Alexandre Dumas",
			},
			{
				title = "Beloved",
				author = "Toni Morrison",
			},
		}

		local typeDefs = [[
			type Book {
				title: String!
				author: String!
			}

			type Query {
				books: [Book]
			}
		]]

		local resolvers = {
			Query = {
				books = function(_root, _args, context)
					local fetchImpl = context.fetchImpl
					local booksResponse = fetchImpl("https://books.roblox.com/v1/books", {
						method = "GET",
					}):expect()

					local booksJson = booksResponse:json():expect()
					return booksJson
				end,
			},
		}

		local function makeHttpServiceMock(mockSuccess, mockResponse): HttpService
			local HttpServiceMock = {
				RequestInternal = function(_options)
					return {
						Start = function(_self, callback)
							callback(mockSuccess, mockResponse)
						end,
					}
				end,
			}

			return HttpServiceMock :: any
		end

		local HttpServiceMock = makeHttpServiceMock(true, {
			Body = HttpService:JSONEncode(books),
		})

		local server = GraphQLServer.new({
			typeDefs = typeDefs,
			resolvers = resolvers,
			fetchImpl = buildFetch(HttpServiceMock),
		})

		local GET_BOOKS = [[
			query getBooks {
				books {
					title
				}
			}
		]]

		local body = HttpService:JSONEncode({
			query = GET_BOOKS,
		})

		local fetchedBooks
		server
			:fetchLocal({
				body = body,
			})
			:andThen(function(result)
				fetchedBooks = result.body.data.books
			end)
			:await()

		jestExpect(fetchedBooks).toEqual({
			{
				title = "The Count of Monte Cristo",
			},
			{
				title = "Beloved",
			},
		})
	end)
end

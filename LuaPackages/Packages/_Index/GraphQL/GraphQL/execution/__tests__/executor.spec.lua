--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/execution/__tests__/executor-test.js

return function()
	local executionWorkspace = script.Parent.Parent
	local srcWorkspace = executionWorkspace.Parent
	local luaUtilsWorkspace = srcWorkspace.luaUtils

	local Packages = srcWorkspace.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	-- ROBLOX deviation: utils
	local LuauPolyfill = require(Packages.LuauPolyfill)
	local Error = LuauPolyfill.Error
	local Array = LuauPolyfill.Array
	local Object = LuauPolyfill.Object
	local Promise = require(Packages.Promise)
	local instanceof = LuauPolyfill.instanceof
	local NULL = require(luaUtilsWorkspace.null)
	local HttpService = game:GetService("HttpService")

	local inspect = require(srcWorkspace.jsutils.inspect).inspect
	local invariant = require(srcWorkspace.jsutils.invariant).invariant

	local Kind = require(srcWorkspace.language.kinds).Kind
	local parse = require(srcWorkspace.language.parser).parse

	local GraphQLSchema = require(srcWorkspace.type.schema).GraphQLSchema
	local scalarsImport = require(srcWorkspace.type.scalars)
	local GraphQLInt = scalarsImport.GraphQLInt
	local GraphQLBoolean = scalarsImport.GraphQLBoolean
	local GraphQLString = scalarsImport.GraphQLString
	local definitionImport = require(srcWorkspace.type.definition)
	local GraphQLList = definitionImport.GraphQLList
	local GraphQLNonNull = definitionImport.GraphQLNonNull
	local GraphQLScalarType = definitionImport.GraphQLScalarType
	local GraphQLInterfaceType = definitionImport.GraphQLInterfaceType
	local GraphQLObjectType = definitionImport.GraphQLObjectType
	local GraphQLUnionType = definitionImport.GraphQLUnionType
	local executeImport = require(executionWorkspace.execute)
	local execute = executeImport.execute
	local executeSync = executeImport.executeSync

	describe("Execute: Handles basic execution tasks", function()
		it("throws if no document is provided", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Type",
					fields = {
						a = { type = GraphQLString },
					},
				}),
			})

			-- $FlowExpectedError[prop-missing]
			expect(function()
				return executeSync({ schema = schema })
			end).toThrow("Must provide document.")
		end)

		it("throws if no schema is provided", function()
			local document = parse("{ field }")

			-- $FlowExpectedError[prop-missing]
			expect(function()
				return executeSync({ document = document })
			end).toThrow("Expected nil to be a GraphQL schema.")
		end)

		it("throws on invalid variables", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Type",
					fields = {
						fieldA = {
							type = GraphQLString,
							args = {
								argA = { type = GraphQLInt },
							},
						},
					},
				}),
			})
			local document = parse([[

      query ($a: Int) {
        fieldA(argA: $a)
      }
    ]])
			local variableValues = '{ "a": 1 }'

			-- $FlowExpectedError[incompatible-call]
			expect(function()
				return executeSync({
					schema = schema,
					document = document,
					variableValues = variableValues,
				})
			end).toThrow(
				"Variables must be provided as an Object where each property is a variable value. Perhaps look to see if an unparsed JSON string was provided."
			)
		end)

		it("executes arbitrary code", function()
			-- ROBLOX deviation: predeclare local variables
			local data
			local deepData
			local DataType
			local DeepDataType

			-- ROBLOX deviation: hoist function to top
			local function promiseData()
				return Promise.resolve(data)
			end

			data = {
				a = function()
					return "Apple"
				end,
				b = function()
					return "Banana"
				end,
				c = function()
					return "Cookie"
				end,
				d = function()
					return "Donut"
				end,
				e = function()
					return "Egg"
				end,
				f = "Fish",
				-- Called only by DataType::pic static resolver
				pic = function(size: number)
					return "Pic of size: " .. tostring(size)
				end,
				deep = function()
					return deepData
				end,
				promise = promiseData,
			}

			deepData = {
				a = function()
					return "Already Been Done"
				end,
				b = function()
					return "Boring"
				end,
				c = function()
					return {
						"Contrived",
						NULL,
						"Confusing",
					}
				end,
				deeper = function()
					return { data, NULL, data }
				end,
			}

			DataType = GraphQLObjectType.new({
				name = "DataType",
				fields = function()
					return {
						a = { type = GraphQLString },
						b = { type = GraphQLString },
						c = { type = GraphQLString },
						d = { type = GraphQLString },
						e = { type = GraphQLString },
						f = { type = GraphQLString },
						pic = {
							args = {
								size = { type = GraphQLInt },
							},
							type = GraphQLString,
							resolve = function(obj, _ref)
								local size = _ref.size

								return obj.pic(size)
							end,
						},
						deep = { type = DeepDataType },
						promise = { type = DataType },
					}
				end,
			})
			DeepDataType = GraphQLObjectType.new({
				name = "DeepDataType",
				fields = {
					a = { type = GraphQLString },
					b = { type = GraphQLString },
					c = {
						type = GraphQLList.new(GraphQLString),
					},
					deeper = {
						type = GraphQLList.new(DataType),
					},
				},
			})
			local document = parse([[

      query ($size: Int) {
        a,
        b,
        x: c
        ...c
        f
        ...on DataType {
          pic(size: $size)
          promise {
            a
          }
        }
        deep {
          a
          b
          c
          deeper {
            a
            b
          }
        }
      }

      fragment c on DataType {
        d
        e
      }
    ]])

			local result = execute({
				schema = GraphQLSchema.new({ query = DataType }),
				document = document,
				rootValue = data,
				variableValues = { size = 100 },
			}):expect()

			expect(result).toEqual({
				data = {
					a = "Apple",
					b = "Banana",
					x = "Cookie",
					d = "Donut",
					e = "Egg",
					f = "Fish",
					pic = "Pic of size: 100",
					promise = {
						a = "Apple",
					},
					deep = {
						a = "Already Been Done",
						b = "Boring",
						c = {
							"Contrived",
							NULL,
							"Confusing",
						},
						deeper = {
							{
								a = "Apple",
								b = "Banana",
							},
							NULL,
							{
								a = "Apple",
								b = "Banana",
							},
						},
					},
				},
			})
		end)

		it("merges parallel fragments", function()
			-- ROBLOX deviation: predeclare variable used recursively
			local Type
			Type = GraphQLObjectType.new({
				name = "Type",
				fields = function()
					return {
						a = {
							type = GraphQLString,
							resolve = function()
								return "Apple"
							end,
						},
						b = {
							type = GraphQLString,
							resolve = function()
								return "Banana"
							end,
						},
						c = {
							type = GraphQLString,
							resolve = function()
								return "Cherry"
							end,
						},
						deep = {
							type = Type,
							resolve = function()
								return {}
							end,
						},
					}
				end,
			})
			local schema = GraphQLSchema.new({ query = Type })
			local document = parse([[

      { a, ...FragOne, ...FragTwo }

      fragment FragOne on Type {
        b
        deep { b, deeper: deep { b } }
      }

      fragment FragTwo on Type {
        c
        deep { c, deeper: deep { c } }
      }
    ]])
			local result = executeSync({
				schema = schema,
				document = document,
			})

			expect(result).toEqual({
				data = {
					a = "Apple",
					b = "Banana",
					c = "Cherry",
					deep = {
						b = "Banana",
						c = "Cherry",
						deeper = {
							b = "Banana",
							c = "Cherry",
						},
					},
				},
			})
		end)

		it("provides info about current execution state", function()
			local resolvedInfo
			local testType = GraphQLObjectType.new({
				name = "Test",
				fields = {
					test = {
						type = GraphQLString,
						resolve = function(_val, _args, _ctx, info)
							resolvedInfo = info
						end,
					},
				},
			})
			local schema = GraphQLSchema.new({ query = testType })
			local document = parse("query ($var: String) { result: test }")
			local rootValue = {
				root = "val",
			}
			local variableValues = {
				var = "abc",
			}

			executeSync({
				schema = schema,
				document = document,
				rootValue = rootValue,
				variableValues = variableValues,
			})

			--[[
			--  ROBLOX deviation: no to.have.all.keys matcher
			--  expect(resolvedInfo).to.have.all.keys('fieldName', 'fieldNodes', 'returnType', 'parentType', 'path', 'schema', 'fragments', 'rootValue', 'operation', 'variableValues')
			--]]
			local resolvedInfoKeys = Object.keys(resolvedInfo)
			Array.every({
				"fieldName",
				"fieldNodes",
				"returnType",
				"parentType",
				"path",
				"schema",
				"fragments",
				"rootValue",
				"operation",
				"variableValues",
			}, function(key)
				expect(resolvedInfoKeys).toArrayContains(key)
			end)

			local operation = document.definitions[1]

			invariant(operation.kind == Kind.OPERATION_DEFINITION)
			expect(resolvedInfo).toObjectContain({
				fieldName = "test",
				returnType = GraphQLString,
				parentType = testType,
				schema = schema,
				rootValue = rootValue,
				operation = operation,
			})

			local field = operation.selectionSet.selections[1]

			expect(resolvedInfo).toObjectContain({
				fieldNodes = { field },
				path = {
					prev = nil,
					key = "result",
					typename = "Test",
				},
				variableValues = {
					var = "abc",
				},
			})
		end)

		it("populates path correctly with complex types", function()
			local path
			local someObject = GraphQLObjectType.new({
				name = "SomeObject",
				fields = {
					test = {
						type = GraphQLString,
						resolve = function(_val, _args, _ctx, info)
							path = info.path
						end,
					},
				},
			})
			local someUnion = GraphQLUnionType.new({
				name = "SomeUnion",
				types = { someObject },
				resolveType = function()
					return "SomeObject"
				end,
			})
			local testType = GraphQLObjectType.new({
				name = "SomeQuery",
				fields = {
					test = {
						type = GraphQLNonNull.new(GraphQLList.new(GraphQLNonNull.new(someUnion))),
					},
				},
			})
			local schema = GraphQLSchema.new({ query = testType })
			local rootValue = {
				test = { {} },
			}
			local document = parse([[

      query {
        l1: test {
          ... on SomeObject {
            l2: test
          }
        }
      }
    ]])

			executeSync({
				schema = schema,
				document = document,
				rootValue = rootValue,
			})
			expect(path).toEqual({
				key = "l2",
				typename = "SomeObject",
				prev = {
					key = 1,
					typename = nil,
					prev = {
						key = "l1",
						typename = "SomeQuery",
						prev = nil,
					},
				},
			})
		end)

		it("threads root value context correctly", function()
			local resolvedRootValue
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Type",
					fields = {
						a = {
							type = GraphQLString,
							resolve = function(rootValueArg)
								resolvedRootValue = rootValueArg
							end,
						},
					},
				}),
			})
			local document = parse("query Example { a }")
			local rootValue = {
				contextThing = "thing",
			}

			executeSync({
				schema = schema,
				document = document,
				rootValue = rootValue,
			})
			expect(resolvedRootValue).to.equal(rootValue)
		end)

		it("correctly threads arguments", function()
			local resolvedArgs
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Type",
					fields = {
						b = {
							args = {
								numArg = { type = GraphQLInt },
								stringArg = { type = GraphQLString },
							},
							type = GraphQLString,
							resolve = function(_, args)
								resolvedArgs = args
							end,
						},
					},
				}),
			})
			local document = parse([[

      query Example {
        b(numArg: 123, stringArg: "foo")
      }
    ]])

			executeSync({
				schema = schema,
				document = document,
			})
			expect(resolvedArgs).toEqual({
				numArg = 123,
				stringArg = "foo",
			})
		end)

		it("nulls out error subtrees", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Type",
					fields = {
						sync = { type = GraphQLString },
						syncError = { type = GraphQLString },
						syncRawError = { type = GraphQLString },
						syncReturnError = { type = GraphQLString },
						syncReturnErrorList = {
							type = GraphQLList.new(GraphQLString),
						},
						async = { type = GraphQLString },
						asyncReject = { type = GraphQLString },
						asyncRejectWithExtensions = { type = GraphQLString },
						asyncRawReject = { type = GraphQLString },
						asyncEmptyReject = { type = GraphQLString },
						asyncError = { type = GraphQLString },
						asyncRawError = { type = GraphQLString },
						asyncReturnError = { type = GraphQLString },
						asyncReturnErrorWithExtensions = { type = GraphQLString },
					},
				}),
			})
			local document = parse([[

      {
        sync
        syncError
        syncRawError
        syncReturnError
        syncReturnErrorList
        async
        asyncReject
        asyncRawReject
        asyncEmptyReject
        asyncError
        asyncRawError
        asyncReturnError
        asyncReturnErrorWithExtensions
      }
    ]])
			local rootValue = {
				sync = function()
					return "sync"
				end,
				syncError = function()
					error(Error.new("Error getting syncError"))
				end,
				syncRawError = function()
					-- eslint-disable-next-line no-throw-literal
					-- ROBLOX deviation: need to use level 0 to avoid prepending error message with additional position information
					error("Error getting syncRawError", 0)
				end,
				syncReturnError = function()
					return Error.new("Error getting syncReturnError")
				end,
				syncReturnErrorList = function()
					return {
						"sync0",
						Error.new("Error getting syncReturnErrorList1"),
						"sync2",
						Error.new("Error getting syncReturnErrorList3"),
					}
				end,
				async = function()
					return Promise.new(function(resolve)
						return resolve("async")
					end)
				end,
				asyncReject = function()
					return Promise.new(function(_, reject)
						return reject(Error.new("Error getting asyncReject"))
					end)
				end,
				asyncRawReject = function()
					-- eslint-disable-next-line prefer-promise-reject-errors
					return Promise.reject("Error getting asyncRawReject")
				end,
				asyncEmptyReject = function()
					-- eslint-disable-next-line prefer-promise-reject-errors
					return Promise.reject()
				end,
				asyncError = function()
					return Promise.new(function()
						error(Error.new("Error getting asyncError"))
					end)
				end,
				asyncRawError = function()
					return Promise.new(function()
						-- eslint-disable-next-line no-throw-literal
						-- ROBLOX deviation: need to use level 0 to avoid prepending error message with additional position information
						error("Error getting asyncRawError", 0)
					end)
				end,
				asyncReturnError = function()
					return Promise.resolve(Error.new("Error getting asyncReturnError"))
				end,
				asyncReturnErrorWithExtensions = function()
					local error_ = Error.new("Error getting asyncReturnErrorWithExtensions")

					error_.extensions = {
						foo = "bar",
					}

					return Promise.resolve(error_)
				end,
			}

			local result = execute({
				schema = schema,
				document = document,
				rootValue = rootValue,
			}):expect()

			--  ROBLOX deviation: .to.deep.equal matcher equates to jest's toMatchObject
			jestExpect(result).toMatchObject({
				data = {
					sync = "sync",
					syncError = NULL,
					syncRawError = NULL,
					syncReturnError = NULL,
					syncReturnErrorList = { "sync0", NULL, "sync2", NULL },
					async = "async",
					asyncReject = NULL,
					asyncRawReject = NULL,
					asyncEmptyReject = NULL,
					asyncError = NULL,
					asyncRawError = NULL,
					asyncReturnError = NULL,
					asyncReturnErrorWithExtensions = NULL,
				},
				errors = {
					{
						message = "Error getting syncError",
						locations = { { line = 4, column = 9 } },
						path = { "syncError" },
					},
					{
						message = 'Unexpected error value: "Error getting syncRawError"',
						locations = { { line = 5, column = 9 } },
						path = { "syncRawError" },
					},
					{
						message = "Error getting syncReturnError",
						locations = { { line = 6, column = 9 } },
						path = { "syncReturnError" },
					},
					{
						message = "Error getting syncReturnErrorList1",
						locations = { { line = 7, column = 9 } },
						-- ROBLOX deviation: offset due to Lua 1-based indexing
						path = { "syncReturnErrorList", 2 },
					},
					{
						message = "Error getting syncReturnErrorList3",
						locations = { { line = 7, column = 9 } },
						-- ROBLOX deviation: offset due to Lua 1-based indexing
						path = { "syncReturnErrorList", 4 },
					},
					{
						message = "Error getting asyncReject",
						locations = { { line = 9, column = 9 } },
						path = { "asyncReject" },
					},
					{
						message = 'Unexpected error value: "Error getting asyncRawReject"',
						locations = { { line = 10, column = 9 } },
						path = { "asyncRawReject" },
					},
					{
						message = "Unexpected error value: nil",
						locations = { { line = 11, column = 9 } },
						path = { "asyncEmptyReject" },
					},
					{
						message = "Error getting asyncError",
						locations = { { line = 12, column = 9 } },
						path = { "asyncError" },
					},
					{
						message = 'Unexpected error value: "Error getting asyncRawError"',
						locations = { { line = 13, column = 9 } },
						path = { "asyncRawError" },
					},
					{
						message = "Error getting asyncReturnError",
						locations = { { line = 14, column = 9 } },
						path = { "asyncReturnError" },
					},
					{
						message = "Error getting asyncReturnErrorWithExtensions",
						locations = { { line = 15, column = 9 } },
						path = { "asyncReturnErrorWithExtensions" },
						extensions = { foo = "bar" },
					},
				},
			})
		end)

		it("nulls error subtree for promise rejection #1071", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {
						foods = {
							type = GraphQLList.new(GraphQLObjectType.new({
								name = "Food",
								fields = {
									name = { type = GraphQLString },
								},
							})),
							resolve = function()
								return Promise.reject(Error.new("Oops"))
							end,
						},
					},
				}),
			})
			local document = parse([[

      query {
        foods {
          name
        }
      }
    ]])

			local result = execute({
				schema = schema,
				document = document,
			}):expect()

			--  ROBLOX deviation: .to.deep.equal matcher equates to jest's toMatchObject
			jestExpect(result).toMatchObject({
				data = { foods = NULL },
				errors = {
					{
						locations = { { column = 9, line = 3 } },
						message = "Oops",
						path = { "foods" },
					},
				},
			})
		end)

		it("Full response path is included for non-nullable fields", function()
			-- ROBLOX deviation: predeclare variable used recursively
			local A
			A = GraphQLObjectType.new({
				name = "A",
				fields = function()
					return {
						nullableA = {
							type = A,
							resolve = function()
								return {}
							end,
						},
						nonNullA = {
							type = GraphQLNonNull.new(A),
							resolve = function()
								return {}
							end,
						},
						throws = {
							type = GraphQLNonNull.new(GraphQLString),
							resolve = function()
								error(Error.new("Catch me if you can"))
							end,
						},
					}
				end,
			})
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "query",
					fields = function()
						return {
							nullableA = {
								type = A,
								resolve = function()
									return {}
								end,
							},
						}
					end,
				}),
			})
			local document = parse([[

      query {
        nullableA {
          aliasedA: nullableA {
            nonNullA {
              anotherA: nonNullA {
                throws
              }
            }
          }
        }
      }
    ]])
			local result = executeSync({
				schema = schema,
				document = document,
			})

			--[[
			--  ROBLOX deviation: .to.deep.equal matcher equates to jest's toMatchObject
			--]]
			jestExpect(result).toMatchObject({
				data = {
					nullableA = {
						aliasedA = NULL,
					},
				},
				errors = {
					{
						message = "Catch me if you can",
						locations = { { line = 7, column = 17 } },
						path = { "nullableA", "aliasedA", "nonNullA", "anotherA", "throws" },
					},
				},
			})
		end)

		it("uses the inline operation if no operation name is provided", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Type",
					fields = {
						a = { type = GraphQLString },
					},
				}),
			})
			local document = parse("{ a }")
			local rootValue = {
				a = "b",
			}
			local result = executeSync({
				schema = schema,
				document = document,
				rootValue = rootValue,
			})

			expect(result).toEqual({
				data = {
					a = "b",
				},
			})
		end)

		it("uses the only operation if no operation name is provided", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Type",
					fields = {
						a = { type = GraphQLString },
					},
				}),
			})
			local document = parse("query Example { a }")
			local rootValue = {
				a = "b",
			}
			local result = executeSync({
				schema = schema,
				document = document,
				rootValue = rootValue,
			})

			expect(result).toEqual({
				data = {
					a = "b",
				},
			})
		end)

		it("uses the named operation if operation name is provided", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Type",
					fields = {
						a = { type = GraphQLString },
					},
				}),
			})

			local document = parse([[

      query Example { first: a }
      query OtherExample { second: a }
    ]])
			local rootValue = {
				a = "b",
			}
			local operationName = "OtherExample"

			local result = executeSync({
				schema = schema,
				document = document,
				rootValue = rootValue,
				operationName = operationName,
			})

			expect(result).toEqual({
				data = {
					second = "b",
				},
			})
		end)

		it("provides error if no operation is provided", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Type",
					fields = {
						a = { type = GraphQLString },
					},
				}),
			})
			local document = parse("fragment Example on Type { a }")
			local rootValue = {
				a = "b",
			}
			local result = executeSync({
				schema = schema,
				document = document,
				rootValue = rootValue,
			})

			--[[
			--  ROBLOX deviation: .to.deep.equal matcher equates to jests' toMatchObject
			--]]
			jestExpect(result).toMatchObject({
				errors = {
					{ message = "Must provide an operation." },
				},
			})
		end)

		it("errors if no op name is provided with multiple operations", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Type",
					fields = {
						a = { type = GraphQLString },
					},
				}),
			})
			local document = parse([[

      query Example { a }
      query OtherExample { a }
    ]])
			local result = executeSync({
				schema = schema,
				document = document,
			})

			--[[
			--  ROBLOX deviation: .to.deep.equal matcher equates to jest's toMatchObject
			--]]
			jestExpect(result).toMatchObject({
				errors = {
					{
						message = "Must provide operation name if query contains multiple operations.",
					},
				},
			})
		end)

		it("errors if unknown operation name is provided", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Type",
					fields = {
						a = { type = GraphQLString },
					},
				}),
			})
			local document = parse([[

      query Example { a }
      query OtherExample { a }
    ]])
			local operationName = "UnknownExample"
			local result = executeSync({
				schema = schema,
				document = document,
				operationName = operationName,
			})

			--[[
			--  ROBLOX deviation: .to.deep.equal matcher equates to jest's toMatchObject
			--]]
			jestExpect(result).toMatchObject({
				errors = {
					{ message = 'Unknown operation named "UnknownExample".' },
				},
			})
		end)

		it("errors if empty string is provided as operation name", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Type",
					fields = {
						a = { type = GraphQLString },
					},
				}),
			})
			local document = parse("{ a }")
			local operationName = ""
			local result = executeSync({
				schema = schema,
				document = document,
				operationName = operationName,
			})

			--[[
			--  ROBLOX deviation: .to.deep.equal matcher equated to jest's toMatchObject
			--]]
			jestExpect(result).toMatchObject({
				errors = {
					{ message = 'Unknown operation named "".' },
				},
			})
		end)

		it("uses the query schema for queries", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Q",
					fields = {
						a = { type = GraphQLString },
					},
				}),
				mutation = GraphQLObjectType.new({
					name = "M",
					fields = {
						c = { type = GraphQLString },
					},
				}),
				subscription = GraphQLObjectType.new({
					name = "S",
					fields = {
						a = { type = GraphQLString },
					},
				}),
			})
			local document = parse([[

      query Q { a }
      mutation M { c }
      subscription S { a }
    ]])
			local rootValue = {
				a = "b",
				c = "d",
			}
			local operationName = "Q"

			local result = executeSync({
				schema = schema,
				document = document,
				rootValue = rootValue,
				operationName = operationName,
			})

			expect(result).toEqual({
				data = {
					a = "b",
				},
			})
		end)

		it("uses the mutation schema for mutations", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Q",
					fields = {
						a = { type = GraphQLString },
					},
				}),
				mutation = GraphQLObjectType.new({
					name = "M",
					fields = {
						c = { type = GraphQLString },
					},
				}),
			})
			local document = parse([[

      query Q { a }
      mutation M { c }
    ]])
			local rootValue = {
				a = "b",
				c = "d",
			}
			local operationName = "M"

			local result = executeSync({
				schema = schema,
				document = document,
				rootValue = rootValue,
				operationName = operationName,
			})
			expect(result).toEqual({
				data = {
					c = "d",
				},
			})
		end)

		it("uses the subscription schema for subscriptions", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Q",
					fields = {
						a = { type = GraphQLString },
					},
				}),
				subscription = GraphQLObjectType.new({
					name = "S",
					fields = {
						a = { type = GraphQLString },
					},
				}),
			})
			local document = parse([[

      query Q { a }
      subscription S { a }
    ]])
			local rootValue = {
				a = "b",
				c = "d",
			}
			local operationName = "S"
			local result = executeSync({
				schema = schema,
				document = document,
				rootValue = rootValue,
				operationName = operationName,
			})

			expect(result).toEqual({
				data = {
					a = "b",
				},
			})
		end)

		it("correct field ordering despite execution order", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Type",
					fields = {
						a = { type = GraphQLString },
						b = { type = GraphQLString },
						c = { type = GraphQLString },
						d = { type = GraphQLString },
						e = { type = GraphQLString },
					},
				}),
			})
			local document = parse("{ a, b, c, d, e }")
			local rootValue = {
				a = function()
					return "a"
				end,
				b = function()
					return Promise.new(function(resolve)
						return resolve("b")
					end)
				end,
				c = function()
					return "c"
				end,
				d = function()
					return Promise.new(function(resolve)
						return resolve("d")
					end)
				end,
				e = function()
					return "e"
				end,
			}

			local result = execute({
				schema = schema,
				document = document,
				rootValue = rootValue,
			}):expect()

			expect(result).toEqual({
				data = {
					a = "a",
					b = "b",
					c = "c",
					d = "d",
					e = "e",
				},
			})
		end)

		it("Avoids recursion", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Type",
					fields = {
						a = { type = GraphQLString },
					},
				}),
			})
			local document = parse([[

      {
        a
        ...Frag
        ...Frag
      }

      fragment Frag on Type {
        a,
        ...Frag
      }
    ]])
			local rootValue = {
				a = "b",
			}
			local result = executeSync({
				schema = schema,
				document = document,
				rootValue = rootValue,
			})

			expect(result).toEqual({
				data = {
					a = "b",
				},
			})
		end)

		it("ignores missing sub selections on fields", function()
			local someType = GraphQLObjectType.new({
				name = "SomeType",
				fields = {
					b = { type = GraphQLString },
				},
			})
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {
						a = { type = someType },
					},
				}),
			})
			local document = parse("{ a }")
			local rootValue = {
				a = {
					b = "c",
				},
			}
			local result = executeSync({
				schema = schema,
				document = document,
				rootValue = rootValue,
			})

			expect(result).toEqual({
				data = { a = {} },
			})
		end)

		it("does not include illegal fields in output", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Q",
					fields = {
						a = { type = GraphQLString },
					},
				}),
			})
			local document = parse("{ thisIsIllegalDoNotIncludeMe }")
			local result = executeSync({
				schema = schema,
				document = document,
			})

			expect(result).toEqual({ data = {} })
		end)

		it("does not include arguments that were not set", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Type",
					fields = {
						field = {
							type = GraphQLString,
							resolve = function(_source, args)
								return inspect(args)
							end,
							args = {
								a = { type = GraphQLBoolean },
								b = { type = GraphQLBoolean },
								c = { type = GraphQLBoolean },
								d = { type = GraphQLInt },
								e = { type = GraphQLInt },
							},
						},
					},
				}),
			})
			local document = parse("{ field(a: true, c: false, e: 0) }")
			local result = executeSync({
				schema = schema,
				document = document,
			})

			expect(result).toEqual({
				data = {
					field = "{ a: true, c: false, e: 0 }",
				},
			})
		end)

		it("fails when an isTypeOf check is not met", function()
			local Special = {}
			local SpecialMetatable = { __index = Special }

			function Special.new(value)
				local self = setmetatable({}, SpecialMetatable)

				self.value = value
				return self
			end

			local NotSpecial = {}
			local NotSpecialMetatable = { __index = NotSpecial }

			function NotSpecial.new(value)
				local self = setmetatable({}, NotSpecialMetatable)

				self.value = value
				return self
			end

			local SpecialType = GraphQLObjectType.new({
				name = "SpecialType",
				isTypeOf = function(self, obj, context)
					local result = instanceof(obj, Special)
					return (function()
						if context and context.async then
							return Promise.resolve(result)
						end

						return result
					end)()
				end,
				fields = {
					value = { type = GraphQLString },
				},
			})
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {
						specials = {
							type = GraphQLList.new(SpecialType),
						},
					},
				}),
			})
			local document = parse("{ specials { value } }")
			local rootValue = {
				specials = {
					Special.new("foo"),
					NotSpecial.new("bar"),
				},
			}
			local result = executeSync({
				schema = schema,
				document = document,
				rootValue = rootValue,
			})

			--[[
			--  ROBLOX deviation: .to.deep.equal matcher equates to jest's toMatchObject
			--]]
			jestExpect(result).toMatchObject({
				data = {
					specials = { { value = "foo" }, NULL },
				},
				errors = {
					{
						message = 'Expected value of type "SpecialType" but got: { value: "bar" }.',
						locations = { { line = 1, column = 3 } },
						-- ROBLOX deviation: adjusted for Lua's 1-based indexing
						path = { "specials", 2 },
					},
				},
			})

			local contextValue = { async = true }
			local asyncResult = execute({
				schema = schema,
				document = document,
				rootValue = rootValue,
				contextValue = contextValue,
			}):expect()

			-- ROBLOX deviation: helper function
			local function enumerableOnly(err_)
				return HttpService:JSONDecode(inspect(err_))
			end
			-- ROBLOX deviation: upstream only compares enumerable properties
			expect(Array.map(asyncResult.errors, enumerableOnly)).toEqual(
				Array.map(result.errors, enumerableOnly),
				true
			)
			-- ROBLOX deviation: errors have been already verified
			asyncResult.errors = nil
			result.errors = nil
			expect(asyncResult).toEqual(result)
		end)

		it("fails when serialize of custom scalar does not return a value", function()
			local customScalar = GraphQLScalarType.new({
				name = "CustomScalar",
				serialize = function()
					--[[ returns nothing ]]
				end,
			})
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {
						customScalar = {
							type = customScalar,
							resolve = function()
								return "CUSTOM_VALUE"
							end,
						},
					},
				}),
			})
			local result = executeSync({
				schema = schema,
				document = parse("{ customScalar }"),
			})

			--[[
			--  ROBLOX deviation: .to.deep.equal matcher equates to jest's toMatchObject
			--]]
			jestExpect(result).toMatchObject({
				data = { customScalar = NULL },
				errors = {
					{
						message = 'Expected a value of type "CustomScalar" but received: "CUSTOM_VALUE"',
						locations = { { line = 1, column = 3 } },
						path = { "customScalar" },
					},
				},
			})
		end)

		it("executes ignoring invalid non-executable definitions", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {
						foo = { type = GraphQLString },
					},
				}),
			})
			local document = parse([[

      { foo }

      type Query { bar: String }
    ]])
			local result = executeSync({
				schema = schema,
				document = document,
			})

			expect(result).toEqual({
				data = { foo = NULL },
			})
		end)

		it("uses a custom field resolver", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {
						foo = { type = GraphQLString },
					},
				}),
			})
			local document = parse("{ foo }")
			local result = executeSync({
				schema = schema,
				document = document,
				fieldResolver = function(_source, _args, _context, info)
					-- For the purposes of test, just return the name of the field!
					return info.fieldName
				end,
			})

			expect(result).toEqual({
				data = {
					foo = "foo",
				},
			})
		end)

		it("uses a custom type resolver", function()
			local document = parse("{ foo { bar } }")
			local fooInterface = GraphQLInterfaceType.new({
				name = "FooInterface",
				fields = {
					bar = { type = GraphQLString },
				},
			})
			local fooObject = GraphQLObjectType.new({
				name = "FooObject",
				interfaces = { fooInterface },
				fields = {
					bar = { type = GraphQLString },
				},
			})
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {
						foo = { type = fooInterface },
					},
				}),
				types = { fooObject },
			})
			local rootValue = {
				foo = {
					bar = "bar",
				},
			}
			local possibleTypes
			local result = executeSync({
				schema = schema,
				document = document,
				rootValue = rootValue,
				typeResolver = function(_source, _context, info, abstractType)
					-- Resolver should be able to figure out all possible types on its own
					possibleTypes = info.schema:getPossibleTypes(abstractType)

					return "FooObject"
				end,
			})

			expect(result).toEqual({
				data = {
					foo = {
						bar = "bar",
					},
				},
			})
			expect(possibleTypes).toEqual({ fooObject })
		end)
	end)
end

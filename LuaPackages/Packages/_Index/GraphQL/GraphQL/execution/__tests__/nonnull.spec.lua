--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/execution/__tests__/nonnull-test.js

return function()
	local executionWorkspace = script.Parent.Parent
	local srcWorkspace = executionWorkspace.Parent
	local Packages = srcWorkspace.Parent

	local LuauPolyfill = require(Packages.LuauPolyfill)
	local Error = LuauPolyfill.Error
	local Object = LuauPolyfill.Object

	local NULL = require(srcWorkspace.luaUtils.null)
	local isNotNillish = require(srcWorkspace.luaUtils.isNillish).isNotNillish
	local Promise = require(Packages.Promise)
	local HttpService = game:GetService("HttpService")
	local inspect = require(srcWorkspace.jsutils.inspect).inspect

	local parse = require(srcWorkspace.language.parser).parse

	local GraphQLSchema = require(srcWorkspace.type.schema).GraphQLSchema
	local GraphQLString = require(srcWorkspace.type.scalars).GraphQLString
	local definitionModule = require(srcWorkspace.type.definition)
	local GraphQLNonNull = definitionModule.GraphQLNonNull
	local GraphQLObjectType = definitionModule.GraphQLObjectType

	local buildSchema = require(srcWorkspace.utilities.buildASTSchema).buildSchema

	local executeModule = require(script.Parent.Parent.execute)
	local execute = executeModule.execute
	local executeSync = executeModule.executeSync

	-- ROBLOX deviation: predefine functions
	local executeQuery
	local patch
	local patchData
	local executeSyncAndAsync

	local syncError = Error.new("sync")
	local syncNonNullError = Error.new("syncNonNull")
	local promiseError = Error.new("promise")
	local promiseNonNullError = Error.new("promiseNonNull")

	local throwingData
	throwingData = {
		sync = function()
			error(syncError)
		end,
		syncNonNull = function()
			error(syncNonNullError)
		end,
		promise = function()
			return Promise.new(function()
				error(promiseError)
			end)
		end,
		promiseNonNull = function()
			return Promise.new(function()
				error(promiseNonNullError)
			end)
		end,
		syncNest = function()
			return throwingData
		end,
		syncNonNullNest = function()
			return throwingData
		end,
		promiseNest = function()
			return Promise.new(function(resolve)
				resolve(throwingData)
			end)
		end,
		promiseNonNullNest = function()
			return Promise.new(function(resolve)
				resolve(throwingData)
			end)
		end,
	}

	local nullingData
	nullingData = {
		sync = function()
			return NULL
		end,
		syncNonNull = function()
			return NULL
		end,
		promise = function()
			return Promise.new(function(resolve)
				resolve(NULL)
			end)
		end,
		promiseNonNull = function()
			return Promise.new(function(resolve)
				resolve(NULL)
			end)
		end,
		syncNest = function()
			return nullingData
		end,
		syncNonNullNest = function()
			return nullingData
		end,
		promiseNest = function()
			return Promise.new(function(resolve)
				resolve(nullingData)
			end)
		end,
		promiseNonNullNest = function()
			return Promise.new(function(resolve)
				resolve(nullingData)
			end)
		end,
	}
	local schema = buildSchema([[

  type DataType {
    sync: String
    syncNonNull: String!
    promise: String
    promiseNonNull: String!
    syncNest: DataType
    syncNonNullNest: DataType!
    promiseNest: DataType
    promiseNonNullNest: DataType!
  }

  schema {
    query: DataType
  }
]])

	function executeQuery(query: string, rootValue: any)
		return execute({
			schema = schema,
			document = parse(query),
			rootValue = rootValue,
		})
	end

	function patch(str)
		-- ROBLOX deviation: no regexp in Lua
		return str
			:gsub("([^%w_])sync([^%w_])", "%1promise%2")
			:gsub("([^%w_])syncNonNull([^%w_])", "%1promiseNonNull%2")
			:gsub("^sync([^%w_])", "promise%1")
			:gsub("^syncNonNull([^%w_])", "promiseNonNull%1")
			:gsub("([^%w_])sync$", "%1promise")
			:gsub("([^%w_])syncNonNull$)", "%1promiseNonNull")
			:gsub("^sync$", "promise")
			:gsub("^syncNonNull$", "promiseNonNull%2")
	end

	-- avoids also doing any nests
	function patchData(data)
		--[[
            ROBLOX deviation: in order to preserve NULL's we need to operate on tables and not convert to and from string
            original code:
            return JSON.parse(patch(JSON.stringify(data)));
        ]]
		local patched = Object.assign({}, data, {
			data = isNotNillish(data.data) and Object.assign({}, data.data, {
				promise = data.data.sync,
				promiseNonNull = data.data.syncNonNull,
			}) or data.data,
			errors = data.errors and HttpService:JSONDecode(patch(inspect(data.errors))),
		})
		if isNotNillish(patched.data) then
			patched.data.sync = nil
			patched.data.syncNonNull = nil
		end
		return patched
	end

	function executeSyncAndAsync(expect_, query, rootValue)
		local syncResult = executeSync({
			schema = schema,
			document = parse(query),
			rootValue = rootValue,
		})

		local patchedQuery = patch(query)
		return execute({
			schema = schema,
			document = parse(patchedQuery),
			rootValue = rootValue,
		}):andThen(function(asyncResult)
			local data = patchData(syncResult)
			if asyncResult.errors then
				expect_(asyncResult.errors).toArrayEqual(data.errors, true)
			else
				expect(asyncResult.errors).to.equal(data.errors)
			end

			-- ROBLOX deviation: errors have been already verified
			asyncResult.errors = nil
			data.errors = nil
			expect_(asyncResult).toEqual(data)
			return syncResult
		end)
	end

	describe("Execute: handles non-nullable types", function()
		describe("nulls a nullable field", function()
			local query = [[

      {
        sync
      }
    ]]

			it("that returns null", function()
				local result = executeSyncAndAsync(expect, query, nullingData):expect()

				expect(result).toEqual({
					data = { sync = NULL },
				})
			end)

			it("that throws", function()
				local result = executeSyncAndAsync(expect, query, throwingData):expect()
				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toHaveSameMembers({ "data", "errors" })
				expect(result.data).toEqual({ sync = NULL })
				expect(result.errors).toArrayEqual({
					{
						message = syncError.message,
						path = {
							"sync",
						},
						locations = {
							{
								line = 3,
								column = 9,
							},
						},
					},
				}, true)
			end)
		end)

		describe("nulls a returned object that contains a non-nullable field", function()
			local query = [[

      {
        syncNest {
          syncNonNull,
        }
      }
    ]]

			it("that returns null", function()
				local result = executeSyncAndAsync(expect, query, nullingData):expect()

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toHaveSameMembers({ "data", "errors" })
				expect(result.data).toEqual({ syncNest = NULL })
				expect(result.errors).toArrayEqual({
					{
						message = "Cannot return null for non-nullable field DataType.syncNonNull.",
						path = {
							"syncNest",
							"syncNonNull",
						},
						locations = {
							{
								line = 4,
								column = 11,
							},
						},
					},
				}, true)
			end)

			it("that throws", function()
				local result = executeSyncAndAsync(expect, query, throwingData):expect()

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toHaveSameMembers({ "data", "errors" })
				expect(result.data).toEqual({ syncNest = NULL })
				expect(result.errors).toArrayEqual({
					{
						message = syncNonNullError.message,
						path = {
							"syncNest",
							"syncNonNull",
						},
						locations = {
							{
								line = 4,
								column = 11,
							},
						},
					},
				}, true)
			end)
		end)

		describe("nulls a complex tree of nullable fields, each", function()
			local query = [[

      {
        syncNest {
          sync
          promise
          syncNest { sync promise }
          promiseNest { sync promise }
        }
        promiseNest {
          sync
          promise
          syncNest { sync promise }
          promiseNest { sync promise }
        }
      }
    ]]
			local data = {
				syncNest = {
					sync = NULL,
					promise = NULL,
					syncNest = {
						sync = NULL,
						promise = NULL,
					},
					promiseNest = {
						sync = NULL,
						promise = NULL,
					},
				},
				promiseNest = {
					sync = NULL,
					promise = NULL,
					syncNest = {
						sync = NULL,
						promise = NULL,
					},
					promiseNest = {
						sync = NULL,
						promise = NULL,
					},
				},
			}

			it("that returns null", function()
				local result = executeQuery(query, nullingData):expect()
				expect(result).toEqual({ data = data })
			end)

			it("that throws", function()
				local result = executeQuery(query, throwingData):expect()

				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				expect(Object.keys(result)).toHaveSameMembers({ "data", "errors" })
				expect(result.data).toEqual(data)
				-- ROBLOX deviation: order of error messages not preserved because data is in table
				expect(result.errors).toHaveSameMembers({
					{
						message = syncError.message,
						path = {
							"syncNest",
							"sync",
						},
						locations = {
							{
								line = 4,
								column = 11,
							},
						},
					},
					{
						message = syncError.message,
						path = {
							"syncNest",
							"syncNest",
							"sync",
						},
						locations = {
							{
								line = 6,
								column = 22,
							},
						},
					},
					{
						message = syncError.message,
						path = {
							"syncNest",
							"promiseNest",
							"sync",
						},
						locations = {
							{
								line = 7,
								column = 25,
							},
						},
					},
					{
						message = syncError.message,
						path = {
							"promiseNest",
							"sync",
						},
						locations = {
							{
								line = 10,
								column = 11,
							},
						},
					},
					{
						message = syncError.message,
						path = {
							"promiseNest",
							"syncNest",
							"sync",
						},
						locations = {
							{
								line = 12,
								column = 22,
							},
						},
					},
					{
						message = promiseError.message,
						path = {
							"syncNest",
							"promise",
						},
						locations = {
							{
								line = 5,
								column = 11,
							},
						},
					},
					{
						message = promiseError.message,
						path = {
							"syncNest",
							"syncNest",
							"promise",
						},
						locations = {
							{
								line = 6,
								column = 27,
							},
						},
					},
					{
						message = syncError.message,
						path = {
							"promiseNest",
							"promiseNest",
							"sync",
						},
						locations = {
							{
								line = 13,
								column = 25,
							},
						},
					},
					{
						message = promiseError.message,
						path = {
							"syncNest",
							"promiseNest",
							"promise",
						},
						locations = {
							{
								line = 7,
								column = 30,
							},
						},
					},
					{
						message = promiseError.message,
						path = {
							"promiseNest",
							"promise",
						},
						locations = {
							{
								line = 11,
								column = 11,
							},
						},
					},
					{
						message = promiseError.message,
						path = {
							"promiseNest",
							"syncNest",
							"promise",
						},
						locations = {
							{
								line = 12,
								column = 27,
							},
						},
					},
					{
						message = promiseError.message,
						path = {
							"promiseNest",
							"promiseNest",
							"promise",
						},
						locations = {
							{
								line = 13,
								column = 30,
							},
						},
					},
				}, true)
			end)
		end)

		describe(
			"nulls the first nullable object after a field in a long chain of non-null fields",
			function()
				local query = [[

      {
        syncNest {
          syncNonNullNest {
            promiseNonNullNest {
              syncNonNullNest {
                promiseNonNullNest {
                  syncNonNull
                }
              }
            }
          }
        }
        promiseNest {
          syncNonNullNest {
            promiseNonNullNest {
              syncNonNullNest {
                promiseNonNullNest {
                  syncNonNull
                }
              }
            }
          }
        }
        anotherNest: syncNest {
          syncNonNullNest {
            promiseNonNullNest {
              syncNonNullNest {
                promiseNonNullNest {
                  promiseNonNull
                }
              }
            }
          }
        }
        anotherPromiseNest: promiseNest {
          syncNonNullNest {
            promiseNonNullNest {
              syncNonNullNest {
                promiseNonNullNest {
                  promiseNonNull
                }
              }
            }
          }
        }
      }
    ]]
				local data = {
					syncNest = NULL,
					promiseNest = NULL,
					anotherNest = NULL,
					anotherPromiseNest = NULL,
				}

				it("that returns null", function()
					local result = executeQuery(query, nullingData):expect()

					--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
					expect(Object.keys(result)).toHaveSameMembers({ "data", "errors" })
					expect(result.data).toEqual(data)
					expect(result.errors).toArrayEqual({
						{
							message = "Cannot return null for non-nullable field DataType.syncNonNull.",
							path = {
								"syncNest",
								"syncNonNullNest",
								"promiseNonNullNest",
								"syncNonNullNest",
								"promiseNonNullNest",
								"syncNonNull",
							},
							locations = {
								{
									line = 8,
									column = 19,
								},
							},
						},
						{
							message = "Cannot return null for non-nullable field DataType.syncNonNull.",
							path = {
								"promiseNest",
								"syncNonNullNest",
								"promiseNonNullNest",
								"syncNonNullNest",
								"promiseNonNullNest",
								"syncNonNull",
							},
							locations = {
								{
									line = 19,
									column = 19,
								},
							},
						},
						{
							message = "Cannot return null for non-nullable field DataType.promiseNonNull.",
							path = {
								"anotherNest",
								"syncNonNullNest",
								"promiseNonNullNest",
								"syncNonNullNest",
								"promiseNonNullNest",
								"promiseNonNull",
							},
							locations = {
								{
									line = 30,
									column = 19,
								},
							},
						},
						{
							message = "Cannot return null for non-nullable field DataType.promiseNonNull.",
							path = {
								"anotherPromiseNest",
								"syncNonNullNest",
								"promiseNonNullNest",
								"syncNonNullNest",
								"promiseNonNullNest",
								"promiseNonNull",
							},
							locations = {
								{
									line = 41,
									column = 19,
								},
							},
						},
					}, true)
				end)
				it("that throws", function()
					local result = executeQuery(query, throwingData):expect()

					--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
					expect(Object.keys(result)).toHaveSameMembers({ "data", "errors" })
					expect(result.data).toEqual(data)
					expect(result.errors).toArrayEqual({
						{
							message = syncNonNullError.message,
							path = {
								"syncNest",
								"syncNonNullNest",
								"promiseNonNullNest",
								"syncNonNullNest",
								"promiseNonNullNest",
								"syncNonNull",
							},
							locations = {
								{
									line = 8,
									column = 19,
								},
							},
						},
						{
							message = syncNonNullError.message,
							path = {
								"promiseNest",
								"syncNonNullNest",
								"promiseNonNullNest",
								"syncNonNullNest",
								"promiseNonNullNest",
								"syncNonNull",
							},
							locations = {
								{
									line = 19,
									column = 19,
								},
							},
						},
						{
							message = promiseNonNullError.message,
							path = {
								"anotherNest",
								"syncNonNullNest",
								"promiseNonNullNest",
								"syncNonNullNest",
								"promiseNonNullNest",
								"promiseNonNull",
							},
							locations = {
								{
									line = 30,
									column = 19,
								},
							},
						},
						{
							message = promiseNonNullError.message,
							path = {
								"anotherPromiseNest",
								"syncNonNullNest",
								"promiseNonNullNest",
								"syncNonNullNest",
								"promiseNonNullNest",
								"promiseNonNull",
							},
							locations = {
								{
									line = 41,
									column = 19,
								},
							},
						},
					}, true)
				end)
			end
		)

		describe("nulls the top level if non-nullable field", function()
			local query = [[

      {
        syncNonNull
      }
    ]]

			it("that returns null", function()
				local result = executeSyncAndAsync(expect, query, nullingData):expect()

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toHaveSameMembers({ "data", "errors" })
				expect(result.data).toEqual(NULL)
				expect(result.errors).toArrayEqual({
					{
						message = "Cannot return null for non-nullable field DataType.syncNonNull.",
						path = {
							"syncNonNull",
						},
						locations = {
							{
								line = 3,
								column = 9,
							},
						},
					},
				}, true)
			end)

			it("that throws", function()
				local result = executeSyncAndAsync(expect, query, throwingData):expect()
				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toHaveSameMembers({ "data", "errors" })
				expect(result.data).toEqual(NULL)
				expect(result.errors).toArrayEqual({
					{
						message = syncNonNullError.message,
						path = {
							"syncNonNull",
						},
						locations = {
							{
								line = 3,
								column = 9,
							},
						},
					},
				}, true)
			end)
		end)

		describe("Handles non-null argument", function()
			local schemaWithNonNullArg = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {
						withNonNullArg = {
							type = GraphQLString,
							args = {
								cannotBeNull = {
									type = GraphQLNonNull.new(GraphQLString),
								},
							},
							resolve = function(_, args)
								return "Passed: " .. tostring(args.cannotBeNull)
							end,
						},
					},
				}),
			})

			it("succeeds when passed non-null literal value", function()
				local result = executeSync({
					schema = schemaWithNonNullArg,
					document = parse([[

          query {
            withNonNullArg (cannotBeNull: "literal value")
          }
        ]]),
				})

				expect(result).toEqual({
					data = {
						withNonNullArg = "Passed: literal value",
					},
				})
			end)

			it("succeeds when passed non-null variable value", function()
				local result = executeSync({
					schema = schemaWithNonNullArg,
					document = parse([[

          query ($testVar: String!) {
            withNonNullArg (cannotBeNull: $testVar)
          }
        ]]),
					variableValues = {
						testVar = "variable value",
					},
				})

				expect(result).toEqual({
					data = {
						withNonNullArg = "Passed: variable value",
					},
				})
			end)

			it("succeeds when missing variable has default value", function()
				local result = executeSync({
					schema = schemaWithNonNullArg,
					document = parse([[

          query ($testVar: String = "default value") {
            withNonNullArg (cannotBeNull: $testVar)
          }
        ]]),
					variableValues = {
						-- Intentionally missing variable
					},
				})

				expect(result).toEqual({
					data = {
						withNonNullArg = "Passed: default value",
					},
				})
			end)

			it("field error when missing non-null arg", function()
				-- Note: validation should identify this issue first (missing args rule)
				-- however execution should still protect against this.
				local result = executeSync({
					schema = schemaWithNonNullArg,
					document = parse([[

          query {
            withNonNullArg
          }
        ]]),
				})

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toHaveSameMembers({ "data", "errors" })
				expect(result.data).toEqual({ withNonNullArg = NULL })
				expect(result.errors).toArrayEqual({
					{
						message = 'Argument "cannotBeNull" of required type "String!" was not provided.',
						locations = {
							{
								line = 3,
								column = 13,
							},
						},
						path = {
							"withNonNullArg",
						},
					},
				}, true)
			end)

			it("field error when non-null arg provided null", function()
				-- Note: validation should identify this issue first (values of correct
				--       type rule) however execution should still protect against this.
				local result = executeSync({
					schema = schemaWithNonNullArg,
					document = parse([[

          query {
            withNonNullArg(cannotBeNull: null)
          }
        ]]),
				})

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toHaveSameMembers({ "data", "errors" })
				expect(result.data).toEqual({ withNonNullArg = NULL })
				expect(result.errors).toArrayEqual({
					{
						message = 'Argument "cannotBeNull" of non-null type "String!" must not be null.',
						locations = {
							{
								line = 3,
								column = 42,
							},
						},
						path = {
							"withNonNullArg",
						},
					},
				}, true)
			end)

			it("field error when non-null arg not provided variable value", function()
				-- Note: validation should identify this issue first (variables in allowed
				--       position rule) however execution should still protect against this.
				local result = executeSync({
					schema = schemaWithNonNullArg,
					document = parse([[

          query ($testVar: String) {
            withNonNullArg(cannotBeNull: $testVar)
          }
        ]]),
					variableValues = {
						-- Intentionally missing variable
					},
				})

				--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
				expect(Object.keys(result)).toHaveSameMembers({ "data", "errors" })
				expect(result.data).toEqual({ withNonNullArg = NULL })
				expect(result.errors).toArrayEqual({
					{
						message = 'Argument "cannotBeNull" of required type "String!" was provided the variable "$testVar" which was not provided a runtime value.',
						locations = {
							{
								line = 3,
								column = 42,
							},
						},
						path = {
							"withNonNullArg",
						},
					},
				}, true)
			end)

			it(
				"field error when non-null arg provided variable with explicit null value",
				function()
					local result = executeSync({
						schema = schemaWithNonNullArg,
						document = parse([[

          query ($testVar: String = "default value") {
            withNonNullArg (cannotBeNull: $testVar)
          }
        ]]),
						variableValues = { testVar = NULL },
					})

					--[[
				--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
				--]]
					expect(Object.keys(result)).toHaveSameMembers({ "data", "errors" })
					expect(result.data).toEqual({ withNonNullArg = NULL })
					expect(result.errors).toArrayEqual({
						{
							message = 'Argument "cannotBeNull" of non-null type "String!" must not be null.',
							locations = {
								{
									line = 3,
									column = 43,
								},
							},
							path = {
								"withNonNullArg",
							},
						},
					}, true)
				end
			)
		end)
	end)
end

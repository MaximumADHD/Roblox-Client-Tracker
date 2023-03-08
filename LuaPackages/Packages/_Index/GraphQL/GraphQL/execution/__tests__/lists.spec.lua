--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/execution/__tests__/lists-test.js

local srcWorkspace = script.Parent.Parent.Parent
local luaUtilsWorkspace = srcWorkspace.luaUtils
local Packages = srcWorkspace.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
local Set = LuauPolyfill.Set
local instanceof = LuauPolyfill.instanceof

local Promise = require(Packages.Promise)
local NULL = require(luaUtilsWorkspace.null)

local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect

local parse = require(srcWorkspace.language.parser).parse

local buildSchema = require(srcWorkspace.utilities.buildASTSchema).buildSchema

local executeModule = require(script.Parent.Parent.execute)
local execute = executeModule.execute
local executeSync = executeModule.executeSync

return function()
	describe("Execute: Accepts any iterable as list value", function()
		local function complete(rootValue)
			return executeSync({
				schema = buildSchema("type Query { listField: [String] }"),
				document = parse("{ listField }"),
				rootValue = rootValue,
			})
		end

		it("Accepts a Set as a List value", function()
			local listField = Set.new({
				"apple",
				"banana",
				"apple",
				"coconut",
			})

			expect(complete({ listField = listField })).toEqual({
				data = {
					listField = {
						"apple",
						"banana",
						"coconut",
					},
				},
			})
		end)

		it("Accepts an Generator function as a List value", function()
			-- ROBLOX deviation: generator not supported
			local function listField()
				return { "one", 2, true }
			end

			expect(complete({ listField = listField })).toEqual({
				data = {
					listField = {
						"one",
						"2",
						"true",
					},
				},
			})
		end)

		it("Accepts function arguments as a List value", function()
			local function getArgs(...)
				-- ROBLOX deviation: arguments
				return { ... }
			end

			local listField = getArgs("one", "two")

			expect(complete({ listField = listField })).toEqual({
				data = {
					listField = {
						"one",
						"two",
					},
				},
			})
		end)

		it("Does not accept (Iterable) String-literal as a List value", function()
			local listField = "Singular"

			jestExpect(complete({ listField = listField })).toMatchObject({
				data = { listField = NULL },
				errors = {
					{
						message = 'Expected Iterable, but did not find one for field "Query.listField".',
						locations = {
							{
								line = 1,
								column = 3,
							},
						},
						path = {
							"listField",
						},
					},
				},
			})
		end)
	end)

	describe("Execute: Handles list nullability", function()
		-- ROBLOX deviation: async function
		local complete = function(args)
			local listField, as = args.listField, args.as
			local schema = buildSchema(("type Query { listField: %s }"):format(as))
			local document = parse("{ listField }")

			-- ROBLOX deviation predeclare functions
			local function executeQuery(listValue)
				return execute({
					schema = schema,
					document = document,
					rootValue = { listField = listValue },
				})
			end

			local function promisify(value: any)
				return instanceof(value, Error) and Promise.reject(value) or Promise.resolve(value)
			end

			-- ROBLOX deviation: helper function
			local function removeStack(results)
				if results.errors ~= nil then
					for _, err in ipairs(results.errors) do
						err.stack = nil
						err.__stack = nil
						if err.originalError ~= nil then
							err.originalError.stack = nil
							err.originalError.__stack = nil
						end
					end
				end
				return results
			end

			-- ROBLOX deviation: stack trace is actually different for result.errors and validationErrors so we're removing it for comparison purposes
			local result = removeStack(executeQuery(listField))

			-- Promise<Array<T>> === Array<T>
			expect(removeStack(executeQuery(promisify(listField)):expect())).toEqual(result)

			if listField ~= NULL and Array.isArray(listField) then
				local listOfPromises = Array.map(listField, promisify)

				-- Array<Promise<T>> === Array<T>
				expect(removeStack(executeQuery(listOfPromises):expect())).toEqual(result)

				-- Promise<Array<Promise<T>>> === Array<T>
				expect(removeStack(executeQuery(promisify(listOfPromises)):expect())).toEqual(
					result
				)
			end

			-- ROBLOX deviation: wrap result in promise
			return Promise.new(function(resolve)
				resolve(result)
			end)
		end

		it("Contains values", function()
			local listField = { 1, 2 }

			expect(complete({ listField = listField, as = "[Int]" }):expect()).toEqual({
				data = {
					listField = { 1, 2 },
				},
			})

			expect(complete({ listField = listField, as = "[Int]!" }):expect()).toEqual({
				data = {
					listField = { 1, 2 },
				},
			})

			expect(complete({ listField = listField, as = "[Int!]" }):expect()).toEqual({
				data = {
					listField = { 1, 2 },
				},
			})

			expect(complete({ listField = listField, as = "[Int!]!" }):expect()).toEqual({
				data = {
					listField = { 1, 2 },
				},
			})
		end)

		-- ROBLOX deviation START: add a test to make sure execute handles a list of promises and values
		it("Contains mix of promise and value", function()
			local schema = buildSchema("type Query { listField: [Int] }")
			local document = parse("{ listField }")

			local result = execute({
				schema = schema,
				document = document,
				rootValue = { listField = { 1, Promise.resolve(2) } },
			}):expect()

			expect(result).toEqual({
				data = {
					listField = { 1, 2 },
				},
			})
		end)
		-- ROBLOX deviation END

		it("Contains null", function()
			local listField = { 1, NULL, 2 }
			local errors = {
				{
					message = "Cannot return null for non-nullable field Query.listField.",
					locations = {
						{
							line = 1,
							column = 3,
						},
					},
					path = {
						"listField",
						2,
					},
				},
			}

			jestExpect(complete({
				listField = listField,
				as = "[Int]",
			}):expect()).toMatchObject({
				data = {
					listField = { 1, NULL, 2 },
				},
			})

			jestExpect(complete({
				listField = listField,
				as = "[Int]!",
			}):expect()).toMatchObject({
				data = {
					listField = { 1, NULL, 2 },
				},
			})

			jestExpect(complete({
				listField = listField,
				as = "[Int!]",
			}):expect()).toMatchObject({
				data = { listField = NULL },
				errors = errors,
			})

			jestExpect(complete({
				listField = listField,
				as = "[Int!]!",
			}):expect()).toMatchObject({
				data = NULL,
				errors = errors,
			})
		end)

		it("Returns null", function()
			local listField = NULL
			local errors = {
				{
					message = "Cannot return null for non-nullable field Query.listField.",
					locations = {
						{
							line = 1,
							column = 3,
						},
					},
					path = {
						"listField",
					},
				},
			}

			jestExpect(complete({
				listField = listField,
				as = "[Int]",
			}):expect()).toMatchObject({
				data = { listField = NULL },
			})

			jestExpect(complete({
				listField = listField,
				as = "[Int]!",
			}):expect()).toMatchObject({
				data = NULL,
				errors = errors,
			})

			jestExpect(complete({
				listField = listField,
				as = "[Int!]",
			}):expect()).toMatchObject({
				data = { listField = NULL },
			})

			jestExpect(complete({
				listField = listField,
				as = "[Int!]!",
			}):expect()).toMatchObject({
				data = NULL,
				errors = errors,
			})
		end)

		it("Contains error", function()
			local listField = {
				1,
				Error.new("bad"),
				2,
			}
			local errors = {
				{
					message = "bad",
					locations = {
						{
							line = 1,
							column = 3,
						},
					},
					path = {
						"listField",
						2,
					},
				},
			}

			jestExpect(complete({
				listField = listField,
				as = "[Int]",
			}):expect()).toMatchObject({
				data = {
					listField = { 1, NULL, 2 },
				},
				errors = errors,
			})

			jestExpect(complete({
				listField = listField,
				as = "[Int]!",
			}):expect()).toMatchObject({
				data = {
					listField = { 1, NULL, 2 },
				},
				errors = errors,
			})

			jestExpect(complete({
				listField = listField,
				as = "[Int!]",
			}):expect()).toMatchObject({
				data = { listField = NULL },
				errors = errors,
			})

			jestExpect(complete({
				listField = listField,
				as = "[Int!]!",
			}):expect()).toMatchObject({
				data = NULL,
				errors = errors,
			})
		end)

		it("Results in error", function()
			local listField = Error.new("bad")
			local errors = {
				{
					message = "bad",
					locations = {
						{
							line = 1,
							column = 3,
						},
					},
					path = {
						"listField",
					},
				},
			}

			expect(complete({
				listField = listField,
				as = "[Int]",
			}):expect()).toObjectContain({
				data = { listField = nil },
				errors = errors,
			})

			expect(complete({
				listField = listField,
				as = "[Int]!",
			}):expect()).toObjectContain({
				data = NULL,
				errors = errors,
			})

			expect(complete({
				listField = listField,
				as = "[Int!]",
			}):expect()).toObjectContain({
				data = { listField = NULL },
				errors = errors,
			})

			expect(complete({
				listField = listField,
				as = "[Int!]!",
			}):expect()).toObjectContain({
				data = NULL,
				errors = errors,
			})
		end)
	end)
end

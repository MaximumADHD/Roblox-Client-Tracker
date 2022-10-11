--upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/execution/__tests__/abstract-test.js

return function()
	local srcWorkspace = script.Parent.Parent.Parent
	local Packages = srcWorkspace.Parent

	local LuauPolyfill = require(Packages.LuauPolyfill)
	local Array = LuauPolyfill.Array
	local Error = LuauPolyfill.Error
	local Object = LuauPolyfill.Object
	local instanceof = LuauPolyfill.instanceof

	local inspect = require(srcWorkspace.jsutils.inspect).inspect
	local NULL = require(srcWorkspace.luaUtils.null)
	local coerceToPromise = require(srcWorkspace.luaUtils.coerceToPromise).coerceToPromise
	local Promise = require(Packages.Promise)
	local HttpService = game:GetService("HttpService")

	local parse = require(srcWorkspace.language.parser).parse

	local GraphQLSchema = require(srcWorkspace.type.schema).GraphQLSchema
	local scalarsModule = require(srcWorkspace.type.scalars)
	local GraphQLString = scalarsModule.GraphQLString
	local GraphQLBoolean = scalarsModule.GraphQLBoolean
	local definitionModule = require(srcWorkspace.type.definition)
	local GraphQLList = definitionModule.GraphQLList
	local GraphQLObjectType = definitionModule.GraphQLObjectType
	local GraphQLInterfaceType = definitionModule.GraphQLInterfaceType
	local GraphQLUnionType = definitionModule.GraphQLUnionType

	local buildSchema = require(srcWorkspace.utilities.buildASTSchema).buildSchema

	local executeModule = require(srcWorkspace.execution.execute)
	local executeSync = executeModule.executeSync
	local execute = executeModule.execute

	-- ROBLOX deviation: expect passed as argument because it only exists in describe block
	local executeQuery = function(expect_, args)
		local schema, query, rootValue = args.schema, args.query, args.rootValue
		local document = parse(query)
		local result = executeSync({
			schema = schema,
			document = document,
			rootValue = rootValue,
			contextValue = { async = false },
		})

		return coerceToPromise(execute({
			schema = schema,
			document = document,
			rootValue = rootValue,
			contextValue = { async = true },
		})):andThen(function(asyncResult)
			-- ROBLOX deviation: helper function
			local function enumerableOnly(err_)
				return HttpService:JSONDecode(inspect(err_))
			end
			-- ROBLOX deviation: create a copy of result as to remove result.errors for comparison sake below
			local syncResult = Object.assign({}, result)
			-- ROBLOX deviation: upstream only compares enumerable properties
			expect_(asyncResult.errors and Array.map(asyncResult.errors, enumerableOnly)).toEqual(
				syncResult.errors and Array.map(syncResult.errors, enumerableOnly)
			)
			-- ROBLOX deviation: errors have been already verified
			asyncResult.errors = nil
			syncResult.errors = nil
			expect_(syncResult).toEqual(asyncResult)

			return result
		end)
	end

	local Dog = {}
	Dog.__index = Dog

	function Dog.new(name, woofs)
		local self = {}

		self.name = name
		self.woofs = woofs
		return setmetatable(self, Dog)
	end

	local Cat = {}
	Cat.__index = Cat

	function Cat.new(name, meows)
		local self = {}

		self.name = name
		self.meows = meows
		return setmetatable(self, Cat)
	end

	describe("Execute: Handles execution of abstract types", function()
		it("isTypeOf used to resolve runtime type for Interface", function()
			local PetType = GraphQLInterfaceType.new({
				name = "Pet",
				fields = {
					name = { type = GraphQLString },
				},
			})
			local DogType = GraphQLObjectType.new({
				name = "Dog",
				interfaces = { PetType },
				isTypeOf = function(_self, obj, context)
					local isDog = instanceof(obj, Dog)

					return (function()
						if context.async then
							return Promise.resolve(isDog)
						end

						return isDog
					end)()
				end,
				fields = {
					name = { type = GraphQLString },
					woofs = { type = GraphQLBoolean },
				},
			})
			local CatType = GraphQLObjectType.new({
				name = "Cat",
				interfaces = { PetType },
				isTypeOf = function(_self, obj, context)
					local isCat = instanceof(obj, Cat)

					return (function()
						if context.async then
							return Promise.resolve(isCat)
						end

						return isCat
					end)()
				end,
				fields = {
					name = { type = GraphQLString },
					meows = { type = GraphQLBoolean },
				},
			})
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {
						pets = {
							type = GraphQLList.new(PetType),
							resolve = function()
								return {
									Dog.new("Odie", true),
									Cat.new("Garfield", false),
								}
							end,
						},
					},
				}),
				types = { CatType, DogType },
			})
			local query = [[

      {
        pets {
          name
          ... on Dog {
            woofs
          }
          ... on Cat {
            meows
          }
        }
      }
    ]]

			expect(executeQuery(expect, { schema = schema, query = query }):expect()).toEqual({
				data = {
					pets = {
						{
							name = "Odie",
							woofs = true,
						},
						{
							name = "Garfield",
							meows = false,
						},
					},
				},
			})
		end)

		it("isTypeOf can throw", function()
			local PetType = GraphQLInterfaceType.new({
				name = "Pet",
				fields = {
					name = { type = GraphQLString },
				},
			})

			local DogType = GraphQLObjectType.new({
				name = "Dog",
				interfaces = { PetType },
				isTypeOf = function(_self, _source, context)
					local error_ = Error.new("We are testing this error")

					if context.async then
						return Promise.reject(error_)
					end

					error(error_)
				end,
				fields = {
					name = { type = GraphQLString },
					woofs = { type = GraphQLBoolean },
				},
			})

			local CatType = GraphQLObjectType.new({
				name = "Cat",
				interfaces = { PetType },
				isTypeOf = nil,
				fields = {
					name = { type = GraphQLString },
					meows = { type = GraphQLBoolean },
				},
			})

			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {
						pets = {
							type = GraphQLList.new(PetType),
							resolve = function()
								return {
									Dog.new("Odie", true),
									Cat.new("Garfield", false),
								}
							end,
						},
					},
				}),
				types = { DogType, CatType },
			})

			local query = [[

      {
        pets {
          name
          ... on Dog {
            woofs
          }
          ... on Cat {
            meows
          }
        }
      }
    ]]

			local result = executeQuery(expect, {
				schema = schema,
				query = query,
			}):expect()
			--[[
			--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
			--]]
			expect(Object.keys(result)).toHaveSameMembers({ "errors", "data" })
			expect(result.data).toEqual({
				pets = { NULL, NULL },
			})
			expect(result.errors).toArrayEqual({
				{
					message = "We are testing this error",
					locations = {
						{
							line = 3,
							column = 9,
						},
					},
					path = {
						"pets",
						1,
					},
				},
				{
					message = "We are testing this error",
					locations = {
						{
							line = 3,
							column = 9,
						},
					},
					path = {
						"pets",
						2,
					},
				},
			}, true)
		end)

		it("isTypeOf used to resolve runtime type for Union", function()
			local DogType = GraphQLObjectType.new({
				name = "Dog",
				isTypeOf = function(_self, obj, context)
					local isDog = instanceof(obj, Dog)

					return (function()
						if context.async then
							return Promise.resolve(isDog)
						end

						return isDog
					end)()
				end,
				fields = {
					name = { type = GraphQLString },
					woofs = { type = GraphQLBoolean },
				},
			})
			local CatType = GraphQLObjectType.new({
				name = "Cat",
				isTypeOf = function(_self, obj, context)
					local isCat = instanceof(obj, Cat)

					return (function()
						if context.async then
							return Promise.resolve(isCat)
						end

						return isCat
					end)()
				end,
				fields = {
					name = { type = GraphQLString },
					meows = { type = GraphQLBoolean },
				},
			})
			local PetType = GraphQLUnionType.new({
				name = "Pet",
				types = { DogType, CatType },
			})
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {
						pets = {
							type = GraphQLList.new(PetType),
							resolve = function()
								return {
									Dog.new("Odie", true),
									Cat.new("Garfield", false),
								}
							end,
						},
					},
				}),
			})
			local query = [[{
		pets {
			... on Dog {
			name
			woofs
			}
			... on Cat {
			name
			meows
			}
		}
		}]]

			expect(executeQuery(expect, {
				schema = schema,
				query = query,
			}):expect()).toEqual({
				data = {
					pets = {
						{
							name = "Odie",
							woofs = true,
						},
						{
							name = "Garfield",
							meows = false,
						},
					},
				},
			})
		end)

		it("resolveType can throw", function()
			local PetType = GraphQLInterfaceType.new({
				name = "Pet",
				resolveType = function(_self, _source, context)
					local error_ = Error.new("We are testing this error")

					if context.async then
						return Promise.reject(error_)
					end

					error(error_)
				end,
				fields = {
					name = { type = GraphQLString },
				},
			})

			local DogType = GraphQLObjectType.new({
				name = "Dog",
				interfaces = { PetType },
				fields = {
					name = { type = GraphQLString },
					woofs = { type = GraphQLBoolean },
				},
			})

			local CatType = GraphQLObjectType.new({
				name = "Cat",
				interfaces = { PetType },
				fields = {
					name = { type = GraphQLString },
					meows = { type = GraphQLBoolean },
				},
			})

			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {
						pets = {
							type = GraphQLList.new(PetType),
							resolve = function()
								return {
									Dog.new("Odie", true),
									Cat.new("Garfield", false),
								}
							end,
						},
					},
				}),
				types = { CatType, DogType },
			})

			local query = [[

      {
        pets {
          name
          ... on Dog {
            woofs
          }
          ... on Cat {
            meows
          }
        }
      }
    ]]

			local result = executeQuery(expect, {
				schema = schema,
				query = query,
			}):expect()
			--[[
			--  ROBLOX deviation: .to.deep.equal matcher doesn't convert to .toEqual in this case as errors contain more fields than just message
			--]]
			expect(Object.keys(result)).toHaveSameMembers({ "errors", "data" })
			expect(result.data).toEqual({
				pets = { NULL, NULL },
			})
			expect(result.errors).toArrayEqual({
				{
					message = "We are testing this error",
					locations = {
						{
							line = 3,
							column = 9,
						},
					},
					path = {
						"pets",
						1,
					},
				},
				{
					message = "We are testing this error",
					locations = {
						{
							line = 3,
							column = 9,
						},
					},
					path = {
						"pets",
						2,
					},
				},
			}, true)
		end)

		it("resolve Union type using __typename on source object", function() -- Show Kyle
			local schema = buildSchema([[

      type Query {
        pets: [Pet]
      }

      union Pet = Cat | Dog

      type Cat {
        name: String
        meows: Boolean
      }

      type Dog {
        name: String
        woofs: Boolean
      }
    ]])

			local query = [[

      {
        pets {
          name
          ... on Dog {
            woofs
          }
          ... on Cat {
            meows
          }
        }
      }
    ]]

			local rootValue = {
				pets = {
					{
						__typename = "Dog",
						name = "Odie",
						woofs = true,
					},
					{
						__typename = "Cat",
						name = "Garfield",
						meows = false,
					},
				},
			}

			expect(executeQuery(expect, {
				schema = schema,
				query = query,
				rootValue = rootValue,
			}):expect()).toEqual({
				data = {
					pets = {
						{
							name = "Odie",
							woofs = true,
						},
						{
							name = "Garfield",
							meows = false,
						},
					},
				},
			})
		end)

		it("resolve Interface type using __typename on source object", function()
			local schema = buildSchema([[

      type Query {
        pets: [Pet]
      }

      interface Pet {
        name: String
        }

      type Cat implements Pet {
        name: String
        meows: Boolean
      }

      type Dog implements Pet {
        name: String
        woofs: Boolean
      }
    ]])

			local query = [[

      {
        pets {
          name
          ... on Dog {
            woofs
          }
          ... on Cat {
            meows
          }
        }
      }
    ]]

			local rootValue = {
				pets = {
					{
						__typename = "Dog",
						name = "Odie",
						woofs = true,
					},
					{
						__typename = "Cat",
						name = "Garfield",
						meows = false,
					},
				},
			}

			expect(executeQuery(expect, {
				schema = schema,
				query = query,
				rootValue = rootValue,
			}):expect()).toEqual({
				data = {
					pets = {
						{
							name = "Odie",
							woofs = true,
						},
						{
							name = "Garfield",
							meows = false,
						},
					},
				},
			})
		end)

		it("resolveType on Interface yields useful error", function()
			local schema = buildSchema([[

      type Query {
        pet: Pet
      }

      interface Pet {
        name: String
      }

      type Cat implements Pet {
        name: String
      }

      type Dog implements Pet {
        name: String
      }
    ]])

			local document = parse([[

      {
        pet {
          name
        }
      }
    ]])

			local function expectError(_ref)
				local forTypeName = _ref.forTypeName
				local rootValue = {
					pet = { __typename = forTypeName },
				}
				local result = executeSync({
					schema = schema,
					document = document,
					rootValue = rootValue,
				})

				return {
					toEqual = function(message)
						expect(result.data).toEqual({ pet = NULL })
						expect(result.errors).toArrayEqual({
							{
								message = message,
								locations = {
									{
										line = 3,
										column = 9,
									},
								},
								path = {
									"pet",
								},
							},
						}, true)
					end,
				}
			end

			expectError({ forTypeName = nil }).toEqual(
				'Abstract type "Pet" must resolve to an Object type at runtime for field "Query.pet". Either the "Pet" type should provide a "resolveType" function or each possible type should provide an "isTypeOf" function.'
			)
			expectError({
				forTypeName = "Human",
			}).toEqual(
				'Abstract type "Pet" was resolve to a type "Human" that does not exist inside schema.'
			)
			expectError({
				forTypeName = "String",
			}).toEqual('Abstract type "Pet" was resolve to a non-object type "String".')
			expectError({
				forTypeName = "__Schema",
			}).toEqual('Runtime Object type "__Schema" is not a possible type for "Pet".')

			-- FIXME: workaround since we can't inject resolveType into SDL
			schema:getType("Pet").resolveType = function()
				return {}
			end
			--[[
				ROBLOX deviation: "...at runtime for field \"Query.pet\" with value []" instead of "with a value { __typename: undefined }"
				because { key = nil } is an empty table in lua.
				This is because the result that gets produced is empty which cannot be pretty printed inside of ensureValidRuntimeType
				This isn't problematic, because lua consumers would have no need to actually pass { __typename= nil }
			]]
			expectError({ forTypeName = nil }).toEqual(
				'Abstract type "Pet" must resolve to an Object type at runtime for field "Query.pet" with value [], received "[]".'
			)

			-- FIXME: workaround since we can't inject resolveType into SDL
			schema:getType("Pet").resolveType = function()
				return schema:getType("Cat")
			end
			expectError({ forTypeName = nil }).toEqual(
				"Support for returning GraphQLObjectType from resolveType was removed in graphql-js@16.0.0 please return type name instead."
			)
		end)
	end)
end

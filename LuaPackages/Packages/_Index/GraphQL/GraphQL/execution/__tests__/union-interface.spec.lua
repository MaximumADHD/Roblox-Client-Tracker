--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/execution/__tests__/union-interface-test.js

return function()
	local executionWorkspace = script.Parent.Parent
	local srcWorkspace = executionWorkspace.Parent

	-- ROBLOX deviation: utilities
	local instanceOf = require(srcWorkspace.jsutils.instanceOf)
	local NULL = require(srcWorkspace.luaUtils.null)

	local invariant = require(srcWorkspace.jsutils.invariant).invariant

	local parse = require(srcWorkspace.language.parser).parse

	local GraphQLSchema = require(srcWorkspace.type.schema).GraphQLSchema
	local scalarsImport = require(srcWorkspace.type.scalars)
	local GraphQLString = scalarsImport.GraphQLString
	local GraphQLBoolean = scalarsImport.GraphQLBoolean
	local definitionImport = require(srcWorkspace.type.definition)
	local GraphQLList = definitionImport.GraphQLList
	local GraphQLUnionType = definitionImport.GraphQLUnionType
	local GraphQLObjectType = definitionImport.GraphQLObjectType
	local GraphQLInterfaceType = definitionImport.GraphQLInterfaceType

	local executeSync = require(executionWorkspace.execute).executeSync

	local Dog = {}
	local DogMetatable = { __index = Dog }
	function Dog.new(name, barks)
		local self = setmetatable({}, DogMetatable)
		self.name = name
		self.barks = barks
		self.progeny = {}
		return self
	end

	local Cat = {}
	local CatMetatable = { __index = Cat }
	function Cat.new(name, meows)
		local self = setmetatable({}, CatMetatable)
		self.name = name
		self.meows = meows
		self.progeny = {}
		return self
	end

	local Person = {}
	local PersonMetatable = { __index = Person }
	function Person.new(name, pets, friends)
		local self = setmetatable({}, PersonMetatable)
		self.name = name
		self.pets = pets
		self.friends = friends
		return self
	end

	local NamedType = GraphQLInterfaceType.new({
		name = "Named",
		fields = {
			name = { type = GraphQLString },
		},
	})

	local LifeType
	LifeType = GraphQLInterfaceType.new({
		name = "Life",
		fields = function()
			return {
				progeny = {
					type = GraphQLList.new(LifeType),
				},
			}
		end,
	})

	local MammalType
	MammalType = GraphQLInterfaceType.new({
		name = "Mammal",
		interfaces = { LifeType },
		fields = function()
			return {
				progeny = {
					type = GraphQLList.new(MammalType),
				},
				mother = { type = MammalType },
				father = { type = MammalType },
			}
		end,
	})

	local DogType
	DogType = GraphQLObjectType.new({
		name = "Dog",
		interfaces = { MammalType, LifeType, NamedType },
		fields = function()
			return {
				name = { type = GraphQLString },
				barks = { type = GraphQLBoolean },
				progeny = {
					type = GraphQLList.new(DogType),
				},
				mother = { type = DogType },
				father = { type = DogType },
			}
		end,
		isTypeOf = function(_self, value)
			return instanceOf(value, Dog)
		end,
	})

	local CatType
	CatType = GraphQLObjectType.new({
		name = "Cat",
		interfaces = { MammalType, LifeType, NamedType },
		fields = function()
			return {
				name = { type = GraphQLString },
				meows = { type = GraphQLBoolean },
				progeny = {
					type = GraphQLList.new(CatType),
				},
				mother = { type = CatType },
				father = { type = CatType },
			}
		end,
		isTypeOf = function(_self, value)
			return instanceOf(value, Cat)
		end,
	})

	local PetType = GraphQLUnionType.new({
		name = "Pet",
		types = { DogType, CatType },
		resolveType = function(value)
			if instanceOf(value, Dog) then
				return DogType.name
			end
			-- istanbul ignore else (See: 'https://github.com/graphql/graphql-js/issues/2618')
			if instanceOf(value, Cat) then
				return CatType.name
			end

			-- istanbul ignore next (Not reachable. All possible types have been considered)
			invariant(false)
			return -- ROBLOX deviation: no implicit return
		end,
	})

	local PersonType
	PersonType = GraphQLObjectType.new({
		name = "Person",
		interfaces = { NamedType, MammalType, LifeType },
		fields = function()
			return {
				name = { type = GraphQLString },
				pets = {
					type = GraphQLList.new(PetType),
				},
				friends = {
					type = GraphQLList.new(NamedType),
				},
				progeny = {
					type = GraphQLList.new(PersonType),
				},
				mother = { type = PersonType },
				father = { type = PersonType },
			}
		end,
		isTypeOf = function(_self, value)
			return instanceOf(value, Person)
		end,
	})

	local schema = GraphQLSchema.new({
		query = PersonType,
		types = { PetType },
	})

	local garfield = Cat.new("Garfield", false)
	garfield.mother = Cat.new("Garfield's Mom", false)
	garfield.mother.progeny = { garfield }

	local odie = Dog.new("Odie", true)
	odie.mother = Dog.new("Odie's Mom", true)
	odie.mother.progeny = { odie }

	local liz = Person.new("Liz")
	local john = Person.new("John", { garfield, odie }, { liz, odie })

	describe("Execute: Union and intersection types", function()
		it("can introspect on union and intersection types", function()
			local document = parse([[
      {
        Named: __type(name: "Named") {
          kind
          name
          fields { name }
          interfaces { name }
          possibleTypes { name }
          enumValues { name }
          inputFields { name }
        }
        Mammal: __type(name: "Mammal") {
          kind
          name
          fields { name }
          interfaces { name }
          possibleTypes { name }
          enumValues { name }
          inputFields { name }
        }
        Pet: __type(name: "Pet") {
          kind
          name
          fields { name }
          interfaces { name }
          possibleTypes { name }
          enumValues { name }
          inputFields { name }
        }
      }
    ]])

			expect(executeSync({
				schema = schema,
				document = document,
			})).toEqual({
				data = {
					Named = {
						kind = "INTERFACE",
						name = "Named",
						fields = {
							{
								name = "name",
							},
						},
						interfaces = {},
						possibleTypes = {
							{
								name = "Dog",
							},
							{
								name = "Cat",
							},
							{
								name = "Person",
							},
						},
						enumValues = NULL,
						inputFields = NULL,
					},
					Mammal = {
						kind = "INTERFACE",
						name = "Mammal",
						fields = {
							-- ROBLOX deviation: different order. Was: progeny, mother, father
							-- ROBLOX FIXME
							{
								name = "mother",
							},
							{
								name = "progeny",
							},
							{
								name = "father",
							},
						},
						interfaces = {
							{
								name = "Life",
							},
						},
						possibleTypes = {
							{
								name = "Dog",
							},
							{
								name = "Cat",
							},
							{
								name = "Person",
							},
						},
						enumValues = NULL,
						inputFields = NULL,
					},
					Pet = {
						kind = "UNION",
						name = "Pet",
						fields = NULL,
						interfaces = NULL,
						possibleTypes = {
							{
								name = "Dog",
							},
							{
								name = "Cat",
							},
						},
						enumValues = NULL,
						inputFields = NULL,
					},
				},
			})
		end)

		it("executes using union types", function()
			-- NOTE: This is an *invalid* query, but it should be an *executable* query.
			local document = parse([[
      {
        __typename
        name
        pets {
          __typename
          name
          barks
          meows
        }
      }
    ]])

			local res = executeSync({
				schema = schema,
				document = document,
				rootValue = john,
			})
			expect(res).toEqual({
				data = {
					__typename = "Person",
					name = "John",
					pets = {
						{
							__typename = "Cat",
							name = "Garfield",
							meows = false,
						},
						{
							__typename = "Dog",
							name = "Odie",
							barks = true,
						},
					},
				},
			})
		end)

		it("executes union types with inline fragments", function()
			-- This is the valid version of the query in the above test.
			local document = parse([[
      {
        __typename
        name
        pets {
          __typename
          ... on Dog {
            name
            barks
          }
          ... on Cat {
            name
            meows
          }
        }
      }
    ]])

			expect(executeSync({
				schema = schema,
				document = document,
				rootValue = john,
			})).toEqual({
				data = {
					__typename = "Person",
					name = "John",
					pets = {
						{
							__typename = "Cat",
							name = "Garfield",
							meows = false,
						},
						{
							__typename = "Dog",
							name = "Odie",
							barks = true,
						},
					},
				},
			})
		end)

		it("executes using interface types", function()
			-- NOTE: This is an *invalid* query, but it should be an *executable* query.
			local document = parse([[
      {
        __typename
        name
        friends {
          __typename
          name
          barks
          meows
        }
      }
    ]])

			expect(executeSync({
				schema = schema,
				document = document,
				rootValue = john,
			})).toEqual({
				data = {
					__typename = "Person",
					name = "John",
					friends = {
						{
							__typename = "Person",
							name = "Liz",
						},
						{
							__typename = "Dog",
							name = "Odie",
							barks = true,
						},
					},
				},
			})
		end)

		it("executes interface types with inline fragments", function()
			-- This is the valid version of the query in the above test.
			local document = parse([[
      {
        __typename
        name
        friends {
          __typename
          name
          ... on Dog {
            barks
          }
          ... on Cat {
            meows
          }

          ... on Mammal {
            mother {
              __typename
              ... on Dog {
                name
                barks
              }
              ... on Cat {
                name
                meows
              }
            }
          }
        }
      }
    ]])

			expect(executeSync({
				schema = schema,
				document = document,
				rootValue = john,
			})).toEqual({
				data = {
					__typename = "Person",
					name = "John",
					friends = {
						{
							__typename = "Person",
							name = "Liz",
							mother = NULL,
						},
						{
							__typename = "Dog",
							name = "Odie",
							barks = true,
							mother = {
								__typename = "Dog",
								name = "Odie's Mom",
								barks = true,
							},
						},
					},
				},
			})
		end)

		it("executes interface types with named fragments", function()
			local document = parse([[
      {
        __typename
        name
        friends {
          __typename
          name
          ...DogBarks
          ...CatMeows
        }
      }

      fragment  DogBarks on Dog {
        barks
      }

      fragment  CatMeows on Cat {
        meows
      }
    ]])

			expect(executeSync({
				schema = schema,
				document = document,
				rootValue = john,
			})).toEqual({
				data = {
					__typename = "Person",
					name = "John",
					friends = {
						{
							__typename = "Person",
							name = "Liz",
						},
						{
							__typename = "Dog",
							name = "Odie",
							barks = true,
						},
					},
				},
			})
		end)

		it("allows fragment conditions to be abstract types", function()
			local document = parse([[
      {
        __typename
        name
        pets {
          ...PetFields,
          ...on Mammal {
            mother {
              ...ProgenyFields
            }
          }
        }
        friends { ...FriendFields }
      }

      fragment PetFields on Pet {
        __typename
        ... on Dog {
          name
          barks
        }
        ... on Cat {
          name
          meows
        }
      }

      fragment FriendFields on Named {
        __typename
        name
        ... on Dog {
          barks
        }
        ... on Cat {
          meows
        }
      }

      fragment ProgenyFields on Life {
        progeny {
          __typename
        }
      }
    ]])

			expect(executeSync({
				schema = schema,
				document = document,
				rootValue = john,
			})).toEqual({
				data = {
					__typename = "Person",
					name = "John",
					pets = {
						{
							__typename = "Cat",
							name = "Garfield",
							meows = false,
							mother = {
								progeny = {
									{
										__typename = "Cat",
									},
								},
							},
						},
						{
							__typename = "Dog",
							name = "Odie",
							barks = true,
							mother = {
								progeny = {
									{
										__typename = "Dog",
									},
								},
							},
						},
					},
					friends = {
						{
							__typename = "Person",
							name = "Liz",
						},
						{
							__typename = "Dog",
							name = "Odie",
							barks = true,
						},
					},
				},
			})
		end)

		it("gets execution info in resolver", function()
			-- ROBLOX deviation: predefine local variables
			local PersonType2

			local encounteredContext
			local encounteredSchema
			local encounteredRootValue
			local NamedType2 = GraphQLInterfaceType.new({
				name = "Named",
				fields = {
					name = { type = GraphQLString },
				},
				resolveType = function(_source, context, info)
					encounteredContext = context
					encounteredSchema = info.schema
					encounteredRootValue = info.rootValue

					return PersonType2.name
				end,
			})
			PersonType2 = GraphQLObjectType.new({
				name = "Person",
				interfaces = { NamedType2 },
				fields = {
					name = { type = GraphQLString },
					friends = {
						type = GraphQLList.new(NamedType2),
					},
				},
			})
			local schema2 = GraphQLSchema.new({ query = PersonType2 })
			local document = parse("{ name, friends { name } }")
			local rootValue = Person.new("John", {}, { liz })
			local contextValue = {
				authToken = "123abc",
			}
			local result = executeSync({
				schema = schema2,
				document = document,
				rootValue = rootValue,
				contextValue = contextValue,
			})

			expect(result).toEqual({
				data = {
					name = "John",
					friends = {
						{
							name = "Liz",
						},
					},
				},
			})
			expect(encounteredSchema).to.equal(schema2)
			expect(encounteredRootValue).to.equal(rootValue)
			expect(encounteredContext).to.equal(contextValue)
		end)
	end)
end

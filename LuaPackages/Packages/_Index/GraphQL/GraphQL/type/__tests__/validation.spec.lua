--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/type/__tests__/validation-test.js
return function()
	local typeWorkspace = script.Parent.Parent
	local srcWorkspace = typeWorkspace.Parent
	local Packages = srcWorkspace.Parent
	local LuauPolyfill = require(Packages.LuauPolyfill)
	local Array = LuauPolyfill.Array
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local luaUtilsWorkspace = srcWorkspace.luaUtils
	local NULL = require(luaUtilsWorkspace.null)

	local dedent = require(srcWorkspace.__testUtils__.dedent).dedent
	local inspect = require(srcWorkspace.jsutils.inspect).inspect
	local parse = require(srcWorkspace.language.parser).parse
	local extendSchema = require(srcWorkspace.utilities.extendSchema).extendSchema
	local buildSchema = require(srcWorkspace.utilities.buildASTSchema).buildSchema
	local GraphQLSchema = require(typeWorkspace.schema).GraphQLSchema
	local GraphQLString = require(typeWorkspace.scalars).GraphQLString
	local validate = require(typeWorkspace.validate)
	local validateSchema = validate.validateSchema
	local assertValidSchema = validate.assertValidSchema
	local directives = require(typeWorkspace.directives)
	local GraphQLDirective = directives.GraphQLDirective
	local assertDirective = directives.assertDirective
	local definition = require(typeWorkspace.definition)
	local GraphQLList = definition.GraphQLList
	local GraphQLNonNull = definition.GraphQLNonNull
	local GraphQLObjectType = definition.GraphQLObjectType
	local GraphQLInterfaceType = definition.GraphQLInterfaceType
	local GraphQLUnionType = definition.GraphQLUnionType
	local GraphQLEnumType = definition.GraphQLEnumType
	local GraphQLInputObjectType = definition.GraphQLInputObjectType
	local assertScalarType = definition.assertScalarType
	local assertInterfaceType = definition.assertInterfaceType
	local assertObjectType = definition.assertObjectType
	local assertUnionType = definition.assertUnionType
	local assertEnumType = definition.assertEnumType
	local assertInputObjectType = definition.assertInputObjectType
	local SomeSchema = buildSchema([[

  scalar SomeScalar

  interface SomeInterface { f: SomeObject }

  type SomeObject implements SomeInterface { f: SomeObject }

  union SomeUnion = SomeObject

  enum SomeEnum { ONLY }

  input SomeInputObject { val: String = "hello" }

  directive @SomeDirective on QUERY
]])
	local SomeScalarType = assertScalarType(SomeSchema:getType("SomeScalar"))
	local SomeInterfaceType = assertInterfaceType(SomeSchema:getType("SomeInterface"))
	local SomeObjectType = assertObjectType(SomeSchema:getType("SomeObject"))
	local SomeUnionType = assertUnionType(SomeSchema:getType("SomeUnion"))
	local SomeEnumType = assertEnumType(SomeSchema:getType("SomeEnum"))
	local SomeInputObjectType = assertInputObjectType(SomeSchema:getType("SomeInputObject"))
	local SomeDirective = assertDirective(SomeSchema:getDirective("SomeDirective"))

	local function withModifiers(type_)
		return {
			type_,
			GraphQLList.new(type_),
			GraphQLNonNull.new(type_),
			GraphQLNonNull.new(GraphQLList.new(type_)),
		}
	end

	local outputTypes = Array.concat(
		withModifiers(GraphQLString),
		withModifiers(SomeScalarType),
		withModifiers(SomeEnumType),
		withModifiers(SomeObjectType),
		withModifiers(SomeUnionType),
		withModifiers(SomeInterfaceType)
	)

	local notOutputTypes = withModifiers(SomeInputObjectType)

	local inputTypes = Array.concat(
		withModifiers(GraphQLString),
		withModifiers(SomeScalarType),
		withModifiers(SomeEnumType),
		withModifiers(SomeInputObjectType)
	)

	local notInputTypes = Array.concat(
		withModifiers(SomeObjectType),
		withModifiers(SomeUnionType),
		withModifiers(SomeInterfaceType)
	)

	local function schemaWithFieldType(type_)
		return GraphQLSchema.new({
			query = GraphQLObjectType.new({
				name = "Query",
				fields = {
					f = { type = type_ },
				},
			}),
		})
	end

	describe("Type System: A Schema must have Object root types", function()
		it("accepts a Schema whose query type is an object type", function()
			local schema = buildSchema([[

      type Query {
        test: String
      }
    ]])

			expect(validateSchema(schema)).toEqual({})

			local schemaWithDef = buildSchema([[

      schema {
        query: QueryRoot
      }

      type QueryRoot {
        test: String
      }
    ]])

			expect(validateSchema(schemaWithDef)).toEqual({})
		end)

		it("accepts a Schema whose query and mutation types are object types", function()
			local schema = buildSchema([[

      type Query {
        test: String
      }

      type Mutation {
        test: String
      }
    ]])

			expect(validateSchema(schema)).toEqual({})

			local schemaWithDef = buildSchema([[

      schema {
        query: QueryRoot
        mutation: MutationRoot
      }

      type QueryRoot {
        test: String
      }

      type MutationRoot {
        test: String
      }
    ]])

			expect(validateSchema(schemaWithDef)).toEqual({})
		end)

		it("accepts a Schema whose query and subscription types are object types", function()
			local schema = buildSchema([[

      type Query {
        test: String
      }

      type Subscription {
        test: String
      }
    ]])

			expect(validateSchema(schema)).toEqual({})

			local schemaWithDef = buildSchema([[

      schema {
        query: QueryRoot
        subscription: SubscriptionRoot
      }

      type QueryRoot {
        test: String
      }

      type SubscriptionRoot {
        test: String
      }
    ]])

			expect(validateSchema(schemaWithDef)).toEqual({})
		end)

		it("rejects a Schema without a query type", function()
			local schema = buildSchema([[

      type Mutation {
        test: String
      }
    ]])

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Query root type must be provided.",
			})

			local schemaWithDef = buildSchema([[

      schema {
        mutation: MutationRoot
      }

      type MutationRoot {
        test: String
      }
    ]])

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schemaWithDef)[1]).toObjectContain({
				message = "Query root type must be provided.",
				locations = {
					{
						line = 2,
						column = 7,
					},
				},
			})
		end)

		it("rejects a Schema whose query root type is not an Object type", function()
			local schema = buildSchema([[

      input Query {
        test: String
      }
    ]])

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Query root type must be Object type, it cannot be Query.",
				locations = {
					{
						line = 2,
						column = 7,
					},
				},
			})

			local schemaWithDef = buildSchema([[

      schema {
        query: SomeInputObject
      }

      input SomeInputObject {
        test: String
      }
    ]])

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schemaWithDef)[1]).toObjectContain({
				message = "Query root type must be Object type, it cannot be SomeInputObject.",
				locations = {
					{
						line = 3,
						column = 16,
					},
				},
			})
		end)

		it("rejects a Schema whose mutation type is an input type", function()
			local schema = buildSchema([[

      type Query {
        field: String
      }

      input Mutation {
        test: String
      }
    ]])

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Mutation root type must be Object type if provided, it cannot be Mutation.",
				locations = {
					{
						line = 6,
						column = 7,
					},
				},
			})

			local schemaWithDef = buildSchema([[

      schema {
        query: Query
        mutation: SomeInputObject
      }

      type Query {
        field: String
      }

      input SomeInputObject {
        test: String
      }
    ]])

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schemaWithDef)[1]).toObjectContain({
				message = "Mutation root type must be Object type if provided, it cannot be SomeInputObject.",
				locations = {
					{
						line = 4,
						column = 19,
					},
				},
			})
		end)

		it("rejects a Schema whose subscription type is an input type", function()
			local schema = buildSchema([[

      type Query {
        field: String
      }

      input Subscription {
        test: String
      }
    ]])

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Subscription root type must be Object type if provided, it cannot be Subscription.",
				locations = {
					{
						line = 6,
						column = 7,
					},
				},
			})

			local schemaWithDef = buildSchema([[

      schema {
        query: Query
        subscription: SomeInputObject
      }

      type Query {
        field: String
      }

      input SomeInputObject {
        test: String
      }
    ]])

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schemaWithDef)[1]).toObjectContain({
				message = "Subscription root type must be Object type if provided, it cannot be SomeInputObject.",
				locations = {
					{
						line = 4,
						column = 23,
					},
				},
			})
		end)

		it("rejects a schema extended with invalid root types", function()
			local schema = buildSchema([[

      input SomeInputObject {
        test: String
      }
    ]])

			schema = extendSchema(
				schema,
				parse([[

        extend schema {
          query: SomeInputObject
        }
      ]])
			)
			schema = extendSchema(
				schema,
				parse([[

        extend schema {
          mutation: SomeInputObject
        }
      ]])
			)
			schema = extendSchema(
				schema,
				parse([[

        extend schema {
          subscription: SomeInputObject
        }
      ]])
			)

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Query root type must be Object type, it cannot be SomeInputObject.",
				locations = {
					{
						line = 3,
						column = 18,
					},
				},
			})
			expect(validateSchema(schema)[2]).toObjectContain({
				message = "Mutation root type must be Object type if provided, it cannot be SomeInputObject.",
				locations = {
					{
						line = 3,
						column = 21,
					},
				},
			})
			expect(validateSchema(schema)[3]).toObjectContain({
				message = "Subscription root type must be Object type if provided, it cannot be SomeInputObject.",
				locations = {
					{
						line = 3,
						column = 25,
					},
				},
			})
		end)

		it("rejects a Schema whose types are incorrectly typed", function()
			local schema = GraphQLSchema.new({
				query = SomeObjectType,
				types = {
					{
						name = "SomeType",
					},
					SomeDirective,
				},
			})

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(#validateSchema(schema)).to.equal(2)
			expect(validateSchema(schema)[1]).toObjectContain({
				message = 'Expected GraphQL named type but got: { name: "SomeType" }.',
			})
			expect(validateSchema(schema)[2]).toObjectContain({
				message = "Expected GraphQL named type but got: @SomeDirective.",
				locations = {
					{
						line = 14,
						column = 3,
					},
				},
			})
		end)

		it("rejects a Schema whose directives are incorrectly typed", function()
			local schema = GraphQLSchema.new({
				query = SomeObjectType,
				directives = {
					-- ROBLOX deviation: no nil allows in array
					-- nil,
					"SomeDirective",
					SomeScalarType,
				},
			})

			-- ROBLOX deviation: no nil allows in array
			-- {
			-- 	message = "Expected directive but got: null.",
			-- })

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				message = 'Expected directive but got: "SomeDirective".',
			})
			expect(validateSchema(schema)[2]).toObjectContain({
				message = "Expected directive but got: SomeScalar.",
				locations = {
					{
						line = 2,
						column = 3,
					},
				},
			})
		end)
	end)

	describe("Type System: Objects must have fields", function()
		it("accepts an Object type with fields object", function()
			local schema = buildSchema([[

	      type Query {
	        field: SomeObject
	      }

	      type SomeObject {
	        field: String
	      }
	    ]])

			expect(validateSchema(schema)).toEqual({})
		end)

		it("rejects an Object type with missing fields", function()
			local schema = buildSchema([[

      type Query {
        test: IncompleteObject
      }

      type IncompleteObject
	    ]])

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Type IncompleteObject must define one or more fields.",
				locations = {
					{
						line = 6,
						column = 7,
					},
				},
			})

			local manualSchema = schemaWithFieldType(GraphQLObjectType.new({
				name = "IncompleteObject",
				fields = {},
			}))

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(manualSchema)[1]).toObjectContain({
				message = "Type IncompleteObject must define one or more fields.",
			})

			local manualSchema2 = schemaWithFieldType(GraphQLObjectType.new({
				name = "IncompleteObject",
				fields = function()
					return {}
				end,
			}))

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(manualSchema2)[1]).toObjectContain({
				message = "Type IncompleteObject must define one or more fields.",
			})
		end)

		it("rejects an Object type with incorrectly named fields", function()
			local schema = schemaWithFieldType(GraphQLObjectType.new({
				name = "SomeObject",
				fields = {
					["bad-name-with-dashes"] = { type = GraphQLString },
				},
			}))

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				-- ROBLOX deviation: Lua pattern instead of RegExp
				message = 'Names must match [_%a][_%a%d]* but "bad-name-with-dashes" does not.',
			})
		end)
	end)

	describe("Type System: Fields args must be properly named", function()
		it("accepts field args with valid names", function()
			local schema = schemaWithFieldType(GraphQLObjectType.new({
				name = "SomeObject",
				fields = {
					goodField = {
						type = GraphQLString,
						args = {
							goodArg = { type = GraphQLString },
						},
					},
				},
			}))

			expect(validateSchema(schema)).toEqual({})
		end)
		it("rejects field arg with invalid names", function()
			local schema = schemaWithFieldType(GraphQLObjectType.new({
				name = "SomeObject",
				fields = {
					badField = {
						type = GraphQLString,
						args = {
							["bad-name-with-dashes"] = { type = GraphQLString },
						},
					},
				},
			}))

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			-- ROBLOX deviation: Lua pattern instead of RegExp
			expect(validateSchema(schema)[1]).toObjectContain({
				message = 'Names must match [_%a][_%a%d]* but "bad-name-with-dashes" does not.',
			})
		end)
	end)
	describe("Type System: Union types must be valid", function()
		it("accepts a Union type with member types", function()
			local schema = buildSchema([[

      type Query {
        test: GoodUnion
      }

      type TypeA {
        field: String
      }

      type TypeB {
        field: String
      }

      union GoodUnion =
        | TypeA
        | TypeB
	    ]])

			expect(validateSchema(schema)).toEqual({})
		end)
		it("rejects a Union type with empty types", function()
			local schema = buildSchema([[

      type Query {
        test: BadUnion
      }

      union BadUnion
	    ]])

			schema = extendSchema(
				schema,
				parse([[

        directive @test on UNION

        extend union BadUnion @test
	      ]])
			)

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Union type BadUnion must define one or more member types.",
				locations = {
					{
						line = 6,
						column = 7,
					},
					{
						line = 4,
						column = 9,
					},
				},
			})
		end)

		it("rejects a Union type with duplicated member type", function()
			local schema = buildSchema([[

      type Query {
        test: BadUnion
      }

      type TypeA {
        field: String
      }

      type TypeB {
        field: String
      }

      union BadUnion =
        | TypeA
        | TypeB
        | TypeA
	    ]])

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Union type BadUnion can only include type TypeA once.",
				locations = {
					{
						line = 15,
						column = 11,
					},
					{
						line = 17,
						column = 11,
					},
				},
			})

			schema = extendSchema(schema, parse("extend union BadUnion = TypeB"))

			-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Union type BadUnion can only include type TypeA once.",
				locations = {
					{
						line = 15,
						column = 11,
					},
					{
						line = 17,
						column = 11,
					},
				},
			})
			expect(validateSchema(schema)[2]).toObjectContain({
				message = "Union type BadUnion can only include type TypeB once.",
				locations = {
					{
						line = 16,
						column = 11,
					},
					{
						line = 1,
						column = 25,
					},
				},
			})
		end)

		it("rejects a Union type with non-Object members types", function()
			local schema = buildSchema([[

      type Query {
        test: BadUnion
      }

      type TypeA {
        field: String
      }

      type TypeB {
        field: String
      }

      union BadUnion =
        | TypeA
        | String
        | TypeB
    ]])

			schema = extendSchema(schema, parse("extend union BadUnion = Int"))

			-- ROBLOX TODO: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Union type BadUnion can only include Object types, it cannot include String.",
				locations = {
					{
						line = 16,
						column = 11,
					},
				},
			})
			expect(validateSchema(schema)[2]).toObjectContain({
				message = "Union type BadUnion can only include Object types, it cannot include Int.",
				locations = {
					{
						line = 1,
						column = 25,
					},
				},
			})

			local badUnionMemberTypes = {
				GraphQLString,
				GraphQLNonNull.new(SomeObjectType),
				GraphQLList.new(SomeObjectType),
				SomeInterfaceType,
				SomeUnionType,
				SomeEnumType,
				SomeInputObjectType,
			}

			for _, memberType in ipairs(badUnionMemberTypes) do
				local badUnion = GraphQLUnionType.new({
					name = "BadUnion",
					-- $FlowExpectedError[incompatible-call]
					types = { memberType },
				})
				local badSchema = schemaWithFieldType(badUnion)

				-- ROBLOX TODO: TestEZ can't seem to do a partial object match within an array
				expect(validateSchema(badSchema)[1]).toObjectContain({
					message = "Union type BadUnion can only include Object types, " .. (
						"it cannot include %s."
					):format(inspect(memberType)),
				})
			end
		end)
	end)

	describe("Type System: Input Objects must have fields", function()
		it("accepts an Input Object type with fields", function()
			local schema = buildSchema([[

      type Query {
        field(arg: SomeInputObject): String
      }

      input SomeInputObject {
        field: String
      }
	    ]])

			expect(validateSchema(schema)).toEqual({})
		end)

		it("rejects an Input Object type with missing fields", function()
			local schema = buildSchema([[

      type Query {
        field(arg: SomeInputObject): String
      }

      input SomeInputObject
	    ]])

			schema = extendSchema(
				schema,
				parse([[

        directive @test on INPUT_OBJECT

        extend input SomeInputObject @test
	      ]])
			)

			-- ROBLOX TODO: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Input Object type SomeInputObject must define one or more fields.",
				locations = {
					{
						line = 6,
						column = 7,
					},
					{
						line = 4,
						column = 9,
					},
				},
			})
		end)
		it("accepts an Input Object with breakable circular reference", function()
			local schema = buildSchema([[

	      type Query {
	        field(arg: SomeInputObject): String
	      }

	      input SomeInputObject {
	        self: SomeInputObject
	        arrayOfSelf: [SomeInputObject]
	        nonNullArrayOfSelf: [SomeInputObject]!
	        nonNullArrayOfNonNullSelf: [SomeInputObject!]!
	        intermediateSelf: AnotherInputObject
	      }

	      input AnotherInputObject {
	        parent: SomeInputObject
	      }
	    ]])

			expect(validateSchema(schema)).toEqual({})
		end)
		it("rejects an Input Object with non-breakable circular reference", function()
			local schema = buildSchema([[

      type Query {
        field(arg: SomeInputObject): String
      }

      input SomeInputObject {
        nonNullSelf: SomeInputObject!
      }
	    ]])

			-- ROBLOX TODO: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				message = 'Cannot reference Input Object "SomeInputObject" within itself through a series of non-null fields: "nonNullSelf".',
				locations = {
					{
						line = 7,
						column = 9,
					},
				},
			})
		end)

		it(
			"rejects Input Objects with non-breakable circular reference spread across them",
			function()
				local schema = buildSchema([[

      type Query {
        field(arg: SomeInputObject): String
      }

      input SomeInputObject {
        startLoop: AnotherInputObject!
      }

      input AnotherInputObject {
        nextInLoop: YetAnotherInputObject!
      }

      input YetAnotherInputObject {
        closeLoop: SomeInputObject!
      }
	    ]])

				-- ROBLOX TODO: TestEZ can't seem to do a partial object match within an array
				expect(validateSchema(schema)[1]).toObjectContain({
					message = 'Cannot reference Input Object "SomeInputObject" within itself through a series of non-null fields: "startLoop.nextInLoop.closeLoop".',
					locations = {
						{
							line = 7,
							column = 9,
						},
						{
							line = 11,
							column = 9,
						},
						{
							line = 15,
							column = 9,
						},
					},
				})
			end
		)

		it("rejects Input Objects with multiple non-breakable circular reference", function()
			local schema = buildSchema([[

      type Query {
        field(arg: SomeInputObject): String
      }

      input SomeInputObject {
        startLoop: AnotherInputObject!
      }

      input AnotherInputObject {
        closeLoop: SomeInputObject!
        startSecondLoop: YetAnotherInputObject!
      }

      input YetAnotherInputObject {
        closeSecondLoop: AnotherInputObject!
        nonNullSelf: YetAnotherInputObject!
      }
	    ]])

			-- ROBLOX TODO: TestEZ can't seem to do a partial object match within an array
			local validationResult = validateSchema(schema)
			expect(validationResult[1]).toObjectContain({
				message = 'Cannot reference Input Object "SomeInputObject" within itself through a series of non-null fields: "startLoop.closeLoop".',
				locations = {
					{
						line = 7,
						column = 9,
					},
					{
						line = 11,
						column = 9,
					},
				},
			})

			expect(validationResult[2]).toObjectContain({
				message = 'Cannot reference Input Object "AnotherInputObject" within itself through a series of non-null fields: "startSecondLoop.closeSecondLoop".',
				locations = {
					{
						line = 12,
						column = 9,
					},
					{
						line = 16,
						column = 9,
					},
				},
			})

			expect(validationResult[3]).toObjectContain({
				message = 'Cannot reference Input Object "YetAnotherInputObject" within itself through a series of non-null fields: "nonNullSelf".',
				locations = {
					{
						line = 17,
						column = 9,
					},
				},
			})
		end)

		it("rejects an Input Object type with incorrectly typed fields", function()
			local schema = buildSchema([[

      type Query {
        field(arg: SomeInputObject): String
      }

      type SomeObject {
        field: String
      }

      union SomeUnion = SomeObject

      input SomeInputObject {
        badObject: SomeObject
        badUnion: SomeUnion
        goodInputObject: SomeInputObject
      }
	    ]])

			-- ROBLOX TODO: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				message = "The type of SomeInputObject.badObject must be Input Type but got: SomeObject.",
				locations = {
					{
						line = 13,
						column = 20,
					},
				},
			})

			expect(validateSchema(schema)[2]).toObjectContain({
				message = "The type of SomeInputObject.badUnion must be Input Type but got: SomeUnion.",
				locations = {
					{
						line = 14,
						column = 19,
					},
				},
			})
		end)

		it("rejects an Input Object type with required argument that is deprecated", function()
			local schema = buildSchema([[

      type Query {
        field(arg: SomeInputObject): String
      }

      input SomeInputObject {
        badField: String! @deprecated
        optionalField: String @deprecated
        anotherOptionalField: String! = "" @deprecated
      }
	    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Required input field SomeInputObject.badField cannot be deprecated.",
				locations = {
					{
						line = 7,
						column = 27,
					},
					{
						line = 7,
						column = 19,
					},
				},
			})
		end)
	end)

	describe("Type System: Enum types must be well defined", function()
		it("rejects an Enum type without values", function()
			local schema = buildSchema([[

      type Query {
        field: SomeEnum
      }

      enum SomeEnum
    ]])

			schema = extendSchema(
				schema,
				parse([[

        directive @test on ENUM

        extend enum SomeEnum @test
	      ]])
			)

			-- ROBLOX TODO: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Enum type SomeEnum must define one or more values.",
				locations = {
					{
						line = 6,
						column = 7,
					},
					{
						line = 4,
						column = 9,
					},
				},
			})
		end)

		it("rejects an Enum type with incorrectly named values", function()
			local function schemaWithEnum(values)
				return schemaWithFieldType(GraphQLEnumType.new({
					name = "SomeEnum",
					values = values,
				}))
			end

			local schema1 = schemaWithEnum({
				["#value"] = {},
			})

			-- ROBLOX TODO: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema1)[1]).toObjectContain({
				-- ROBLOX deviation: Lua pattern instead of RegExp
				message = 'Names must match [_%a][_%a%d]* but "#value" does not.',
			})

			local schema2 = schemaWithEnum({
				["1value"] = {},
			})

			-- ROBLOX TODO: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema2)[1]).toObjectContain({
				-- ROBLOX deviation: Lua pattern instead of RegExp
				message = 'Names must match [_%a][_%a%d]* but "1value" does not.',
			})

			local schema3 = schemaWithEnum({
				["KEBAB-CASE"] = {},
			})

			-- ROBLOX TODO: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema3)[1]).toObjectContain({
				-- ROBLOX deviation: Lua pattern instead of RegExp
				message = 'Names must match [_%a][_%a%d]* but "KEBAB-CASE" does not.',
			})

			local schema4 = schemaWithEnum({ [true] = {} })

			-- ROBLOX TODO: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema4)[1]).toObjectContain({
				message = "Enum type SomeEnum cannot include value: true.",
			})

			local schema5 = schemaWithEnum({ [false] = {} })

			-- ROBLOX TODO: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema5)[1]).toObjectContain({
				message = "Enum type SomeEnum cannot include value: false.",
			})

			local schema6 = schemaWithEnum({ [NULL] = {} })

			expect(validateSchema(schema6)[1]).toObjectContain({
				message = "Enum type SomeEnum cannot include value: null.",
			})
		end)
	end)

	describe("Type System: Object fields must have output types", function()
		local function schemaWithObjectField(fieldConfig)
			local BadObjectType = GraphQLObjectType.new({
				name = "BadObject",
				fields = { badField = fieldConfig },
			})

			return GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {
						f = { type = BadObjectType },
					},
				}),
				types = { SomeObjectType },
			})
		end

		for _, type_ in ipairs(outputTypes) do
			local typeName = inspect(type_)

			it(("accepts an output type as an Object field type: %s"):format(typeName), function()
				local schema = schemaWithObjectField({ type = type_ })

				expect(validateSchema(schema)).toEqual({})
			end)
		end

		it("rejects an empty Object field type", function()
			local schema = schemaWithObjectField({ type = NULL })

			-- ROBLOX TODO: TestEZ can't seem to do a partial object match within an array
			expect(validateSchema(schema)[1]).toObjectContain({
				message = "The type of BadObject.badField must be Output Type but got: null.",
			})
		end)

		for _, type_ in ipairs(notOutputTypes) do
			local typeStr = inspect(type_)

			it(("rejects a non-output type as an Object field type: %s"):format(typeStr), function()
				local schema = schemaWithObjectField({ type = type_ })

				-- ROBLOX TODO: TestEZ can't seem to do a partial object match within an array
				expect(validateSchema(schema)[1]).toObjectContain({
					message = ("The type of BadObject.badField must be Output Type but got: %s."):format(
						typeStr
					),
				})
			end)
		end

		it("rejects a non-type value as an Object field type", function()
			-- ROBLOX deviation: upstream JS `Number` symbol resolves to a function for the purposes of this test
			local function Number() end
			local schema = schemaWithObjectField({ type = Number })

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "The type of BadObject.badField must be Output Type but got: [function].",
			})
			expect(validateSchema(schema)[2]).toObjectContain({
				message = "Expected GraphQL named type but got: [function].",
			})
		end)

		it(
			"rejects with relevant locations for a non-output type as an Object field type",
			function()
				local schema = buildSchema([[

      type Query {
        field: [SomeInputObject]
      }

      input SomeInputObject {
        field: String
      }
	    ]])

				-- ROBLOX TODO: TestEZ can't seem to do a partial object match within an array
				expect(validateSchema(schema)[1]).toObjectContain({
					message = "The type of Query.field must be Output Type but got: [SomeInputObject].",
					locations = {
						{
							line = 3,
							column = 16,
						},
					},
				})
			end
		)
	end)
	describe("Type System: Objects can only implement unique interfaces", function()
		-- ROBLOX deviation: can't store nil as a key, and Lua doesn't have `undefined`
		it("rejects an Object implementing a non-type values", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "BadObject",
					interfaces = { NULL },
					fields = {
						f = { type = GraphQLString },
					},
				}),
			})

			local validateSchemaResult = validateSchema(schema)
			print(inspect(validateSchemaResult))
			expect(validateSchemaResult[1]).toObjectContain({
				message = "Type BadObject must only implement Interface types, it cannot implement null.",
			})
		end)

		it("rejects an Object implementing a non-Interface type", function()
			local schema = buildSchema([[

      type Query {
        test: BadObject
      }

      input SomeInputObject {
        field: String
      }

      type BadObject implements SomeInputObject {
        field: String
      }
	    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Type BadObject must only implement Interface types, it cannot implement SomeInputObject.",
				locations = {
					{
						line = 10,
						column = 33,
					},
				},
			})
		end)

		it("rejects an Object implementing the same interface twice", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field: String
      }

      type AnotherObject implements AnotherInterface & AnotherInterface {
        field: String
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Type AnotherObject can only implement AnotherInterface once.",
				locations = {
					{
						line = 10,
						column = 37,
					},
					{
						line = 10,
						column = 56,
					},
				},
			})
		end)

		it("rejects an Object implementing the same interface twice due to extension", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field: String
      }

      type AnotherObject implements AnotherInterface {
        field: String
      }
    ]])
			local extendedSchema = extendSchema(
				schema,
				parse("extend type AnotherObject implements AnotherInterface")
			)

			expect(validateSchema(extendedSchema)[1]).toObjectContain({
				message = "Type AnotherObject can only implement AnotherInterface once.",
				locations = {
					{
						line = 10,
						column = 37,
					},
					{
						line = 1,
						column = 38,
					},
				},
			})
		end)
	end)

	describe("Type System: Interface extensions should be valid", function()
		it("rejects an Object implementing the extended interface due to missing field", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field: String
      }

      type AnotherObject implements AnotherInterface {
        field: String
      }
    ]])
			local extendedSchema = extendSchema(
				schema,
				parse([[

        extend interface AnotherInterface {
          newField: String
        }

        extend type AnotherObject {
          differentNewField: String
        }
      ]])
			)

			expect(validateSchema(extendedSchema)[1]).toObjectContain({
				message = "Interface field AnotherInterface.newField expected but AnotherObject does not provide it.",
				locations = {
					{
						line = 3,
						column = 11,
					},
					{
						line = 10,
						column = 7,
					},
					{
						line = 6,
						column = 9,
					},
				},
			})
		end)

		it(
			"rejects an Object implementing the extended interface due to missing field args",
			function()
				local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field: String
      }

      type AnotherObject implements AnotherInterface {
        field: String
      }
    ]])
				local extendedSchema = extendSchema(
					schema,
					parse([[

        extend interface AnotherInterface {
          newField(test: Boolean): String
        }

        extend type AnotherObject {
          newField: String
        }
      ]])
				)

				expect(validateSchema(extendedSchema)[1]).toObjectContain({
					message = "Interface field argument AnotherInterface.newField(test:) expected but AnotherObject.newField does not provide it.",
					locations = {
						{
							line = 3,
							column = 20,
						},
						{
							line = 7,
							column = 11,
						},
					},
				})
			end
		)

		it(
			"rejects Objects implementing the extended interface due to mismatching interface type",
			function()
				local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field: String
      }

      type AnotherObject implements AnotherInterface {
        field: String
      }
    ]])
				local extendedSchema = extendSchema(
					schema,
					parse([[

        extend interface AnotherInterface {
          newInterfaceField: NewInterface
        }

        interface NewInterface {
          newField: String
        }

        interface MismatchingInterface {
          newField: String
        }

        extend type AnotherObject {
          newInterfaceField: MismatchingInterface
        }

        # Required to prevent unused interface errors
        type DummyObject implements NewInterface & MismatchingInterface {
          newField: String
        }
      ]])
				)

				expect(validateSchema(extendedSchema)[1]).toObjectContain({
					message = "Interface field AnotherInterface.newInterfaceField expects type NewInterface but AnotherObject.newInterfaceField is type MismatchingInterface.",
					locations = {
						{
							line = 3,
							column = 30,
						},
						{
							line = 15,
							column = 30,
						},
					},
				})
			end
		)
	end)

	describe("Type System: Interface fields must have output types", function()
		local function schemaWithInterfaceField(fieldConfig)
			local fields = { badField = fieldConfig }
			local BadInterfaceType = GraphQLInterfaceType.new({
				name = "BadInterface",
				fields = fields,
			})
			local BadImplementingType = GraphQLObjectType.new({
				name = "BadImplementing",
				interfaces = { BadInterfaceType },
				fields = fields,
			})

			return GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {
						f = { type = BadInterfaceType },
					},
				}),
				types = { BadImplementingType, SomeObjectType },
			})
		end

		for _, type_ in ipairs(outputTypes) do
			local typeName = inspect(type_)

			it(
				("accepts an output type as an Interface field type: %s"):format(typeName),
				function()
					local schema = schemaWithInterfaceField({ type = type_ })

					expect(validateSchema(schema)).toEqual({})
				end
			)
		end

		it("rejects an empty Interface field type", function()
			local schema = schemaWithInterfaceField({ type = NULL })

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "The type of BadImplementing.badField must be Output Type but got: null.",
			})
			expect(validateSchema(schema)[2]).toObjectContain({
				message = "The type of BadInterface.badField must be Output Type but got: null.",
			})
		end)

		for _, type_ in ipairs(notOutputTypes) do
			local typeStr = inspect(type_)

			it(
				("rejects a non-output type as an Interface field type: %s"):format(typeStr),
				function()
					local schema = schemaWithInterfaceField({ type = type_ })

					expect(validateSchema(schema)[1]).toObjectContain({
						message = (
							"The type of BadImplementing.badField must be Output Type but got: %s."
						):format(typeStr),
					})
					expect(validateSchema(schema)[2]).toObjectContain({
						message = (
							"The type of BadInterface.badField must be Output Type but got: %s."
						):format(typeStr),
					})
				end
			)
		end

		it("rejects a non-type value as an Interface field type", function()
			-- ROBLOX deviation: upstream JS `Number` symbol resolves to a function for the purposes of this test
			local function Number() end

			local schema = schemaWithInterfaceField({ type = Number })

			expect(validateSchema(schema)[1]).toObjectContain({
				-- ROBLOX deviation: Lua doesn't capture the function name
				message = "The type of BadImplementing.badField must be Output Type but got: [function].",
			})
			expect(validateSchema(schema)[2]).toObjectContain({
				-- ROBLOX deviation: Lua doesn't capture the function name
				message = "The type of BadInterface.badField must be Output Type but got: [function].",
			})
			expect(validateSchema(schema)[3]).toObjectContain({
				-- ROBLOX deviation: Lua doesn't capture the function name
				message = "Expected GraphQL named type but got: [function].",
			})
		end)

		it("rejects a non-output type as an Interface field type with locations", function()
			local schema = buildSchema([[

      type Query {
        test: SomeInterface
      }

      interface SomeInterface {
        field: SomeInputObject
      }

      input SomeInputObject {
        foo: String
      }

      type SomeObject implements SomeInterface {
        field: SomeInputObject
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "The type of SomeInterface.field must be Output Type but got: SomeInputObject.",
				locations = {
					{
						line = 7,
						column = 16,
					},
				},
			})
			expect(validateSchema(schema)[2]).toObjectContain({
				message = "The type of SomeObject.field must be Output Type but got: SomeInputObject.",
				locations = {
					{
						line = 15,
						column = 16,
					},
				},
			})
		end)

		it("accepts an interface not implemented by at least one object", function()
			local schema = buildSchema([[

      type Query {
        test: SomeInterface
      }

      interface SomeInterface {
        foo: String
      }
    ]])

			expect(validateSchema(schema)).toEqual({})
		end)
	end)

	describe("Type System: Arguments must have input types", function()
		local function schemaWithArg(argConfig)
			local BadObjectType = GraphQLObjectType.new({
				name = "BadObject",
				fields = {
					badField = {
						type = GraphQLString,
						args = { badArg = argConfig },
					},
				},
			})

			return GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {
						f = { type = BadObjectType },
					},
				}),
				directives = {
					GraphQLDirective.new({
						name = "BadDirective",
						args = { badArg = argConfig },
						locations = {
							"QUERY",
						},
					}),
				},
			})
		end

		for _, type_ in ipairs(inputTypes) do
			local typeName = inspect(type_)

			it(("accepts an input type as a field arg type: %s"):format(typeName), function()
				local schema = schemaWithArg({ type = type_ })

				expect(validateSchema(schema)).toEqual({})
			end)
		end

		-- ROBLOX deviation: can't store a nil table field in Lua, and Lua doesn't have `undefined`
		it("rejects an empty field arg type", function()
			local schema = schemaWithArg({ type = NULL })

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "The type of @BadDirective(badArg:) must be Input Type but got: null.",
			})
			expect(validateSchema(schema)[2]).toObjectContain({
				message = "The type of BadObject.badField(badArg:) must be Input Type but got: null.",
			})
		end)

		for _, type_ in ipairs(notInputTypes) do
			local typeStr = inspect(type_)

			it(("rejects a non-input type as a field arg type: %s"):format(typeStr), function()
				local schema = schemaWithArg({ type = type_ })

				expect(validateSchema(schema)[1]).toObjectContain({
					message = (
						"The type of @BadDirective(badArg:) must be Input Type but got: %s."
					):format(typeStr),
				})
				expect(validateSchema(schema)[2]).toObjectContain({
					message = (
						"The type of BadObject.badField(badArg:) must be Input Type but got: %s."
					):format(typeStr),
				})
			end)
		end

		it("rejects a non-type value as a field arg type", function()
			-- ROBLOX deviation: upstream JS `Number` symbol resolves to a function for the purposes of this test
			local function Number() end

			local schema = schemaWithArg({ type = Number })

			expect(validateSchema(schema)[1]).toObjectContain({
				-- ROBLOX deviation: Lua doesn't capture function names
				message = "The type of @BadDirective(badArg:) must be Input Type but got: [function].",
			})
			expect(validateSchema(schema)[2]).toObjectContain({
				-- ROBLOX deviation: Lua doesn't capture function names
				message = "The type of BadObject.badField(badArg:) must be Input Type but got: [function].",
			})
			expect(validateSchema(schema)[3]).toObjectContain({
				-- ROBLOX deviation: Lua doesn't capture function names
				message = "Expected GraphQL named type but got: [function].",
			})
		end)

		it("rejects an required argument that is deprecated", function()
			local schema = buildSchema([[

      directive @BadDirective(
        badArg: String! @deprecated
        optionalArg: String @deprecated
        anotherOptionalArg: String! = "" @deprecated
      ) on FIELD

      type Query {
        test(
          badArg: String! @deprecated
          optionalArg: String @deprecated
          anotherOptionalArg: String! = "" @deprecated
        ): String
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Required argument @BadDirective(badArg:) cannot be deprecated.",
				locations = {
					{
						line = 3,
						column = 25,
					},
					{
						line = 3,
						column = 17,
					},
				},
			})
			expect(validateSchema(schema)[2]).toObjectContain({
				message = "Required argument Query.test(badArg:) cannot be deprecated.",
				locations = {
					{
						line = 10,
						column = 27,
					},
					{
						line = 10,
						column = 19,
					},
				},
			})
		end)

		it("rejects a non-input type as a field arg with locations", function()
			local schema = buildSchema([[

      type Query {
        test(arg: SomeObject): String
      }

      type SomeObject {
        foo: String
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "The type of Query.test(arg:) must be Input Type but got: SomeObject.",
				locations = {
					{
						line = 3,
						column = 19,
					},
				},
			})
		end)
	end)

	describe("Type System: Input Object fields must have input types", function()
		local function schemaWithInputField(inputFieldConfig)
			local BadInputObjectType = GraphQLInputObjectType.new({
				name = "BadInputObject",
				fields = { badField = inputFieldConfig },
			})

			return GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {
						f = {
							type = GraphQLString,
							args = {
								badArg = { type = BadInputObjectType },
							},
						},
					},
				}),
			})
		end

		for _, type_ in ipairs(inputTypes) do
			local typeName = inspect(type_)

			it(("accepts an input type as an input field type: %s"):format(typeName), function()
				local schema = schemaWithInputField({ type = type_ })

				expect(validateSchema(schema)).toEqual({})
			end)
		end

		-- ROBLOX deviation: can't store nil as a key, and Lua doesn't have `undefined`
		it("rejects an empty input field type", function()
			local schema = schemaWithInputField({ type = NULL })

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "The type of BadInputObject.badField must be Input Type but got: null.",
			})
		end)

		for _, type_ in ipairs(notInputTypes) do
			local typeStr = inspect(type_)

			it(("rejects a non-input type as an input field type: %s"):format(typeStr), function()
				local schema = schemaWithInputField({ type = type_ })

				expect(validateSchema(schema)[1]).toObjectContain({
					message = (
						"The type of BadInputObject.badField must be Input Type but got: %s."
					):format(typeStr),
				})
			end)
		end

		it("rejects a non-type value as an input field type", function()
			-- ROBLOX deviation: upstream JS `Number` symbol resolves to a function for the purposes of this test
			local function Number() end
			local schema = schemaWithInputField({ type = Number })

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "The type of BadInputObject.badField must be Input Type but got: [function].",
			})
			expect(validateSchema(schema)[2]).toObjectContain({
				message = "Expected GraphQL named type but got: [function].",
			})
		end)

		it("rejects a non-input type as an input object field with locations", function()
			local schema = buildSchema([[

      type Query {
        test(arg: SomeInputObject): String
      }

      input SomeInputObject {
        foo: SomeObject
      }

      type SomeObject {
        bar: String
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "The type of SomeInputObject.foo must be Input Type but got: SomeObject.",
				locations = {
					{
						line = 7,
						column = 14,
					},
				},
			})
		end)
	end)

	describe("Objects must adhere to Interface they implement", function()
		it("accepts an Object which implements an Interface", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field(input: String): String
      }

      type AnotherObject implements AnotherInterface {
        field(input: String): String
      }
    ]])

			expect(validateSchema(schema)).toEqual({})
		end)

		it("accepts an Object which implements an Interface along with more fields", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field(input: String): String
      }

      type AnotherObject implements AnotherInterface {
        field(input: String): String
        anotherField: String
      }
    ]])

			expect(validateSchema(schema)).toEqual({})
		end)

		it(
			"accepts an Object which implements an Interface field along with additional optional arguments",
			function()
				local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field(input: String): String
      }

      type AnotherObject implements AnotherInterface {
        field(input: String, anotherInput: String): String
      }
    ]])

				expect(validateSchema(schema)).toEqual({})
			end
		)

		it("rejects an Object missing an Interface field", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field(input: String): String
      }

      type AnotherObject implements AnotherInterface {
        anotherField: String
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field AnotherInterface.field expected but AnotherObject does not provide it.",
				locations = {
					{
						line = 7,
						column = 9,
					},
					{
						line = 10,
						column = 7,
					},
				},
			})
		end)

		it("rejects an Object with an incorrectly typed Interface field", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field(input: String): String
      }

      type AnotherObject implements AnotherInterface {
        field(input: String): Int
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field AnotherInterface.field expects type String but AnotherObject.field is type Int.",
				locations = {
					{
						line = 7,
						column = 31,
					},
					{
						line = 11,
						column = 31,
					},
				},
			})
		end)

		it("rejects an Object with a differently typed Interface field", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      type A { foo: String }
      type B { foo: String }

      interface AnotherInterface {
        field: A
      }

      type AnotherObject implements AnotherInterface {
        field: B
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field AnotherInterface.field expects type A but AnotherObject.field is type B.",
				locations = {
					{
						line = 10,
						column = 16,
					},
					{
						line = 14,
						column = 16,
					},
				},
			})
		end)

		it("accepts an Object with a subtyped Interface field (interface)", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field: AnotherInterface
      }

      type AnotherObject implements AnotherInterface {
        field: AnotherObject
      }
    ]])

			expect(validateSchema(schema)).toEqual({})
		end)

		it("accepts an Object with a subtyped Interface field (union)", function()
			local schema = buildSchema([[

			type Query {
        test: AnotherObject
      }

      type SomeObject {
        field: String
      }

      union SomeUnionType = SomeObject

      interface AnotherInterface {
        field: SomeUnionType
      }

      type AnotherObject implements AnotherInterface {
        field: SomeObject
      }
    ]])

			expect(validateSchema(schema)).toEqual({})
		end)

		it("rejects an Object missing an Interface argument", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field(input: String): String
      }

      type AnotherObject implements AnotherInterface {
        field: String
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field argument AnotherInterface.field(input:) expected but AnotherObject.field does not provide it.",
				locations = {
					{
						line = 7,
						column = 15,
					},
					{
						line = 11,
						column = 9,
					},
				},
			})
		end)

		it("rejects an Object with an incorrectly typed Interface argument", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field(input: String): String
      }

      type AnotherObject implements AnotherInterface {
        field(input: Int): String
      }
    ]])

			-- ROBLOX deviation START: use jestExpect here so failures have easy-to-read diffs
			jestExpect(validateSchema(schema)[1]).toMatchObject({
				-- ROBLOX deviation END
				message = "Interface field argument AnotherInterface.field(input:) expects type String but AnotherObject.field(input:) is type Int.",
				locations = {
					{
						line = 7,
						column = 22,
					},
					{
						line = 11,
						column = 22,
					},
				},
			})
		end)
		it("rejects an Object with both an incorrectly typed field and argument", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field(input: String): String
      }

      type AnotherObject implements AnotherInterface {
        field(input: Int): Int
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field AnotherInterface.field expects type String but AnotherObject.field is type Int.",
				locations = {
					{
						line = 7,
						column = 31,
					},
					{
						line = 11,
						column = 28,
					},
				},
			})
			expect(validateSchema(schema)[2]).toObjectContain({
				message = "Interface field argument AnotherInterface.field(input:) expects type String but AnotherObject.field(input:) is type Int.",
				locations = {
					{
						line = 7,
						column = 22,
					},
					{
						line = 11,
						column = 22,
					},
				},
			})
		end)

		it(
			"rejects an Object which implements an Interface field along with additional required arguments",
			function()
				local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field(baseArg: String): String
      }

      type AnotherObject implements AnotherInterface {
        field(
          baseArg: String,
          requiredArg: String!
          optionalArg1: String,
          optionalArg2: String = "",
        ): String
      }
    ]])

				expect(validateSchema(schema)[1]).toObjectContain({
					message = "Object field AnotherObject.field includes required argument requiredArg that is missing from the Interface field AnotherInterface.field.",
					locations = {
						{
							line = 13,
							column = 11,
						},
						{
							line = 7,
							column = 9,
						},
					},
				})
			end
		)

		it("accepts an Object with an equivalently wrapped Interface field type", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field: [String]!
      }

      type AnotherObject implements AnotherInterface {
        field: [String]!
      }
    ]])

			expect(validateSchema(schema)).toEqual({})
		end)

		it("rejects an Object with a non-list Interface field list type", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field: [String]
      }

      type AnotherObject implements AnotherInterface {
        field: String
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field AnotherInterface.field expects type [String] but AnotherObject.field is type String.",
				locations = {
					{
						line = 7,
						column = 16,
					},
					{
						line = 11,
						column = 16,
					},
				},
			})
		end)

		it("rejects an Object with a list Interface field non-list type", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field: String
      }

      type AnotherObject implements AnotherInterface {
        field: [String]
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field AnotherInterface.field expects type String but AnotherObject.field is type [String].",
				locations = {
					{
						line = 7,
						column = 16,
					},
					{
						line = 11,
						column = 16,
					},
				},
			})
		end)

		it("accepts an Object with a subset non-null Interface field type", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field: String
      }

      type AnotherObject implements AnotherInterface {
        field: String!
      }
    ]])

			expect(validateSchema(schema)).toEqual({})
		end)

		it("rejects an Object with a superset nullable Interface field type", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface AnotherInterface {
        field: String!
      }

      type AnotherObject implements AnotherInterface {
        field: String
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field AnotherInterface.field expects type String! but AnotherObject.field is type String.",
				locations = {
					{
						line = 7,
						column = 16,
					},
					{
						line = 11,
						column = 16,
					},
				},
			})
		end)

		it("rejects an Object missing a transitive interface", function()
			local schema = buildSchema([[

      type Query {
        test: AnotherObject
      }

      interface SuperInterface {
        field: String!
      }

      interface AnotherInterface implements SuperInterface {
        field: String!
      }

      type AnotherObject implements AnotherInterface {
        field: String!
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Type AnotherObject must implement SuperInterface because it is implemented by AnotherInterface.",
				locations = {
					{
						line = 10,
						column = 45,
					},
					{
						line = 14,
						column = 37,
					},
				},
			})
		end)
	end)

	describe("Interfaces must adhere to Interface they implement", function()
		it("accepts an Interface which implements an Interface", function()
			local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      interface ParentInterface {
        field(input: String): String
      }

      interface ChildInterface implements ParentInterface {
        field(input: String): String
      }
    ]])

			expect(validateSchema(schema)).toEqual({})
		end)

		it("accepts an Interface which implements an Interface along with more fields", function()
			local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      interface ParentInterface {
        field(input: String): String
      }

      interface ChildInterface implements ParentInterface {
        field(input: String): String
        anotherField: String
      }
    ]])

			expect(validateSchema(schema)).toEqual({})
		end)

		it(
			"accepts an Interface which implements an Interface field along with additional optional arguments",
			function()
				local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      interface ParentInterface {
        field(input: String): String
      }

      interface ChildInterface implements ParentInterface {
        field(input: String, anotherInput: String): String
      }
    ]])

				expect(validateSchema(schema)).toEqual({})
			end
		)

		it("rejects an Interface missing an Interface field", function()
			local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      interface ParentInterface {
        field(input: String): String
      }

      interface ChildInterface implements ParentInterface {
        anotherField: String
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field ParentInterface.field expected but ChildInterface does not provide it.",
				locations = {
					{
						line = 7,
						column = 9,
					},
					{
						line = 10,
						column = 7,
					},
				},
			})
		end)

		it("rejects an Interface with an incorrectly typed Interface field", function()
			local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      interface ParentInterface {
        field(input: String): String
      }

      interface ChildInterface implements ParentInterface {
        field(input: String): Int
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field ParentInterface.field expects type String but ChildInterface.field is type Int.",
				locations = {
					{
						line = 7,
						column = 31,
					},
					{
						line = 11,
						column = 31,
					},
				},
			})
		end)

		it("rejects an Interface with a differently typed Interface field", function()
			local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      type A { foo: String }
      type B { foo: String }

      interface ParentInterface {
        field: A
      }

      interface ChildInterface implements ParentInterface {
        field: B
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field ParentInterface.field expects type A but ChildInterface.field is type B.",
				locations = {
					{
						line = 10,
						column = 16,
					},
					{
						line = 14,
						column = 16,
					},
				},
			})
		end)

		it("accepts an Interface with a subtyped Interface field (interface)", function()
			local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      interface ParentInterface {
        field: ParentInterface
      }

      interface ChildInterface implements ParentInterface {
        field: ChildInterface
      }
    ]])

			expect(validateSchema(schema)).toEqual({})
		end)

		it("accepts an Interface with a subtyped Interface field (union)", function()
			local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      type SomeObject {
        field: String
      }

      union SomeUnionType = SomeObject

      interface ParentInterface {
        field: SomeUnionType
      }

      interface ChildInterface implements ParentInterface {
        field: SomeObject
      }
    ]])

			expect(validateSchema(schema)).toEqual({})
		end)

		it("rejects an Interface implementing a non-Interface type", function()
			local schema = buildSchema([[

      type Query {
        field: String
      }

      input SomeInputObject {
        field: String
      }

      interface BadInterface implements SomeInputObject {
        field: String
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Type BadInterface must only implement Interface types, it cannot implement SomeInputObject.",
				locations = {
					{
						line = 10,
						column = 41,
					},
				},
			})
		end)

		it("rejects an Interface missing an Interface argument", function()
			local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      interface ParentInterface {
        field(input: String): String
      }

      interface ChildInterface implements ParentInterface {
        field: String
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field argument ParentInterface.field(input:) expected but ChildInterface.field does not provide it.",
				locations = {
					{
						line = 7,
						column = 15,
					},
					{
						line = 11,
						column = 9,
					},
				},
			})
		end)

		it("rejects an Interface with an incorrectly typed Interface argument", function()
			local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      interface ParentInterface {
        field(input: String): String
      }

      interface ChildInterface implements ParentInterface {
        field(input: Int): String
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field argument ParentInterface.field(input:) expects type String but ChildInterface.field(input:) is type Int.",
				locations = {
					{
						line = 7,
						column = 22,
					},
					{
						line = 11,
						column = 22,
					},
				},
			})
		end)

		it("rejects an Interface with both an incorrectly typed field and argument", function()
			local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      interface ParentInterface {
        field(input: String): String
      }

      interface ChildInterface implements ParentInterface {
        field(input: Int): Int
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field ParentInterface.field expects type String but ChildInterface.field is type Int.",
				locations = {
					{
						line = 7,
						column = 31,
					},
					{
						line = 11,
						column = 28,
					},
				},
			})
			expect(validateSchema(schema)[2]).toObjectContain({
				message = "Interface field argument ParentInterface.field(input:) expects type String but ChildInterface.field(input:) is type Int.",
				locations = {
					{
						line = 7,
						column = 22,
					},
					{
						line = 11,
						column = 22,
					},
				},
			})
		end)

		it(
			"rejects an Interface which implements an Interface field along with additional required arguments",
			function()
				local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      interface ParentInterface {
        field(baseArg: String): String
      }

      interface ChildInterface implements ParentInterface {
        field(
          baseArg: String,
          requiredArg: String!
          optionalArg1: String,
          optionalArg2: String = "",
        ): String
      }
    ]])

				expect(validateSchema(schema)[1]).toObjectContain({
					message = "Object field ChildInterface.field includes required argument requiredArg that is missing from the Interface field ParentInterface.field.",
					locations = {
						{
							line = 13,
							column = 11,
						},
						{
							line = 7,
							column = 9,
						},
					},
				})
			end
		)

		it("accepts an Interface with an equivalently wrapped Interface field type", function()
			local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      interface ParentInterface {
        field: [String]!
      }

      interface ChildInterface implements ParentInterface {
        field: [String]!
      }
    ]])

			expect(validateSchema(schema)).toEqual({})
		end)

		it("rejects an Interface with a non-list Interface field list type", function()
			local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      interface ParentInterface {
        field: [String]
      }

      interface ChildInterface implements ParentInterface {
        field: String
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field ParentInterface.field expects type [String] but ChildInterface.field is type String.",
				locations = {
					{
						line = 7,
						column = 16,
					},
					{
						line = 11,
						column = 16,
					},
				},
			})
		end)

		it("rejects an Interface with a list Interface field non-list type", function()
			local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      interface ParentInterface {
        field: String
      }

      interface ChildInterface implements ParentInterface {
        field: [String]
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field ParentInterface.field expects type String but ChildInterface.field is type [String].",
				locations = {
					{
						line = 7,
						column = 16,
					},
					{
						line = 11,
						column = 16,
					},
				},
			})
		end)

		it("accepts an Interface with a subset non-null Interface field type", function()
			local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      interface ParentInterface {
        field: String
      }

      interface ChildInterface implements ParentInterface {
        field: String!
      }
    ]])

			expect(validateSchema(schema)).toEqual({})
		end)

		it("rejects an Interface with a superset nullable Interface field type", function()
			local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      interface ParentInterface {
        field: String!
      }

      interface ChildInterface implements ParentInterface {
        field: String
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Interface field ParentInterface.field expects type String! but ChildInterface.field is type String.",
				locations = {
					{
						line = 7,
						column = 16,
					},
					{
						line = 11,
						column = 16,
					},
				},
			})
		end)

		it("rejects an Object missing a transitive interface", function()
			local schema = buildSchema([[

      type Query {
        test: ChildInterface
      }

      interface SuperInterface {
        field: String!
      }

      interface ParentInterface implements SuperInterface {
        field: String!
      }

      interface ChildInterface implements ParentInterface {
        field: String!
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Type ChildInterface must implement SuperInterface because it is implemented by ParentInterface.",
				locations = {
					{
						line = 10,
						column = 44,
					},
					{
						line = 14,
						column = 43,
					},
				},
			})
		end)

		it("rejects a self reference interface", function()
			local schema = buildSchema([[

      type Query {
        test: FooInterface
      }

      interface FooInterface implements FooInterface {
        field: String
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Type FooInterface cannot implement itself because it would create a circular reference.",
				locations = {
					{
						line = 6,
						column = 41,
					},
				},
			})
		end)

		it("rejects a circular Interface implementation", function()
			local schema = buildSchema([[

      type Query {
        test: FooInterface
      }

      interface FooInterface implements BarInterface {
        field: String
      }

      interface BarInterface implements FooInterface {
        field: String
      }
    ]])

			expect(validateSchema(schema)[1]).toObjectContain({
				message = "Type FooInterface cannot implement BarInterface because it would create a circular reference.",
				locations = {
					{
						line = 10,
						column = 41,
					},
					{
						line = 6,
						column = 41,
					},
				},
			})
			expect(validateSchema(schema)[2]).toObjectContain({
				message = "Type BarInterface cannot implement FooInterface because it would create a circular reference.",
				locations = {
					{
						line = 6,
						column = 41,
					},
					{
						line = 10,
						column = 41,
					},
				},
			})
		end)
	end)

	describe("assertValidSchema", function()
		it("do not throw on valid schemas", function()
			local schema = buildSchema([[
	      type Query {
	        foo: String
	      }
	    ]])

			expect(function()
				return assertValidSchema(schema)
			end).never.to.throw()
		end)
		it("include multiple errors into a description", function()
			local schema = buildSchema("type SomeType")

			expect(function()
				return assertValidSchema(schema)
			end).toThrow(dedent([[
	      Query root type must be provided.

	      Type SomeType must define one or more fields.]]))
		end)
	end)
end

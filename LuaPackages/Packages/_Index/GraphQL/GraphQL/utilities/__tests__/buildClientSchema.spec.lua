--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/buildClientSchema-test.js

return function()
	local utilitiesWorkspace = script.Parent.Parent
	local srcWorkspace = utilitiesWorkspace.Parent
	local rootWorkspace = srcWorkspace.Parent
	local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
	local Array = LuauPolyfill.Array
	local Map = LuauPolyfill.Map

	-- ROBLOX deviation: utils
	local NULL = require(srcWorkspace.luaUtils.null)

	local dedent = require(srcWorkspace.__testUtils__.dedent).dedent

	local graphqlSync = require(srcWorkspace.graphql).graphqlSync

	local GraphQLSchema = require(srcWorkspace.type.schema).GraphQLSchema

	local definitionImport = require(srcWorkspace.type.definition)
	local assertEnumType = definitionImport.assertEnumType
	local GraphQLObjectType = definitionImport.GraphQLObjectType
	local GraphQLEnumType = definitionImport.GraphQLEnumType
	local scalarsImport = require(srcWorkspace.type.scalars)
	local GraphQLInt = scalarsImport.GraphQLInt
	local GraphQLFloat = scalarsImport.GraphQLFloat
	local GraphQLString = scalarsImport.GraphQLString
	local GraphQLBoolean = scalarsImport.GraphQLBoolean
	local GraphQLID = scalarsImport.GraphQLID

	local printSchema = require(utilitiesWorkspace.printSchema).printSchema
	local buildSchema = require(utilitiesWorkspace.buildASTSchema).buildSchema
	local buildClientSchema = require(utilitiesWorkspace.buildClientSchema).buildClientSchema
	local introspectionFromSchema =
		require(utilitiesWorkspace.introspectionFromSchema).introspectionFromSchema

	--[[*
	--  * This function does a full cycle of going from a string with the contents of
	--  * the SDL, build in-memory GraphQLSchema from it, produce a client-side
	--  * representation of the schema by using "buildClientSchema" and then
	--  * returns that schema printed as SDL.
	--  *]]
	local function cycleIntrospection(expect_, sdlString)
		local serverSchema = buildSchema(sdlString)
		local initialIntrospection = introspectionFromSchema(serverSchema)
		local clientSchema = buildClientSchema(initialIntrospection)
		local secondIntrospection = introspectionFromSchema(clientSchema)

		--[[*
		-- * If the client then runs the introspection query against the client-side
		-- * schema, it should get a result identical to what was returned by the server
		-- *]]
		expect_(secondIntrospection).toEqual(initialIntrospection)

		return printSchema(clientSchema)
	end

	describe("Type System: build schema from introspection", function()
		it("builds a simple schema", function()
			local sdl = dedent([[

      """Simple schema"""
      schema {
        query: Simple
      }

      """This is a simple type"""
      type Simple {
        """This is a string field"""
        string: String
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("builds a schema without the query type", function()
			local sdl = dedent([[

      type Query {
        foo: String
      }
    ]])

			local schema = buildSchema(sdl)
			local introspection = introspectionFromSchema(schema)

			introspection.__schema.queryType = nil

			local clientSchema = buildClientSchema(introspection)
			expect(clientSchema:getQueryType()).to.equal(NULL)
			expect(printSchema(clientSchema)).to.equal(sdl)
		end)

		it("builds a simple schema with all operation types", function()
			local sdl = dedent([[

      schema {
        query: QueryType
        mutation: MutationType
        subscription: SubscriptionType
      }

      """This is a simple mutation type"""
      type MutationType {
        """Set the string field"""
        string: String
      }

      """This is a simple query type"""
      type QueryType {
        """This is a string field"""
        string: String
      }

      """This is a simple subscription type"""
      type SubscriptionType {
        """This is a string field"""
        string: String
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("uses built-in scalars when possible", function()
			local sdl = dedent([[

      scalar CustomScalar

      type Query {
        int: Int
        float: Float
        string: String
        boolean: Boolean
        id: ID
        custom: CustomScalar
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)

			local schema = buildSchema(sdl)
			local introspection = introspectionFromSchema(schema)
			local clientSchema = buildClientSchema(introspection)

			-- Built-ins are used
			expect(clientSchema:getType("Int")).to.equal(GraphQLInt)
			expect(clientSchema:getType("Float")).to.equal(GraphQLFloat)
			expect(clientSchema:getType("String")).to.equal(GraphQLString)
			expect(clientSchema:getType("Boolean")).to.equal(GraphQLBoolean)
			expect(clientSchema:getType("ID")).to.equal(GraphQLID)

			-- Custom are built
			local customScalar = schema:getType("CustomScalar")
			expect(clientSchema:getType("CustomScalar")).never.to.equal(customScalar)
		end)

		it("includes standard types only if they are used", function()
			local schema = buildSchema([[

      type Query {
        foo: String
      }
    ]])
			local introspection = introspectionFromSchema(schema)
			local clientSchema = buildClientSchema(introspection)

			expect(clientSchema:getType("Int")).to.equal(nil)
			expect(clientSchema:getType("Float")).to.equal(nil)
			expect(clientSchema:getType("ID")).to.equal(nil)
		end)

		it("builds a schema with a recursive type reference", function()
			local sdl = dedent([[

      schema {
        query: Recur
      }

      type Recur {
        recur: Recur
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("builds a schema with a circular type reference", function()
			local sdl = dedent([[

      type Dog {
        bestFriend: Human
      }

      type Human {
        bestFriend: Dog
      }

      type Query {
        dog: Dog
        human: Human
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("builds a schema with an interface", function()
			local sdl = dedent([[

      type Dog implements Friendly {
        bestFriend: Friendly
      }

      interface Friendly {
        """The best friend of this friendly thing"""
        bestFriend: Friendly
      }

      type Human implements Friendly {
        bestFriend: Friendly
      }

      type Query {
        friendly: Friendly
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("builds a schema with an interface hierarchy", function()
			local sdl = dedent([[

      type Dog implements Friendly & Named {
        bestFriend: Friendly
        name: String
      }

      interface Friendly implements Named {
        """The best friend of this friendly thing"""
        bestFriend: Friendly
        name: String
      }

      type Human implements Friendly & Named {
        bestFriend: Friendly
        name: String
      }

      interface Named {
        name: String
      }

      type Query {
        friendly: Friendly
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("builds a schema with an implicit interface", function()
			local sdl = dedent([[

      type Dog implements Friendly {
        bestFriend: Friendly
      }

      interface Friendly {
        """The best friend of this friendly thing"""
        bestFriend: Friendly
      }

      type Query {
        dog: Dog
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("builds a schema with a union", function()
			local sdl = dedent([[

      type Dog {
        bestFriend: Friendly
      }

      union Friendly = Dog | Human

      type Human {
        bestFriend: Friendly
      }

      type Query {
        friendly: Friendly
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("builds a schema with complex field values", function()
			local sdl = dedent([[

      type Query {
        string: String
        listOfString: [String]
        nonNullString: String!
        nonNullListOfString: [String]!
        nonNullListOfNonNullString: [String!]!
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("builds a schema with field arguments", function()
			local sdl = dedent([[

      type Query {
        """A field with a single arg"""
        one(
          """This is an int arg"""
          intArg: Int
        ): String

        """A field with a two args"""
        two(
          """This is an list of int arg"""
          listArg: [Int]

          """This is a required arg"""
          requiredArg: Boolean!
        ): String
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("builds a schema with default value on custom scalar field", function()
			local sdl = dedent([[

      scalar CustomScalar

      type Query {
        testField(testArg: CustomScalar = "default"): String
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("builds a schema with an enum", function()
			local foodEnum = GraphQLEnumType.new({
				name = "Food",
				description = "Varieties of food stuffs",
				values = Map.new({
					{
						"VEGETABLES",
						{
							description = "Foods that are vegetables.",
							value = 1,
						},
					},
					{ "FRUITS", { value = 2 } },
					{
						"OILS",
						{
							value = 3,
							deprecationReason = "Too fatty",
						},
					},
				}),
			})
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "EnumFields",
					fields = {
						food = {
							description = "Repeats the arg you give it",
							type = foodEnum,
							args = {
								kind = {
									description = "what kind of food?",
									type = foodEnum,
								},
							},
						},
					},
				}),
			})

			local introspection = introspectionFromSchema(schema)
			local clientSchema = buildClientSchema(introspection)

			local secondIntrospection = introspectionFromSchema(clientSchema)
			expect(secondIntrospection).toEqual(introspection)

			-- It's also an Enum type on the client.
			local clientFoodEnum = assertEnumType(clientSchema:getType("Food"))

			-- Client types do not get server-only values, so `value` mirrors `name`,
			-- rather than using the integers defined in the "server" schema.
			expect(clientFoodEnum:getValues()).toEqual({
				{
					name = "VEGETABLES",
					description = "Foods that are vegetables.",
					value = "VEGETABLES",
					deprecationReason = NULL,
					extensions = nil,
					astNode = nil,
				},
				{
					name = "FRUITS",
					description = NULL,
					value = "FRUITS",
					deprecationReason = NULL,
					extensions = nil,
					astNode = nil,
				},
				{
					name = "OILS",
					description = NULL,
					value = "OILS",
					deprecationReason = "Too fatty",
					extensions = nil,
					astNode = nil,
				},
			})
		end)

		it("builds a schema with an input object", function()
			local sdl = dedent([[

      """An input address"""
      input Address {
        """What street is this address?"""
        street: String!

        """The city the address is within?"""
        city: String!

        """The country (blank will assume USA)."""
        country: String = "USA"
      }

      type Query {
        """Get a geocode from an address"""
        geocode(
          """The address to lookup"""
          address: Address
        ): String
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("builds a schema with field arguments with default values", function()
			local sdl = dedent([[

      input Geo {
        lat: Float
        lon: Float
      }

      type Query {
        defaultInt(intArg: Int = 30): String
        defaultList(listArg: [Int] = [1, 2, 3]): String
        defaultObject(objArg: Geo = {lat: 37.485, lon: -122.148}): String
        defaultNull(intArg: Int = null): String
        noDefault(intArg: Int): String
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("builds a schema with custom directives", function()
			local sdl = dedent([[

      """This is a custom directive"""
      directive @customDirective repeatable on FIELD

      type Query {
        string: String
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("builds a schema without directives", function()
			local sdl = dedent([[

      type Query {
        string: String
      }
    ]])

			local schema = buildSchema(sdl)
			local introspection = introspectionFromSchema(schema)

			introspection.__schema.directives = nil

			local clientSchema = buildClientSchema(introspection)

			expect(#schema:getDirectives() > 0).to.equal(true)
			expect(clientSchema:getDirectives()).toEqual({})
			expect(printSchema(clientSchema)).to.equal(sdl)
		end)

		it("builds a schema aware of deprecation", function()
			local sdl = dedent([[

      directive @someDirective(
        """This is a shiny new argument"""
        shinyArg: SomeInputObject

        """This was our design mistake :("""
        oldArg: String @deprecated(reason: "Use shinyArg")
      ) on QUERY

      enum Color {
        """So rosy"""
        RED

        """So grassy"""
        GREEN

        """So calming"""
        BLUE

        """So sickening"""
        MAUVE @deprecated(reason: "No longer in fashion")
      }

      input SomeInputObject {
        """Nothing special about it, just deprecated for some unknown reason"""
        oldField: String @deprecated(reason: "Don't use it, use newField instead!")

        """Same field but with a new name"""
        newField: String
      }

      type Query {
        """This is a shiny string field"""
        shinyString: String

        """This is a deprecated string field"""
        deprecatedString: String @deprecated(reason: "Use shinyString")

        """Color of a week"""
        color: Color

        """Some random field"""
        someField(
          """This is a shiny new argument"""
          shinyArg: SomeInputObject

          """This was our design mistake :("""
          oldArg: String @deprecated(reason: "Use shinyArg")
        ): String
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("builds a schema with empty deprecation reasons", function()
			local sdl = dedent([[

      directive @someDirective(someArg: SomeInputObject @deprecated(reason: "")) on QUERY

      type Query {
        someField(someArg: SomeInputObject @deprecated(reason: "")): SomeEnum @deprecated(reason: "")
      }

      input SomeInputObject {
        someInputField: String @deprecated(reason: "")
      }

      enum SomeEnum {
        SOME_VALUE @deprecated(reason: "")
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("builds a schema with specifiedBy url", function()
			local sdl = dedent([[

      scalar Foo @specifiedBy(url: "https://example.com/foo_spec")

      type Query {
        foo: Foo
      }
    ]])

			expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
		end)

		it("can use client schema for limited execution", function()
			local schema = buildSchema([[

      scalar CustomScalar

      type Query {
        foo(custom1: CustomScalar, custom2: CustomScalar): String
      }
    ]])

			local introspection = introspectionFromSchema(schema)
			local clientSchema = buildClientSchema(introspection)

			local result = graphqlSync({
				schema = clientSchema,
				source = "query Limited($v: CustomScalar) { foo(custom1: 123, custom2: $v) }",
				rootValue = {
					foo = "bar",
					unused = "value",
				},
				variableValues = {
					v = "baz",
				},
			})

			expect(result.data).toEqual({
				foo = "bar",
			})
		end)

		describe("can build invalid schema", function()
			local schema = buildSchema("type Query", { assumeValid = true })

			local introspection = introspectionFromSchema(schema)
			local clientSchema = buildClientSchema(introspection, { assumeValid = true })

			expect(clientSchema:toConfig().assumeValid).to.equal(true)
		end)

		describe("throws when given invalid introspection", function()
			local dummySchema = buildSchema([[

      type Query {
        foo(bar: String): String
      }

      interface SomeInterface {
        foo: String
      }

      union SomeUnion = Query

      enum SomeEnum { FOO }

      input SomeInputObject {
        foo: String
      }

      directive @SomeDirective on QUERY
    ]])

			it("throws when introspection is missing __schema property", function()
				-- $FlowExpectedError[incompatible-call]
				expect(function()
					return buildClientSchema(NULL)
				end).toThrow(
					'Invalid or incomplete introspection result. Ensure that you are passing "data" property of introspection response and no "errors" was returned alongside: null.'
				)

				-- ROBLOX deviation: {} is treated as an Array in Lua so when printed it becomes [] rather than {}
				-- $FlowExpectedError[prop-missing]
				expect(function()
					return buildClientSchema({})
				end).toThrow(
					'Invalid or incomplete introspection result. Ensure that you are passing "data" property of introspection response and no "errors" was returned alongside: [].'
				)
			end)

			it("throws when referenced unknown type", function()
				local introspection = introspectionFromSchema(dummySchema)

				introspection.__schema.types = Array.filter(
					introspection.__schema.types,
					function(_ref)
						local name = _ref.name
						return name ~= "Query"
					end
				)

				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					"Invalid or incomplete schema, unknown type: Query. Ensure that a full introspection query is used in order to build a client schema."
				)
			end)

			it("throws when missing definition for one of the standard scalars", function()
				local schema = buildSchema([[

        type Query {
          foo: Float
        }
      ]])
				local introspection = introspectionFromSchema(schema)

				introspection.__schema.types = Array.filter(
					introspection.__schema.types,
					function(_ref)
						local name = _ref.name
						return name ~= "Float"
					end
				)

				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					"Invalid or incomplete schema, unknown type: Float. Ensure that a full introspection query is used in order to build a client schema."
				)
			end)

			it("throws when type reference is missing name", function()
				local introspection = introspectionFromSchema(dummySchema)

				expect(introspection.__schema.queryType.name).to.be.ok()

				introspection.__schema.queryType.name = nil

				-- ROBLOX deviation: {} is treated as an Array in Lua so when printed it becomes [] rather than {}
				expect(function()
					return buildClientSchema(introspection)
				end).toThrow("Unknown type reference: [].")
			end)

			it("throws when missing kind", function()
				local introspection = introspectionFromSchema(dummySchema)
				local queryTypeIntrospection = Array.find(
					introspection.__schema.types,
					function(_ref)
						local name = _ref.name
						return name == "Query"
					end
				)

				expect(queryTypeIntrospection.kind).to.be.ok()

				queryTypeIntrospection.kind = nil

				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					--[[
						ROBLOX deviation: ordering in printed object keys is not guaranteed.
						We can't assume that 'name' property will be printed first
						With original ordering would be:
						"Invalid or incomplete introspection result. Ensure that a full introspection query is used in order to build a client schema: { name: \"Query\", .* }%."
					]]
					'Invalid or incomplete introspection result. Ensure that a full introspection query is used in order to build a client schema: { .* ?name: "Query",?.* }%.',
					true
				)
			end)

			it("throws when missing interfaces", function()
				local introspection = introspectionFromSchema(dummySchema)
				local queryTypeIntrospection = Array.find(
					introspection.__schema.types,
					function(_ref)
						local name = _ref.name
						return name == "Query"
					end
				)

				expect(queryTypeIntrospection.interfaces).to.be.ok()

				queryTypeIntrospection.interfaces = nil

				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					--[[
						ROBLOX deviation: ordering in printed object keys is not guaranteed.
						We can't assume that 'kind' and 'name' properties will be printed first
						With original ordering would be:
						"Introspection result missing interfaces: { kind: \"OBJECT\", name: \"Query\", .* }%."
					]]
					'Introspection result missing interfaces: { .* ?kind: "OBJECT",?.* }%.',
					true
				)
				-- ROBLOX deviation: adding second matcher to test for both 'kind' and 'name' properties.
				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					'Introspection result missing interfaces: { .* ?name: "Query",?.* }%.',
					true
				)
			end)

			it("Legacy support for interfaces with null as interfaces field", function()
				local introspection = introspectionFromSchema(dummySchema)
				local someInterfaceIntrospection = Array.find(
					introspection.__schema.types,
					function(_ref)
						local name = _ref.name
						return name == "SomeInterface"
					end
				)

				expect(someInterfaceIntrospection.interfaces).to.be.ok()
				someInterfaceIntrospection.interfaces = nil

				local clientSchema = buildClientSchema(introspection)
				expect(printSchema(clientSchema)).to.equal(printSchema(dummySchema))
			end)

			it("throws when missing fields", function()
				local introspection = introspectionFromSchema(dummySchema)
				local queryTypeIntrospection = Array.find(
					introspection.__schema.types,
					function(_ref)
						local name = _ref.name
						return name == "Query"
					end
				)

				expect(queryTypeIntrospection.fields).to.be.ok()
				queryTypeIntrospection.fields = nil

				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					--[[
						ROBLOX deviation: ordering in printed object keys is not guaranteed.
						We can't assume that 'kind' and 'name' properties will be printed first
						With original ordering would be:
						"Introspection result missing fields: { kind: \"OBJECT\", name: \"Query\", .* }%."
					]]
					'Introspection result missing fields: { .* ?kind: "OBJECT",?.* }%.',
					true
				)
				-- ROBLOX deviation: adding second matcher to test for both 'kind' and 'name' properties.
				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					'Introspection result missing fields: { .* ?name: "Query",?.* }%.',
					true
				)
			end)

			it("throws when missing field args", function()
				local introspection = introspectionFromSchema(dummySchema)
				local queryTypeIntrospection = Array.find(
					introspection.__schema.types,
					function(_ref)
						local name = _ref.name
						return name == "Query"
					end
				)

				expect(queryTypeIntrospection.fields[1].args).to.be.ok()
				queryTypeIntrospection.fields[1].args = nil

				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					--[[
						ROBLOX deviation: ordering in printed object keys is not guaranteed.
						We can't assume that 'name' property will be printed first
						With original ordering would be:
						"Introspection result missing field args: { name: \"foo\", .* }%."
					]]
					'Introspection result missing field args: { .* ?name: "foo",?.* }%.',
					true
				)
			end)

			it("throws when output type is used as an arg type", function()
				local introspection = introspectionFromSchema(dummySchema)
				local queryTypeIntrospection = Array.find(
					introspection.__schema.types,
					function(_ref)
						local name = _ref.name
						return name == "Query"
					end
				)

				expect(queryTypeIntrospection.fields[1].args[1].type.name).to.equal("String")
				queryTypeIntrospection.fields[1].args[1].type.name = "SomeUnion"

				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					"Introspection must provide input type for arguments, but received: SomeUnion."
				)
			end)

			it("throws when input type is used as a field type", function()
				local introspection = introspectionFromSchema(dummySchema)
				local queryTypeIntrospection = Array.find(
					introspection.__schema.types,
					function(_ref)
						local name = _ref.name
						return name == "Query"
					end
				)

				expect(queryTypeIntrospection.fields[1].type.name).to.equal("String")
				queryTypeIntrospection.fields[1].type.name = "SomeInputObject"

				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					"Introspection must provide output type for fields, but received: SomeInputObject."
				)
			end)

			it("throws when missing possibleTypes", function()
				local introspection = introspectionFromSchema(dummySchema)
				local someUnionIntrospection = Array.find(
					introspection.__schema.types,
					function(_ref)
						local name = _ref.name
						return name == "SomeUnion"
					end
				)

				expect(someUnionIntrospection.possibleTypes).to.be.ok()
				someUnionIntrospection.possibleTypes = nil

				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					--[[
						ROBLOX deviation: ordering in printed object keys is not guaranteed.
						We can't assume that 'kind' and 'name' properties will be printed first
						With original ordering would be:
						"Introspection result missing possibleTypes: { kind: \"UNION\", name: \"SomeUnion\",.* }%."
					]]
					'Introspection result missing possibleTypes: { .* ?kind: "UNION",?.* }%.',
					true
				)
				-- ROBLOX deviation: adding second matcher to test for both 'kind' and 'name' properties.
				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					'Introspection result missing possibleTypes: { .* ?name: "SomeUnion",?.* }%.',
					true
				)
			end)

			it("throws when missing enumValues", function()
				local introspection = introspectionFromSchema(dummySchema)
				local someEnumIntrospection = Array.find(
					introspection.__schema.types,
					function(_ref)
						local name = _ref.name
						return name == "SomeEnum"
					end
				)

				expect(someEnumIntrospection.enumValues).to.be.ok()
				someEnumIntrospection.enumValues = nil

				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					--[[
						ROBLOX deviation: ordering in printed object keys is not guaranteed.
						We can't assume that 'kind' and 'name' properties will be printed first
						With original ordering would be:
						"Introspection result missing enumValues: { kind: \"ENUM\", name: \"SomeEnum\", .* }%."
					]]
					'Introspection result missing enumValues: { .* ?kind: "ENUM",?.* }%.',
					true
				)
				-- ROBLOX deviation: adding second matcher to test for both 'kind' and 'name' properties.
				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					'Introspection result missing enumValues: { .* ?name: "SomeEnum",?.* }%.',
					true
				)
			end)

			it("throws when missing inputFields", function()
				local introspection = introspectionFromSchema(dummySchema)
				local someInputObjectIntrospection = Array.find(
					introspection.__schema.types,
					function(_ref)
						local name = _ref.name
						return name == "SomeInputObject"
					end
				)

				expect(someInputObjectIntrospection.inputFields).to.be.ok()
				someInputObjectIntrospection.inputFields = nil

				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					--[[
						ROBLOX deviation: ordering in printed object keys is not guaranteed.
						We can't assume that 'kind' and 'name' properties will be printed first
						With original ordering would be:
						"Introspection result missing inputFields: { kind: \"INPUT_OBJECT\", name: \"SomeInputObject\", .* }%."
					]]
					'Introspection result missing inputFields: { .* ?kind: "INPUT_OBJECT",?.* }%.',
					true
				)
				-- ROBLOX deviation: adding second matcher to test for both 'kind' and 'name' properties.
				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					'Introspection result missing inputFields: { .* ?name: "SomeInputObject",?.* }%.',
					true
				)
			end)

			it("throws when missing directive locations", function()
				local introspection = introspectionFromSchema(dummySchema)

				local someDirectiveIntrospection = introspection.__schema.directives[1]
				expect(someDirectiveIntrospection).toObjectContain({
					name = "SomeDirective",
					locations = {
						"QUERY",
					},
				})
				someDirectiveIntrospection.locations = nil

				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					--[[
						ROBLOX deviation: ordering in printed object keys is not guaranteed.
						We can't assume that 'name' property will be printed first
						With original ordering would be:
						"Introspection result missing directive locations: { name: \"SomeDirective\", .* }%."
					]]
					'Introspection result missing directive locations: { .* ?name: "SomeDirective",?.* }%.',
					true
				)
			end)

			it("throws when missing directive args", function()
				local introspection = introspectionFromSchema(dummySchema)

				local someDirectiveIntrospection = introspection.__schema.directives[1]
				expect(someDirectiveIntrospection).toObjectContain({
					name = "SomeDirective",
					args = {},
				})
				someDirectiveIntrospection.args = nil

				expect(function()
					return buildClientSchema(introspection)
				end).toThrow(
					--[[
						ROBLOX deviation: ordering in printed object keys is not guaranteed.
						We can't assume that 'name' property will be printed first
						With original ordering would be:
						"Introspection result missing directive args: { name: \"SomeDirective\", .* }%."
					]]
					'Introspection result missing directive args: { .* ?name: "SomeDirective",?.* }%.',
					true
				)
			end)
		end)

		describe("very deep decorators are not supported", function()
			it("fails on very deep (> 7 levels) lists", function()
				local schema = buildSchema([=[

        type Query {
          foo: [[[[[[[[String]]]]]]]]
        }
      ]=])

				local introspection = introspectionFromSchema(schema)
				expect(function()
					return buildClientSchema(introspection)
				end).toThrow("Decorated type deeper than introspection query.")
			end)

			it("fails on a very deep (> 7 levels) non-null", function()
				local schema = buildSchema([[

        type Query {
          foo: [[[[String!]!]!]!]
        }
      ]])

				local introspection = introspectionFromSchema(schema)
				expect(function()
					return buildClientSchema(introspection)
				end).toThrow("Decorated type deeper than introspection query.")
			end)

			it("succeeds on deep (<= 7 levels) types", function()
				-- e.g., fully non-null 3D matrix
				local sdl = dedent([[

        type Query {
          foo: [[[String!]!]!]!
        }
      ]])

				expect(cycleIntrospection(expect, sdl)).to.equal(sdl)
			end)
		end)

		describe("prevents infinite recursion on invalid introspection", function()
			it("recursive interfaces", function()
				local sdl = ([[

        type Query {
          foo: Foo
        }

        type Foo implements Foo {
          foo: String
        }
      ]]):format()
				local schema = buildSchema(sdl, { assumeValid = true })
				local introspection = introspectionFromSchema(schema)

				local fooIntrospection = Array.find(introspection.__schema.types, function(type_)
					return type_.name == "Foo"
				end)
				expect(fooIntrospection).toObjectContain({
					name = "Foo",
					interfaces = {
						{
							kind = "OBJECT",
							name = "Foo",
							ofType = nil,
						},
					},
				})

				expect(function()
					return buildClientSchema(introspection)
				end).toThrow("Expected Foo to be a GraphQL Interface type.")
			end)

			it("recursive union", function()
				local sdl = ([[

        type Query {
          foo: Foo
        }

        union Foo = Foo
      ]]):format()
				local schema = buildSchema(sdl, { assumeValid = true })
				local introspection = introspectionFromSchema(schema)

				local fooIntrospection = Array.find(introspection.__schema.types, function(type_)
					return type_.name == "Foo"
				end)
				expect(fooIntrospection).toObjectContain({
					name = "Foo",
					possibleTypes = {
						{
							kind = "UNION",
							name = "Foo",
							ofType = nil,
						},
					},
				})

				expect(function()
					return buildClientSchema(introspection)
				end).toThrow("Expected Foo to be a GraphQL Object type.")
			end)
		end)
	end)
end

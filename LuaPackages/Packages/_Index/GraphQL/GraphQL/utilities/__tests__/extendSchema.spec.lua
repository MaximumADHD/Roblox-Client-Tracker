--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/056fac955b7172e55b33e0a1b35b4ddb8951a99c/src/utilities/__tests__/extendSchema-test.js

return function()
	local srcWorkspace = script.Parent.Parent.Parent
	local Packages = srcWorkspace.Parent
	local LuauPolyfill = require(Packages.LuauPolyfill)
	local Array = LuauPolyfill.Array

	local dedent = require(srcWorkspace.__testUtils__.dedent).dedent
	local invariant = require(srcWorkspace.jsutils.invariant).invariant
	local language = srcWorkspace.language
	local Kind = require(language.kinds).Kind
	local parse = require(language.parser).parse
	local print_ = require(language.printer).print
	local graphqlSync = require(srcWorkspace.graphql).graphqlSync

	local typeWorkspace = srcWorkspace.type
	local GraphQLSchema = require(typeWorkspace.schema).GraphQLSchema
	local validateSchema = require(typeWorkspace.validate).validateSchema
	local directives = require(typeWorkspace.directives)
	local assertDirective = directives.assertDirective

	local scalars = require(typeWorkspace.scalars)
	local GraphQLID = scalars.GraphQLID
	local GraphQLInt = scalars.GraphQLInt
	local GraphQLFloat = scalars.GraphQLFloat
	local GraphQLString = scalars.GraphQLString
	local GraphQLBoolean = scalars.GraphQLBoolean

	local definition = require(typeWorkspace.definition)
	local assertObjectType = definition.assertObjectType
	local assertInputObjectType = definition.assertInputObjectType
	local assertEnumType = definition.assertEnumType
	local assertUnionType = definition.assertUnionType
	local assertInterfaceType = definition.assertInterfaceType
	local assertScalarType = definition.assertScalarType
	local utilities = srcWorkspace.utilities
	local concatAST = require(utilities.concatAST).concatAST
	local printSchema = require(utilities.printSchema).printSchema
	local extendSchema = require(utilities.extendSchema).extendSchema
	local buildSchema = require(utilities.buildASTSchema).buildSchema

	local function printExtensionNodes(obj): string
		invariant((obj and obj.extensionASTNodes) ~= nil)
		return print_({
			kind = Kind.DOCUMENT,
			definitions = obj.extensionASTNodes,
		})
	end

	local function printSchemaChanges(schema, extendedSchema): string
		local schemaDefinitions = Array.map(parse(printSchema(schema)).definitions, print_)
		local ast = parse(printSchema(extendedSchema))
		return print_({
			kind = Kind.DOCUMENT,
			definitions = Array.filter(ast.definitions, function(node)
				return not Array.includes(schemaDefinitions, print_(node))
			end),
		})
	end

	local function printASTNode(obj): string
		invariant((obj and obj.astNode) ~= nil)
		return print_(obj.astNode)
	end

	describe("extendSchema", function()
		it("returns the original schema when there are no type definitions", function()
			local schema = buildSchema("type Query")
			local extendedSchema = extendSchema(schema, parse("{ field }"))
			expect(extendedSchema).to.equal(schema)
		end)

		it("can be used for limited execution", function()
			local schema = buildSchema("type Query")
			local extendAST = parse([[

      extend type Query {
        newField: String
      }
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			local result = graphqlSync({
				schema = extendedSchema,
				source = "{ newField }",
				rootValue = { newField = 123 },
			})
			expect(result).toEqual({
				data = { newField = "123" },
			})
		end)

		it("extends objects by adding new fields", function()
			local schema = buildSchema([[

      type Query {
        someObject: SomeObject
      }

      type SomeObject implements AnotherInterface & SomeInterface {
        self: SomeObject
        tree: [SomeObject]!
        """Old field description."""
        oldField: String
      }

      interface SomeInterface {
        self: SomeInterface
      }

      interface AnotherInterface {
        self: SomeObject
      }
    ]])
			local extensionSDL = dedent([[

      extend type SomeObject {
        """New field description."""
        newField(arg: Boolean): String
      }
    ]])
			local extendedSchema = extendSchema(schema, parse(extensionSDL))

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(dedent([[

      type SomeObject implements AnotherInterface & SomeInterface {
        self: SomeObject
        tree: [SomeObject]!
        """Old field description."""
        oldField: String
        """New field description."""
        newField(arg: Boolean): String
      }
    ]]))
		end)

		it("extends objects with standard type fields", function()
			local schema = buildSchema("type Query")

			-- // String and Boolean are always included through introspection types
			expect(schema:getType("Int")).to.equal(nil)
			expect(schema:getType("Float")).to.equal(nil)
			expect(schema:getType("String")).to.equal(GraphQLString)
			expect(schema:getType("Boolean")).to.equal(GraphQLBoolean)
			expect(schema:getType("ID")).to.equal(nil)

			local extendAST = parse([[

      extend type Query {
        bool: Boolean
      }
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(extendedSchema:getType("Int")).to.equal(nil)
			expect(extendedSchema:getType("Float")).to.equal(nil)
			expect(extendedSchema:getType("String")).to.equal(GraphQLString)
			expect(extendedSchema:getType("Boolean")).to.equal(GraphQLBoolean)
			expect(extendedSchema:getType("ID")).to.equal(nil)

			local extendTwiceAST = parse([[

      extend type Query {
        int: Int
        float: Float
        id: ID
      }
    ]])
			local extendedTwiceSchema = extendSchema(schema, extendTwiceAST)

			expect(validateSchema(extendedTwiceSchema)).toEqual({})
			expect(extendedTwiceSchema:getType("Int")).to.equal(GraphQLInt)
			expect(extendedTwiceSchema:getType("Float")).to.equal(GraphQLFloat)
			expect(extendedTwiceSchema:getType("String")).to.equal(GraphQLString)
			expect(extendedTwiceSchema:getType("Boolean")).to.equal(GraphQLBoolean)
			expect(extendedTwiceSchema:getType("ID")).to.equal(GraphQLID)
		end)

		it("extends enums by adding new values", function()
			local schema = buildSchema([[

      type Query {
        someEnum(arg: SomeEnum): SomeEnum
      }

      directive @foo(arg: SomeEnum) on SCHEMA

      enum SomeEnum {
        """Old value description."""
        OLD_VALUE
      }
    ]])
			local extendAST = parse([[

      extend enum SomeEnum {
        """New value description."""
        NEW_VALUE
      }
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(dedent([[

      enum SomeEnum {
        """Old value description."""
        OLD_VALUE
        """New value description."""
        NEW_VALUE
      }
    ]]))
		end)

		it("extends unions by adding new types", function()
			local schema = buildSchema([[

      type Query {
        someUnion: SomeUnion
      }

      union SomeUnion = Foo | Biz

      type Foo { foo: String }
      type Biz { biz: String }
      type Bar { bar: String }
    ]])
			local extendAST = parse([[

      extend union SomeUnion = Bar
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(dedent([[

      union SomeUnion = Foo | Biz | Bar
    ]]))
		end)

		it("allows extension of union by adding itself", function()
			local schema = buildSchema([[

      union SomeUnion
    ]])
			local extendAST = parse([[

      extend union SomeUnion = SomeUnion
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			expect(#validateSchema(extendedSchema) > 0).to.equal(true)
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(dedent([[

      union SomeUnion = SomeUnion
    ]]))
		end)

		it("extends inputs by adding new fields", function()
			local schema = buildSchema([[

      type Query {
        someInput(arg: SomeInput): String
      }

      directive @foo(arg: SomeInput) on SCHEMA

      input SomeInput {
        """Old field description."""
        oldField: String
      }
    ]])
			local extendAST = parse([[

      extend input SomeInput {
        """New field description."""
        newField: String
      }
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(dedent([[

      input SomeInput {
        """Old field description."""
        oldField: String
        """New field description."""
        newField: String
      }
    ]]))
		end)

		it("extends scalars by adding new directives", function()
			local schema = buildSchema([[

      type Query {
        someScalar(arg: SomeScalar): SomeScalar
      }

      directive @foo(arg: SomeScalar) on SCALAR

      input FooInput {
        foo: SomeScalar
      }

      scalar SomeScalar
    ]])
			local extensionSDL = dedent([[

      extend scalar SomeScalar @foo
    ]])
			local extendedSchema = extendSchema(schema, parse(extensionSDL))
			local someScalar = extendedSchema:getType("SomeScalar")

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printExtensionNodes(someScalar)).toEqual(extensionSDL)
		end)

		it("extends scalars by adding specifiedBy directive", function()
			local schema = buildSchema([[

      type Query {
        foo: Foo
      }

      scalar Foo

      directive @foo on SCALAR
    ]])
			local extensionSDL = dedent([[

      extend scalar Foo @foo

      extend scalar Foo @specifiedBy(url: "https://example.com/foo_spec")
    ]])
			local extendedSchema = extendSchema(schema, parse(extensionSDL))
			local foo = assertScalarType(extendedSchema:getType("Foo"))

			expect(foo.specifiedByUrl).to.equal("https://example.com/foo_spec")

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printExtensionNodes(foo)).toEqual(extensionSDL)
		end)

		it("correctly assign AST nodes to new and extended types", function()
			local schema = buildSchema([[

      type Query

      scalar SomeScalar
      enum SomeEnum
      union SomeUnion
      input SomeInput
      type SomeObject
      interface SomeInterface

      directive @foo on SCALAR
    ]])
			local firstExtensionAST = parse([[

      extend type Query {
        newField(testArg: TestInput): TestEnum
      }

      extend scalar SomeScalar @foo

      extend enum SomeEnum {
        NEW_VALUE
      }

      extend union SomeUnion = SomeObject

      extend input SomeInput {
        newField: String
      }

      extend interface SomeInterface {
        newField: String
      }

      enum TestEnum {
        TEST_VALUE
      }

      input TestInput {
        testInputField: TestEnum
      }
    ]])
			local extendedSchema = extendSchema(schema, firstExtensionAST)

			local secondExtensionAST = parse([[

      extend type Query {
        oneMoreNewField: TestUnion
      }

      extend scalar SomeScalar @test

      extend enum SomeEnum {
        ONE_MORE_NEW_VALUE
      }

      extend union SomeUnion = TestType

      extend input SomeInput {
        oneMoreNewField: String
      }

      extend interface SomeInterface {
        oneMoreNewField: String
      }

      union TestUnion = TestType

      interface TestInterface {
        interfaceField: String
      }

      type TestType implements TestInterface {
        interfaceField: String
      }

      directive @test(arg: Int) repeatable on FIELD | SCALAR
    ]])
			local extendedTwiceSchema = extendSchema(extendedSchema, secondExtensionAST)

			local extendedInOneGoSchema = extendSchema(
				schema,
				concatAST({ firstExtensionAST, secondExtensionAST })
			)
			expect(printSchema(extendedInOneGoSchema)).to.equal(printSchema(extendedTwiceSchema))

			local query = assertObjectType(extendedTwiceSchema:getType("Query"))
			local someEnum = assertEnumType(extendedTwiceSchema:getType("SomeEnum"))
			local someUnion = assertUnionType(extendedTwiceSchema:getType("SomeUnion"))
			local someScalar = assertScalarType(extendedTwiceSchema:getType("SomeScalar"))
			local someInput = assertInputObjectType(extendedTwiceSchema:getType("SomeInput"))
			local someInterface = assertInterfaceType(extendedTwiceSchema:getType("SomeInterface"))

			local testInput = assertInputObjectType(extendedTwiceSchema:getType("TestInput"))
			local testEnum = assertEnumType(extendedTwiceSchema:getType("TestEnum"))
			local testUnion = assertUnionType(extendedTwiceSchema:getType("TestUnion"))
			local testType = assertObjectType(extendedTwiceSchema:getType("TestType"))
			local testInterface = assertInterfaceType(extendedTwiceSchema:getType("TestInterface"))
			local testDirective = assertDirective(extendedTwiceSchema:getDirective("test"))

			expect(testType).toObjectContain({ extensionASTNodes = nil })
			expect(testEnum).toObjectContain({ extensionASTNodes = nil })
			expect(testUnion).toObjectContain({ extensionASTNodes = nil })
			expect(testInput).toObjectContain({ extensionASTNodes = nil })
			expect(testInterface).toObjectContain({ extensionASTNodes = nil })

			invariant(query.extensionASTNodes)
			invariant(someScalar.extensionASTNodes)
			invariant(someEnum.extensionASTNodes)
			invariant(someUnion.extensionASTNodes)
			invariant(someInput.extensionASTNodes)
			invariant(someInterface.extensionASTNodes)

			expect(
				Array.concat(
					{
						testInput.astNode,
						testEnum.astNode,
						testUnion.astNode,
						testInterface.astNode,
						testType.astNode,
						testDirective.astNode,
					},
					query.extensionASTNodes,
					someScalar.extensionASTNodes,
					someEnum.extensionASTNodes,
					someUnion.extensionASTNodes,
					someInput.extensionASTNodes,
					someInterface.extensionASTNodes
				)
			).toHaveSameMembers(
				Array.concat(firstExtensionAST.definitions, secondExtensionAST.definitions)
			)

			local newField = query:getFields().newField
			expect(printASTNode(newField)).to.equal("newField(testArg: TestInput): TestEnum")
			expect(printASTNode(newField.args[1])).to.equal("testArg: TestInput")
			expect(printASTNode(query:getFields().oneMoreNewField)).to.equal(
				"oneMoreNewField: TestUnion"
			)

			expect(printASTNode(someEnum:getValue("NEW_VALUE"))).to.equal("NEW_VALUE")
			expect(printASTNode(someEnum:getValue("ONE_MORE_NEW_VALUE"))).to.equal(
				"ONE_MORE_NEW_VALUE"
			)

			expect(printASTNode(someInput:getFields().newField)).to.equal("newField: String")
			expect(printASTNode(someInput:getFields().oneMoreNewField)).to.equal(
				"oneMoreNewField: String"
			)
			expect(printASTNode(someInterface:getFields().newField)).to.equal("newField: String")
			expect(printASTNode(someInterface:getFields().oneMoreNewField)).to.equal(
				"oneMoreNewField: String"
			)

			expect(printASTNode(testInput:getFields().testInputField)).to.equal(
				"testInputField: TestEnum"
			)

			expect(printASTNode(testEnum:getValue("TEST_VALUE"))).to.equal("TEST_VALUE")

			expect(printASTNode(testInterface:getFields().interfaceField)).to.equal(
				"interfaceField: String"
			)
			expect(printASTNode(testType:getFields().interfaceField)).to.equal(
				"interfaceField: String"
			)
			expect(printASTNode(testDirective.args[1])).to.equal("arg: Int")
		end)

		it("builds types with deprecated fields/values", function()
			local schema = GraphQLSchema.new({})
			local extendAST = parse([[

      type SomeObject {
        deprecatedField: String @deprecated(reason: "not used anymore")
      }

      enum SomeEnum {
        DEPRECATED_VALUE @deprecated(reason: "do not use")
      }
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			local someType = assertObjectType(extendedSchema:getType("SomeObject"))
			expect(someType:getFields().deprecatedField).toObjectContain({
				deprecationReason = "not used anymore",
			})

			local someEnum = assertEnumType(extendedSchema:getType("SomeEnum"))
			expect(someEnum:getValue("DEPRECATED_VALUE")).toObjectContain({
				deprecationReason = "do not use",
			})
		end)

		it("extends objects with deprecated fields", function()
			local schema = buildSchema("type SomeObject")
			local extendAST = parse([[

      extend type SomeObject {
        deprecatedField: String @deprecated(reason: "not used anymore")
      }
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			local someType = assertObjectType(extendedSchema:getType("SomeObject"))
			expect(someType:getFields().deprecatedField).toObjectContain({
				deprecationReason = "not used anymore",
			})
		end)

		it("extends enums with deprecated values", function()
			local schema = buildSchema("enum SomeEnum")
			local extendAST = parse([[

      extend enum SomeEnum {
        DEPRECATED_VALUE @deprecated(reason: "do not use")
      }
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			local someEnum = assertEnumType(extendedSchema:getType("SomeEnum"))
			expect(someEnum:getValue("DEPRECATED_VALUE")).toObjectContain({
				deprecationReason = "do not use",
			})
		end)

		it("adds new unused types", function()
			local schema = buildSchema([[

      type Query {
        dummy: String
      }
    ]])
			local extensionSDL = dedent([[

      type DummyUnionMember {
        someField: String
      }

      enum UnusedEnum {
        SOME_VALUE
      }

      input UnusedInput {
        someField: String
      }

      interface UnusedInterface {
        someField: String
      }

      type UnusedObject {
        someField: String
      }

      union UnusedUnion = DummyUnionMember
    ]])
			local extendedSchema = extendSchema(schema, parse(extensionSDL))

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(extensionSDL)
		end)

		it("extends objects by adding new fields with arguments", function()
			local schema = buildSchema([[

      type SomeObject

      type Query {
        someObject: SomeObject
      }
    ]])
			local extendAST = parse([[

      input NewInputObj {
        field1: Int
        field2: [Float]
        field3: String!
      }

      extend type SomeObject {
        newField(arg1: String, arg2: NewInputObj!): String
      }
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(dedent([[

      type SomeObject {
        newField(arg1: String, arg2: NewInputObj!): String
      }

      input NewInputObj {
        field1: Int
        field2: [Float]
        field3: String!
      }
    ]]))
		end)

		it("extends objects by adding new fields with existing types", function()
			local schema = buildSchema([[

      type Query {
        someObject: SomeObject
      }

      type SomeObject
      enum SomeEnum { VALUE }
    ]])
			local extendAST = parse([[

      extend type SomeObject {
        newField(arg1: SomeEnum!): SomeEnum
      }
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(dedent([[

      type SomeObject {
        newField(arg1: SomeEnum!): SomeEnum
      }
    ]]))
		end)

		it("extends objects by adding implemented interfaces", function()
			local schema = buildSchema([[

      type Query {
        someObject: SomeObject
      }

      type SomeObject {
        foo: String
      }

      interface SomeInterface {
        foo: String
      }
    ]])
			local extendAST = parse([[

      extend type SomeObject implements SomeInterface
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(dedent([[

      type SomeObject implements SomeInterface {
        foo: String
      }
    ]]))
		end)

		it("extends objects by including new types", function()
			local schema = buildSchema([[

      type Query {
        someObject: SomeObject
      }

      type SomeObject {
        oldField: String
      }
    ]])
			local newTypesSDL = dedent([[

      enum NewEnum {
        VALUE
      }

      interface NewInterface {
        baz: String
      }

      type NewObject implements NewInterface {
        baz: String
      }

      scalar NewScalar

      union NewUnion = NewObject]])
			local extendAST = parse(([[

      %s
      extend type SomeObject {
        newObject: NewObject
        newInterface: NewInterface
        newUnion: NewUnion
        newScalar: NewScalar
        newEnum: NewEnum
        newTree: [SomeObject]!
      }
    ]]):format(newTypesSDL))
			local extendedSchema = extendSchema(schema, extendAST)

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(dedent(([[

      type SomeObject {
        oldField: String
        newObject: NewObject
        newInterface: NewInterface
        newUnion: NewUnion
        newScalar: NewScalar
        newEnum: NewEnum
        newTree: [SomeObject]!
      }

      %s
    ]]):format(newTypesSDL)))
		end)

		it("extends objects by adding implemented new interfaces", function()
			local schema = buildSchema([[

      type Query {
        someObject: SomeObject
      }

      type SomeObject implements OldInterface {
        oldField: String
      }

      interface OldInterface {
        oldField: String
      }
    ]])
			local extendAST = parse([[

      extend type SomeObject implements NewInterface {
        newField: String
      }

      interface NewInterface {
        newField: String
      }
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(dedent([[

      type SomeObject implements OldInterface & NewInterface {
        oldField: String
        newField: String
      }

      interface NewInterface {
        newField: String
      }
    ]]))
		end)

		it("extends different types multiple times", function()
			local schema = buildSchema([[

      type Query {
        someScalar: SomeScalar
        someObject(someInput: SomeInput): SomeObject
        someInterface: SomeInterface
        someEnum: SomeEnum
        someUnion: SomeUnion
      }

      scalar SomeScalar

      type SomeObject implements SomeInterface {
        oldField: String
      }

      interface SomeInterface {
        oldField: String
      }

      enum SomeEnum {
        OLD_VALUE
      }

      union SomeUnion = SomeObject

      input SomeInput {
        oldField: String
      }
    ]])
			local newTypesSDL = dedent([[

      scalar NewScalar

      scalar AnotherNewScalar

      type NewObject {
        foo: String
      }

      type AnotherNewObject {
        foo: String
      }

      interface NewInterface {
        newField: String
      }

      interface AnotherNewInterface {
        anotherNewField: String
      }]])
			local schemaWithNewTypes = extendSchema(schema, parse(newTypesSDL))
			expect(printSchemaChanges(schema, schemaWithNewTypes)).to.equal(newTypesSDL .. "\n")

			local extendAST = parse([[

      extend scalar SomeScalar @specifiedBy(url: "http://example.com/foo_spec")

      extend type SomeObject implements NewInterface {
        newField: String
      }

      extend type SomeObject implements AnotherNewInterface {
        anotherNewField: String
      }

      extend enum SomeEnum {
        NEW_VALUE
      }

      extend enum SomeEnum {
        ANOTHER_NEW_VALUE
      }

      extend union SomeUnion = NewObject

      extend union SomeUnion = AnotherNewObject

      extend input SomeInput {
        newField: String
      }

      extend input SomeInput {
        anotherNewField: String
      }
    ]])
			local extendedSchema = extendSchema(schemaWithNewTypes, extendAST)

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(dedent(([[

      scalar SomeScalar @specifiedBy(url: "http://example.com/foo_spec")

      type SomeObject implements SomeInterface & NewInterface & AnotherNewInterface {
        oldField: String
        newField: String
        anotherNewField: String
      }

      enum SomeEnum {
        OLD_VALUE
        NEW_VALUE
        ANOTHER_NEW_VALUE
      }

      union SomeUnion = SomeObject | NewObject | AnotherNewObject

      input SomeInput {
        oldField: String
        newField: String
        anotherNewField: String
      }

      %s
    ]]):format(newTypesSDL)))
		end)

		it("extends interfaces by adding new fields", function()
			local schema = buildSchema([[

      interface SomeInterface {
        oldField: String
      }

      interface AnotherInterface implements SomeInterface {
        oldField: String
      }

      type SomeObject implements SomeInterface & AnotherInterface {
        oldField: String
      }

      type Query {
        someInterface: SomeInterface
      }
    ]])
			local extendAST = parse([[

      extend interface SomeInterface {
        newField: String
      }

      extend interface AnotherInterface {
        newField: String
      }

      extend type SomeObject {
        newField: String
      }
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(dedent([[

      interface SomeInterface {
        oldField: String
        newField: String
      }

      interface AnotherInterface implements SomeInterface {
        oldField: String
        newField: String
      }

      type SomeObject implements SomeInterface & AnotherInterface {
        oldField: String
        newField: String
      }
    ]]))
		end)

		it("extends interfaces by adding new implemented interfaces", function()
			local schema = buildSchema([[

      interface SomeInterface {
        oldField: String
      }

      interface AnotherInterface implements SomeInterface {
        oldField: String
      }

      type SomeObject implements SomeInterface & AnotherInterface {
        oldField: String
      }

      type Query {
        someInterface: SomeInterface
      }
    ]])
			local extendAST = parse([[

      interface NewInterface {
        newField: String
      }

      extend interface AnotherInterface implements NewInterface {
        newField: String
      }

      extend type SomeObject implements NewInterface {
        newField: String
      }
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(dedent([[

      interface AnotherInterface implements SomeInterface & NewInterface {
        oldField: String
        newField: String
      }

      type SomeObject implements SomeInterface & AnotherInterface & NewInterface {
        oldField: String
        newField: String
      }

      interface NewInterface {
        newField: String
      }
    ]]))
		end)

		it("allows extension of interface with missing Object fields", function()
			local schema = buildSchema([[

      type Query {
        someInterface: SomeInterface
      }

      type SomeObject implements SomeInterface {
        oldField: SomeInterface
      }

      interface SomeInterface {
        oldField: SomeInterface
      }
    ]])
			local extendAST = parse([[

      extend interface SomeInterface {
        newField: String
      }
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			expect(#validateSchema(extendedSchema) > 0).to.equal(true)
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(dedent([[

      interface SomeInterface {
        oldField: SomeInterface
        newField: String
      }
    ]]))
		end)

		it("extends interfaces multiple times", function()
			local schema = buildSchema([[

      type Query {
        someInterface: SomeInterface
      }

      interface SomeInterface {
        some: SomeInterface
      }
    ]])
			local extendAST = parse([[

      extend interface SomeInterface {
        newFieldA: Int
      }

      extend interface SomeInterface {
        newFieldB(test: Boolean): String
      }
    ]])
			local extendedSchema = extendSchema(schema, extendAST)

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(dedent([[

      interface SomeInterface {
        some: SomeInterface
        newFieldA: Int
        newFieldB(test: Boolean): String
      }
    ]]))
		end)

		it("may extend mutations and subscriptions", function()
			local mutationSchema = buildSchema([[

      type Query {
        queryField: String
      }

      type Mutation {
        mutationField: String
      }

      type Subscription {
        subscriptionField: String
      }
    ]])
			local ast = parse([[

      extend type Query {
        newQueryField: Int
      }

      extend type Mutation {
        newMutationField: Int
      }

      extend type Subscription {
        newSubscriptionField: Int
      }
    ]])
			local originalPrint = printSchema(mutationSchema)
			local extendedSchema = extendSchema(mutationSchema, ast)
			expect(extendedSchema).to.never.equal(mutationSchema)
			expect(printSchema(mutationSchema)).to.equal(originalPrint)
			expect(printSchema(extendedSchema)).to.equal(dedent([[

      type Query {
        queryField: String
        newQueryField: Int
      }

      type Mutation {
        mutationField: String
        newMutationField: Int
      }

      type Subscription {
        subscriptionField: String
        newSubscriptionField: Int
      }
    ]]))
		end)

		it("may extend directives with new directive", function()
			local schema = buildSchema([[

      type Query {
        foo: String
      }
    ]])
			local extensionSDL = dedent([[

      """New directive."""
      directive @new(enable: Boolean!, tag: String) repeatable on QUERY | FIELD
    ]])
			local extendedSchema = extendSchema(schema, parse(extensionSDL))

			expect(validateSchema(extendedSchema)).toEqual({})
			expect(printSchemaChanges(schema, extendedSchema)).to.equal(extensionSDL)
		end)

		it("Rejects invalid SDL", function()
			local schema = GraphQLSchema.new({})
			local extendAST = parse("extend schema @unknown")

			expect(function()
				return extendSchema(schema, extendAST)
			end).toThrow('Unknown directive "@unknown".')
		end)

		it("Allows to disable SDL validation", function()
			local schema = GraphQLSchema.new({})
			local extendAST = parse("extend schema @unknown")

			extendSchema(schema, extendAST, { assumeValid = true })
			extendSchema(schema, extendAST, { assumeValidSDL = true })
		end)

		it("Throws on unknown types", function()
			local schema = GraphQLSchema.new({})
			local ast = parse([[
				type Query {
					unknown: UnknownType
				}
			]])
			expect(function()
				return extendSchema(schema, ast, { assumeValidSDL = true })
			end).toThrow('Unknown type: "UnknownType".')
		end)

		it("Rejects invalid AST", function()
			local schema = GraphQLSchema.new({})

			-- // $FlowExpectedError[incompatible-call]
			expect(function()
				return extendSchema(schema, nil)
			end).toThrow("Must provide valid Document AST")

			-- // $FlowExpectedError[prop-missing]
			expect(function()
				return extendSchema(schema, {})
			end).toThrow("Must provide valid Document AST")
		end)

		it("does not allow replacing a default directive", function()
			local schema = GraphQLSchema.new({})
			local extendAST = parse([[
				directive @include(if: Boolean!) on FIELD | FRAGMENT_SPREAD
			]])

			expect(function()
				return extendSchema(schema, extendAST)
			end).toThrow(
				'Directive "@include" already exists in the schema. It cannot be redefined.'
			)
		end)

		it("does not allow replacing an existing enum value", function()
			local schema = buildSchema([[
				enum SomeEnum {
					ONE
				}
			]])
			local extendAST = parse([[
				extend enum SomeEnum {
					ONE
				}
			]])

			expect(function()
				return extendSchema(schema, extendAST)
			end).toThrow(
				'Enum value "SomeEnum.ONE" already exists in the schema. It cannot also be defined in this type extension.'
			)
		end)

		describe("can add additional root operation types", function()
			it("does not automatically include common root type names", function()
				local schema = GraphQLSchema.new({})
				local extendedSchema = extendSchema(schema, parse("type Mutation"))

				expect(extendedSchema:getType("Mutation")).to.never.equal(nil)
				expect(extendedSchema:getMutationType()).to.equal(nil)
			end)

			it("adds schema definition missing in the original schema", function()
				local schema = buildSchema([[
        directive @foo on SCHEMA
        type Foo
      ]])
				expect(schema:getQueryType()).to.equal(nil)

				local extensionSDL = dedent([[
        schema @foo {
          query: Foo
        }
      ]])
				local extendedSchema = extendSchema(schema, parse(extensionSDL))

				local queryType = extendedSchema:getQueryType()
				expect(queryType).toObjectContain({ name = "Foo" })
				expect(printASTNode(extendedSchema) .. "\n").to.equal(extensionSDL)
			end)

			it("adds new root types via schema extension", function()
				local schema = buildSchema([[
        type Query
        type MutationRoot
      ]])
				local extensionSDL = dedent([[
        extend schema {
          mutation: MutationRoot
        }
      ]])
				local extendedSchema = extendSchema(schema, parse(extensionSDL))

				local mutationType = extendedSchema:getMutationType()
				expect(mutationType).toObjectContain({ name = "MutationRoot" })
				expect(printExtensionNodes(extendedSchema)).to.equal(extensionSDL)
			end)

			it("adds directive via schema extension", function()
				local schema = buildSchema([[
        type Query

        directive @foo on SCHEMA
      ]])
				local extensionSDL = dedent([[
        extend schema @foo
      ]])
				local extendedSchema = extendSchema(schema, parse(extensionSDL))

				expect(printExtensionNodes(extendedSchema)).to.equal(extensionSDL)
			end)

			it("adds multiple new root types via schema extension", function()
				local schema = buildSchema("type Query")
				local extendAST = parse([[
        extend schema {
          mutation: Mutation
          subscription: Subscription
        }

        type Mutation
        type Subscription
      ]])
				local extendedSchema = extendSchema(schema, extendAST)

				local mutationType = extendedSchema:getMutationType()
				expect(mutationType).toObjectContain({ name = "Mutation" })

				local subscriptionType = extendedSchema:getSubscriptionType()
				expect(subscriptionType).toObjectContain({ name = "Subscription" })
			end)

			it("applies multiple schema extensions", function()
				local schema = buildSchema("type Query")
				local extendAST = parse([[
        extend schema {
          mutation: Mutation
        }
        type Mutation

        extend schema {
          subscription: Subscription
        }
        type Subscription
      ]])
				local extendedSchema = extendSchema(schema, extendAST)

				local mutationType = extendedSchema:getMutationType()
				expect(mutationType).toObjectContain({ name = "Mutation" })

				local subscriptionType = extendedSchema:getSubscriptionType()
				expect(subscriptionType).toObjectContain({ name = "Subscription" })
			end)

			it("schema extension AST are available from schema object", function()
				local schema = buildSchema([[
        type Query

        directive @foo on SCHEMA
      ]])

				local extendAST = parse([[
        extend schema {
          mutation: Mutation
        }
        type Mutation

        extend schema {
          subscription: Subscription
        }
        type Subscription
      ]])
				local extendedSchema = extendSchema(schema, extendAST)

				local secondExtendAST = parse("extend schema @foo")
				local extendedTwiceSchema = extendSchema(extendedSchema, secondExtendAST)

				expect(printExtensionNodes(extendedTwiceSchema)).to.equal(dedent([[
        extend schema {
          mutation: Mutation
        }

        extend schema {
          subscription: Subscription
        }

        extend schema @foo
      ]]))
			end)
		end)
	end)
end

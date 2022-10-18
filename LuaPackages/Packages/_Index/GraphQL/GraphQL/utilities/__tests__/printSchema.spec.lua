--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/printSchema-test.js

local utilitiesWorkspace = script.Parent.Parent
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Map = LuauPolyfill.Map

local dedent = require(srcWorkspace.__testUtils__.dedent).dedent

local DirectiveLocation = require(srcWorkspace.language.directiveLocation).DirectiveLocation

local GraphQLSchema = require(srcWorkspace.type.schema).GraphQLSchema
local GraphQLDirective = require(srcWorkspace.type.directives).GraphQLDirective

local ScalarsModule = require(srcWorkspace.type.scalars)
local GraphQLInt = ScalarsModule.GraphQLInt
local GraphQLString = ScalarsModule.GraphQLString
local GraphQLBoolean = ScalarsModule.GraphQLBoolean

local DefinitionModule = require(srcWorkspace.type.definition)
local GraphQLList = DefinitionModule.GraphQLList
local GraphQLNonNull = DefinitionModule.GraphQLNonNull
local GraphQLScalarType = DefinitionModule.GraphQLScalarType
local GraphQLObjectType = DefinitionModule.GraphQLObjectType
local GraphQLInterfaceType = DefinitionModule.GraphQLInterfaceType
local GraphQLUnionType = DefinitionModule.GraphQLUnionType
local GraphQLEnumType = DefinitionModule.GraphQLEnumType
local GraphQLInputObjectType = DefinitionModule.GraphQLInputObjectType

local buildSchema = require(utilitiesWorkspace.buildASTSchema).buildSchema
local PrintSchemaModule = require(utilitiesWorkspace.printSchema)
local printSchema = PrintSchemaModule.printSchema
local printIntrospectionSchema = PrintSchemaModule.printIntrospectionSchema

-- ROBLOX deviation: differentiate null and undefined
local NULL = PrintSchemaModule.NULL

local function expectPrintedSchema(expect_, schema)
	local schemaText = printSchema(schema)

	-- keep printSchema and buildSchema in sync
	expect_(printSchema(buildSchema(schemaText))).toEqual(schemaText)

	return expect_(schemaText)
end

local function buildSingleFieldSchema(fieldConfig)
	local Query = GraphQLObjectType.new({
		name = "Query",
		fields = { singleField = fieldConfig },
	})

	return GraphQLSchema.new({ query = Query })
end

return function()
	describe("Type System Printer", function()
		it("Prints String Field", function()
			local schema = buildSingleFieldSchema({ type = GraphQLString })

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Query {
        singleField: String
      }
    ]]))
		end)

		it("Prints [String] Field", function()
			local schema = buildSingleFieldSchema({
				type = GraphQLList.new(GraphQLString),
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Query {
        singleField: [String]
      }
    ]]))
		end)

		it("Prints String! Field", function()
			local schema = buildSingleFieldSchema({
				type = GraphQLNonNull.new(GraphQLString),
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Query {
        singleField: String!
      }
    ]]))
		end)

		it("Prints [String]! Field", function()
			local schema = buildSingleFieldSchema({
				type = GraphQLNonNull.new(GraphQLList.new(GraphQLString)),
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Query {
        singleField: [String]!
      }
    ]]))
		end)

		it("Prints [String!] Field", function()
			local schema = buildSingleFieldSchema({
				type = GraphQLList.new(GraphQLNonNull.new(GraphQLString)),
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Query {
        singleField: [String!]
      }
    ]]))
		end)

		it("Prints [String!]! Field", function()
			local schema = buildSingleFieldSchema({
				type = GraphQLNonNull.new(GraphQLList.new(GraphQLNonNull.new(GraphQLString))),
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Query {
        singleField: [String!]!
      }
    ]]))
		end)

		it("Print Object Field", function()
			local FooType = GraphQLObjectType.new({
				name = "Foo",
				fields = {
					str = { type = GraphQLString },
				},
			})
			local schema = GraphQLSchema.new({
				types = { FooType },
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Foo {
        str: String
      }
    ]]))
		end)

		it("Prints String Field With Int Arg", function()
			local schema = buildSingleFieldSchema({
				type = GraphQLString,
				args = {
					argOne = { type = GraphQLInt },
				},
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Query {
        singleField(argOne: Int): String
      }
    ]]))
		end)

		it("Prints String Field With Int Arg With Default", function()
			local schema = buildSingleFieldSchema({
				type = GraphQLString,
				args = {
					argOne = {
						type = GraphQLInt,
						defaultValue = 2,
					},
				},
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Query {
        singleField(argOne: Int = 2): String
      }
    ]]))
		end)

		it("Prints String Field With String Arg With Default", function()
			local schema = buildSingleFieldSchema({
				type = GraphQLString,
				args = {
					argOne = {
						type = GraphQLString,
						defaultValue = "tes\t de\fault",
					},
				},
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
        type Query {
          singleField(argOne: String = "tes\t de\fault"): String
        }
      ]]))
		end)

		it("Prints String Field With Int Arg With Default Null", function()
			local schema = buildSingleFieldSchema({
				type = GraphQLString,
				args = {
					argOne = {
						type = GraphQLInt,
						defaultValue = NULL,
					},
				},
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Query {
        singleField(argOne: Int = null): String
      }
    ]]))
		end)

		it("Prints String Field With Int! Arg", function()
			local schema = buildSingleFieldSchema({
				type = GraphQLString,
				args = {
					argOne = {
						type = GraphQLNonNull.new(GraphQLInt),
					},
				},
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Query {
        singleField(argOne: Int!): String
      }
    ]]))
		end)

		it("Prints String Field With Multiple Args", function()
			local schema = buildSingleFieldSchema({
				type = GraphQLString,
				args = {
					argOne = { type = GraphQLInt },
					argTwo = { type = GraphQLString },
				},
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Query {
        singleField(argOne: Int, argTwo: String): String
      }
    ]]))
		end)

		it("Prints String Field With Multiple Args, First is Default", function()
			local schema = buildSingleFieldSchema({
				type = GraphQLString,
				args = {
					argOne = {
						type = GraphQLInt,
						defaultValue = 1,
					},
					argTwo = { type = GraphQLString },
					argThree = { type = GraphQLBoolean },
				},
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Query {
        singleField(argOne: Int = 1, argTwo: String, argThree: Boolean): String
      }
    ]]))
		end)

		it("Prints String Field With Multiple Args, Second is Default", function()
			local schema = buildSingleFieldSchema({
				type = GraphQLString,
				args = {
					argOne = { type = GraphQLInt },
					argTwo = {
						type = GraphQLString,
						defaultValue = "foo",
					},
					argThree = { type = GraphQLBoolean },
				},
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Query {
        singleField(argOne: Int, argTwo: String = "foo", argThree: Boolean): String
      }
    ]]))
		end)

		it("Prints String Field With Multiple Args, Last is Default", function()
			local schema = buildSingleFieldSchema({
				type = GraphQLString,
				args = {
					argOne = { type = GraphQLInt },
					argTwo = { type = GraphQLString },
					argThree = {
						type = GraphQLBoolean,
						defaultValue = false,
					},
				},
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Query {
        singleField(argOne: Int, argTwo: String, argThree: Boolean = false): String
      }
    ]]))
		end)

		it("Prints schema with description", function()
			local schema = GraphQLSchema.new({
				description = "Schema description.",
				query = GraphQLObjectType.new({
					name = "Query",
					fields = {},
				}),
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      """Schema description."""
      schema {
        query: Query
      }

      type Query
    ]]))
		end)

		it("Prints custom query root types", function()
			local schema = GraphQLSchema.new({
				query = GraphQLObjectType.new({
					name = "CustomType",
					fields = {},
				}),
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      schema {
        query: CustomType
      }

      type CustomType
    ]]))
		end)

		it("Prints custom mutation root types", function()
			local schema = GraphQLSchema.new({
				mutation = GraphQLObjectType.new({
					name = "CustomType",
					fields = {},
				}),
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      schema {
        mutation: CustomType
      }

      type CustomType
    ]]))
		end)

		it("Prints custom subscription root types", function()
			local schema = GraphQLSchema.new({
				subscription = GraphQLObjectType.new({
					name = "CustomType",
					fields = {},
				}),
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      schema {
        subscription: CustomType
      }

      type CustomType
    ]]))
		end)

		it("Print Interface", function()
			local FooType = GraphQLInterfaceType.new({
				name = "Foo",
				fields = {
					str = { type = GraphQLString },
				},
			})
			local BarType = GraphQLObjectType.new({
				name = "Bar",
				fields = {
					str = { type = GraphQLString },
				},
				interfaces = { FooType },
			})
			local schema = GraphQLSchema.new({
				types = { BarType },
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Bar implements Foo {
        str: String
      }

      interface Foo {
        str: String
      }
    ]]))
		end)

		it("Print Multiple Interface", function()
			local FooType = GraphQLInterfaceType.new({
				name = "Foo",
				fields = {
					str = { type = GraphQLString },
				},
			})
			local BazType = GraphQLInterfaceType.new({
				name = "Baz",
				fields = {
					int = { type = GraphQLInt },
				},
			})
			local BarType = GraphQLObjectType.new({
				name = "Bar",
				fields = {
					str = { type = GraphQLString },
					int = { type = GraphQLInt },
				},
				interfaces = { FooType, BazType },
			})
			local schema = GraphQLSchema.new({
				types = { BarType },
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Bar implements Foo & Baz {
        str: String
        int: Int
      }

      interface Foo {
        str: String
      }

      interface Baz {
        int: Int
      }
    ]]))
		end)

		it("Print Hierarchical Interface", function()
			local FooType = GraphQLInterfaceType.new({
				name = "Foo",
				fields = {
					str = { type = GraphQLString },
				},
			})
			local BazType = GraphQLInterfaceType.new({
				name = "Baz",
				interfaces = { FooType },
				fields = {
					int = { type = GraphQLInt },
					str = { type = GraphQLString },
				},
			})
			local BarType = GraphQLObjectType.new({
				name = "Bar",
				fields = {
					str = { type = GraphQLString },
					int = { type = GraphQLInt },
				},
				interfaces = { FooType, BazType },
			})
			local Query = GraphQLObjectType.new({
				name = "Query",
				fields = {
					bar = { type = BarType },
				},
			})
			local schema = GraphQLSchema.new({
				query = Query,
				types = { BarType },
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Bar implements Foo & Baz {
        str: String
        int: Int
      }

      interface Foo {
        str: String
      }

      interface Baz implements Foo {
        int: Int
        str: String
      }

      type Query {
        bar: Bar
      }
    ]]))
		end)

		it("Print Unions", function()
			local FooType = GraphQLObjectType.new({
				name = "Foo",
				fields = {
					bool = { type = GraphQLBoolean },
				},
			})
			local BarType = GraphQLObjectType.new({
				name = "Bar",
				fields = {
					str = { type = GraphQLString },
				},
			})
			local SingleUnion = GraphQLUnionType.new({
				name = "SingleUnion",
				types = { FooType },
			})
			local MultipleUnion = GraphQLUnionType.new({
				name = "MultipleUnion",
				types = { FooType, BarType },
			})
			local schema = GraphQLSchema.new({
				types = { SingleUnion, MultipleUnion },
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      union SingleUnion = Foo

      type Foo {
        bool: Boolean
      }

      union MultipleUnion = Foo | Bar

      type Bar {
        str: String
      }
    ]]))
		end)

		it("Print Input Type", function()
			local InputType = GraphQLInputObjectType.new({
				name = "InputType",
				fields = {
					int = { type = GraphQLInt },
				},
			})
			local schema = GraphQLSchema.new({
				types = { InputType },
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      input InputType {
        int: Int
      }
    ]]))
		end)

		it("Custom Scalar", function()
			local OddType = GraphQLScalarType.new({
				name = "Odd",
			})
			local schema = GraphQLSchema.new({
				types = { OddType },
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      scalar Odd
    ]]))
		end)

		it("Custom Scalar with specifiedByUrl", function()
			local FooType = GraphQLScalarType.new({
				name = "Foo",
				specifiedByUrl = "https://example.com/foo_spec",
			})
			local schema = GraphQLSchema.new({
				types = { FooType },
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      scalar Foo @specifiedBy(url: "https://example.com/foo_spec")
    ]]))
		end)

		it("Enum", function()
			local RGBType = GraphQLEnumType.new({
				name = "RGB",
				-- ROBLOX deviation: use Map to guarantee order
				values = Map.new({
					{ "RED", {} },
					{ "GREEN", {} },
					{ "BLUE", {} },
				}),
			})
			local schema = GraphQLSchema.new({
				types = { RGBType },
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      enum RGB {
        RED
        GREEN
        BLUE
      }
    ]]))
		end)

		it("Prints empty types", function()
			local schema = GraphQLSchema.new({
				types = {
					GraphQLEnumType.new({
						name = "SomeEnum",
						values = {},
					}),
					GraphQLInputObjectType.new({
						name = "SomeInputObject",
						fields = {},
					}),
					GraphQLInterfaceType.new({
						name = "SomeInterface",
						fields = {},
					}),
					GraphQLObjectType.new({
						name = "SomeObject",
						fields = {},
					}),
					GraphQLUnionType.new({
						name = "SomeUnion",
						types = {},
					}),
				},
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      enum SomeEnum

      input SomeInputObject

      interface SomeInterface

      type SomeObject

      union SomeUnion
    ]]))
		end)

		it("Prints custom directives", function()
			local SimpleDirective = GraphQLDirective.new({
				name = "simpleDirective",
				locations = {
					DirectiveLocation.FIELD,
				},
			})
			local ComplexDirective = GraphQLDirective.new({
				name = "complexDirective",
				description = "Complex Directive",
				args = {
					stringArg = { type = GraphQLString },
					intArg = {
						type = GraphQLInt,
						defaultValue = -1,
					},
				},
				isRepeatable = true,
				locations = {
					DirectiveLocation.FIELD,
					DirectiveLocation.QUERY,
				},
			})
			local schema = GraphQLSchema.new({
				directives = { SimpleDirective, ComplexDirective },
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      directive @simpleDirective on FIELD

      """Complex Directive"""
      directive @complexDirective(stringArg: String, intArg: Int = -1) repeatable on FIELD | QUERY
    ]]))
		end)

		it("Prints an empty description", function()
			local schema = buildSingleFieldSchema({
				type = GraphQLString,
				description = "",
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Query {
        """"""
        singleField: String
      }
    ]]))
		end)

		it("One-line prints a short description", function()
			local schema = buildSingleFieldSchema({
				type = GraphQLString,
				description = "This field is awesome",
			})

			expectPrintedSchema(expect, schema).toEqual(dedent([[
      type Query {
        """This field is awesome"""
        singleField: String
      }
    ]]))
		end)

		it("Print Introspection Schema", function()
			local schema = GraphQLSchema.new({})
			local output = printIntrospectionSchema(schema)

			expect(output).toEqual(dedent([[
      """
      Directs the executor to include this field or fragment only when the `if` argument is true.
      """
      directive @include(
        """Included when true."""
        if: Boolean!
      ) on FIELD | FRAGMENT_SPREAD | INLINE_FRAGMENT

      """
      Directs the executor to skip this field or fragment when the `if` argument is true.
      """
      directive @skip(
        """Skipped when true."""
        if: Boolean!
      ) on FIELD | FRAGMENT_SPREAD | INLINE_FRAGMENT

      """Marks an element of a GraphQL schema as no longer supported."""
      directive @deprecated(
        """
        Explains why this element was deprecated, usually also including a suggestion for how to access supported similar data. Formatted using the Markdown syntax, as specified by [CommonMark](https://commonmark.org/).
        """
        reason: String = "No longer supported"
      ) on FIELD_DEFINITION | ARGUMENT_DEFINITION | INPUT_FIELD_DEFINITION | ENUM_VALUE

      """Exposes a URL that specifies the behaviour of this scalar."""
      directive @specifiedBy(
        """The URL that specifies the behaviour of this scalar."""
        url: String!
      ) on SCALAR

      """
      A GraphQL Schema defines the capabilities of a GraphQL server. It exposes all available types and directives on the server, as well as the entry points for query, mutation, and subscription operations.
      """
      type __Schema {
        description: String

        """A list of all types supported by this server."""
        types: [__Type!]!

        """The type that query operations will be rooted at."""
        queryType: __Type!

        """
        If this server supports mutation, the type that mutation operations will be rooted at.
        """
        mutationType: __Type

        """
        If this server support subscription, the type that subscription operations will be rooted at.
        """
        subscriptionType: __Type

        """A list of all directives supported by this server."""
        directives: [__Directive!]!
      }

      """
      The fundamental unit of any GraphQL Schema is the type. There are many kinds of types in GraphQL as represented by the `__TypeKind` enum.

      Depending on the kind of a type, certain fields describe information about that type. Scalar types provide no information beyond a name, description and optional `specifiedByUrl`, while Enum types provide their values. Object and Interface types provide the fields they describe. Abstract types, Union and Interface, provide the Object types possible at runtime. List and NonNull types compose other types.
      """
      type __Type {
        kind: __TypeKind!
        name: String
        description: String
        specifiedByUrl: String
        fields(includeDeprecated: Boolean = false): [__Field!]
        interfaces: [__Type!]
        possibleTypes: [__Type!]
        enumValues(includeDeprecated: Boolean = false): [__EnumValue!]
        inputFields(includeDeprecated: Boolean = false): [__InputValue!]
        ofType: __Type
      }

      """An enum describing what kind of type a given `__Type` is."""
      enum __TypeKind {
        """Indicates this type is a scalar."""
        SCALAR

        """
        Indicates this type is an object. `fields` and `interfaces` are valid fields.
        """
        OBJECT

        """
        Indicates this type is an interface. `fields`, `interfaces`, and `possibleTypes` are valid fields.
        """
        INTERFACE

        """Indicates this type is a union. `possibleTypes` is a valid field."""
        UNION

        """Indicates this type is an enum. `enumValues` is a valid field."""
        ENUM

        """
        Indicates this type is an input object. `inputFields` is a valid field.
        """
        INPUT_OBJECT

        """Indicates this type is a list. `ofType` is a valid field."""
        LIST

        """Indicates this type is a non-null. `ofType` is a valid field."""
        NON_NULL
      }

      """
      Object and Interface types are described by a list of Fields, each of which has a name, potentially a list of arguments, and a return type.
      """
      type __Field {
        name: String!
        description: String
        args(includeDeprecated: Boolean = false): [__InputValue!]!
        type: __Type!
        isDeprecated: Boolean!
        deprecationReason: String
      }

      """
      Arguments provided to Fields or Directives and the input fields of an InputObject are represented as Input Values which describe their type and optionally a default value.
      """
      type __InputValue {
        name: String!
        description: String
        type: __Type!

        """
        A GraphQL-formatted string representing the default value for this input value.
        """
        defaultValue: String
        isDeprecated: Boolean!
        deprecationReason: String
      }

      """
      One possible value for a given Enum. Enum values are unique values, not a placeholder for a string or numeric value. However an Enum value is returned in a JSON response as a string.
      """
      type __EnumValue {
        name: String!
        description: String
        isDeprecated: Boolean!
        deprecationReason: String
      }

      """
      A Directive provides a way to describe alternate runtime execution and type validation behavior in a GraphQL document.

      In some cases, you need to provide options to alter GraphQL's execution behavior in ways field arguments will not suffice, such as conditionally including or skipping a field. Directives provide this by describing additional information to the executor.
      """
      type __Directive {
        name: String!
        description: String
        isRepeatable: Boolean!
        locations: [__DirectiveLocation!]!
        args: [__InputValue!]!
      }

      """
      A Directive can be adjacent to many parts of the GraphQL language, a __DirectiveLocation describes one such possible adjacencies.
      """
      enum __DirectiveLocation {
        """Location adjacent to a query operation."""
        QUERY

        """Location adjacent to a mutation operation."""
        MUTATION

        """Location adjacent to a subscription operation."""
        SUBSCRIPTION

        """Location adjacent to a field."""
        FIELD

        """Location adjacent to a fragment definition."""
        FRAGMENT_DEFINITION

        """Location adjacent to a fragment spread."""
        FRAGMENT_SPREAD

        """Location adjacent to an inline fragment."""
        INLINE_FRAGMENT

        """Location adjacent to a variable definition."""
        VARIABLE_DEFINITION

        """Location adjacent to a schema definition."""
        SCHEMA

        """Location adjacent to a scalar definition."""
        SCALAR

        """Location adjacent to an object type definition."""
        OBJECT

        """Location adjacent to a field definition."""
        FIELD_DEFINITION

        """Location adjacent to an argument definition."""
        ARGUMENT_DEFINITION

        """Location adjacent to an interface definition."""
        INTERFACE

        """Location adjacent to a union definition."""
        UNION

        """Location adjacent to an enum definition."""
        ENUM

        """Location adjacent to an enum value definition."""
        ENUM_VALUE

        """Location adjacent to an input object type definition."""
        INPUT_OBJECT

        """Location adjacent to an input object field definition."""
        INPUT_FIELD_DEFINITION
      }
    ]]))
		end)
	end)
end

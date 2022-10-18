--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/findBreakingChanges-test.js

return function()
	local srcWorkspace = script.Parent.Parent.Parent
	local GraphQLSchema = require(srcWorkspace.type.schema).GraphQLSchema
	local directivesModule = require(srcWorkspace.type.directives)
	local GraphQLSkipDirective = directivesModule.GraphQLSkipDirective
	local GraphQLIncludeDirective = directivesModule.GraphQLIncludeDirective
	local GraphQLSpecifiedByDirective = directivesModule.GraphQLSpecifiedByDirective
	local GraphQLDeprecatedDirective = directivesModule.GraphQLDeprecatedDirective
	local buildSchema = require(srcWorkspace.utilities.buildASTSchema).buildSchema
	local findBreakingChangesModule = require(srcWorkspace.utilities.findBreakingChanges)
	local findBreakingChanges = findBreakingChangesModule.findBreakingChanges
	local BreakingChangeType = findBreakingChangesModule.BreakingChangeType
	local DangerousChangeType = findBreakingChangesModule.DangerousChangeType
	local findDangerousChanges = findBreakingChangesModule.findDangerousChanges

	describe("findBreakingChanges", function()
		it("should detect if a type was removed or not", function()
			local oldSchema = buildSchema([[

      type Type1
      type Type2
    ]])

			local newSchema = buildSchema([[
      type Type2
    ]])
			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.TYPE_REMOVED,
					description = "Type1 was removed.",
				},
			})
			expect(findBreakingChanges(oldSchema, oldSchema)).toEqual({})
		end)

		it("should detect if a standard scalar was removed", function()
			local oldSchema = buildSchema([[
      type Query {
        foo: Float
      }
    ]])
			local newSchema = buildSchema([[
      type Query {
        foo: String
      }
    ]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.TYPE_REMOVED,
					description = "Standard scalar Float was removed because it is not referenced anymore.",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "Query.foo changed type from Float to String.",
				},
			})
			expect(findBreakingChanges(oldSchema, oldSchema)).toEqual({})
		end)

		it("should detect if a type changed its type", function()
			local oldSchema = buildSchema([[
      scalar TypeWasScalarBecomesEnum
      interface TypeWasInterfaceBecomesUnion
      type TypeWasObjectBecomesInputObject
    ]])
			local newSchema = buildSchema([[
      enum TypeWasScalarBecomesEnum
      union TypeWasInterfaceBecomesUnion
      input TypeWasObjectBecomesInputObject
    ]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.TYPE_CHANGED_KIND,
					description = "TypeWasScalarBecomesEnum changed from a Scalar type to an Enum type.",
				},
				{
					type = BreakingChangeType.TYPE_CHANGED_KIND,
					description = "TypeWasInterfaceBecomesUnion changed from an Interface type to a Union type.",
				},
				{
					type = BreakingChangeType.TYPE_CHANGED_KIND,
					description = "TypeWasObjectBecomesInputObject changed from an Object type to an Input type.",
				},
			})
		end)

		it("should detect if a field on a type was deleted or changed type", function()
			local oldSchema = buildSchema([=[
      type TypeA
      type TypeB

      interface Type1 {
        field1: TypeA
        field2: String
        field3: String
        field4: TypeA
        field6: String
        field7: [String]
        field8: Int
        field9: Int!
        field10: [Int]!
        field11: Int
        field12: [Int]
        field13: [Int!]
        field14: [Int]
        field15: [[Int]]
        field16: Int!
        field17: [Int]
        field18: [[Int!]!]
      }
    ]=])

			local newSchema = buildSchema([=[
      type TypeA
      type TypeB

      interface Type1 {
        field1: TypeA
        field3: Boolean
        field4: TypeB
        field5: String
        field6: [String]
        field7: String
        field8: Int!
        field9: Int
        field10: [Int]
        field11: [Int]!
        field12: [Int!]
        field13: [Int]
        field14: [[Int]]
        field15: [Int]
        field16: [Int]!
        field17: [Int]!
        field18: [[Int!]]
      }
    ]=])
			local changes = findBreakingChanges(oldSchema, newSchema)

			expect(changes).toEqual({
				{
					type = BreakingChangeType.FIELD_REMOVED,
					description = "Type1.field2 was removed.",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "Type1.field3 changed type from String to Boolean.",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "Type1.field4 changed type from TypeA to TypeB.",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "Type1.field6 changed type from String to [String].",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "Type1.field7 changed type from [String] to String.",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "Type1.field9 changed type from Int! to Int.",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "Type1.field10 changed type from [Int]! to [Int].",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "Type1.field11 changed type from Int to [Int]!.",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "Type1.field13 changed type from [Int!] to [Int].",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "Type1.field14 changed type from [Int] to [[Int]].",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "Type1.field15 changed type from [[Int]] to [Int].",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "Type1.field16 changed type from Int! to [Int]!.",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "Type1.field18 changed type from [[Int!]!] to [[Int!]].",
				},
			})
		end)

		it("should detect if fields on input types changed kind or were removed", function()
			local oldSchema = buildSchema([=[
      input InputType1 {
        field1: String
        field2: Boolean
        field3: [String]
        field4: String!
        field5: String
        field6: [Int]
        field7: [Int]!
        field8: Int
        field9: [Int]
        field10: [Int!]
        field11: [Int]
        field12: [[Int]]
        field13: Int!
        field14: [[Int]!]
        field15: [[Int]!]
      }
    ]=])
			local newSchema = buildSchema([=[
      input InputType1 {
        field1: Int
        field3: String
        field4: String
        field5: String!
        field6: [Int]!
        field7: [Int]
        field8: [Int]!
        field9: [Int!]
        field10: [Int]
        field11: [[Int]]
        field12: [Int]
        field13: [Int]!
        field14: [[Int]]
        field15: [[Int!]!]
      }
    ]=])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.FIELD_REMOVED,
					description = "InputType1.field2 was removed.",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "InputType1.field1 changed type from String to Int.",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "InputType1.field3 changed type from [String] to String.",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "InputType1.field5 changed type from String to String!.",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "InputType1.field6 changed type from [Int] to [Int]!.",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "InputType1.field8 changed type from Int to [Int]!.",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "InputType1.field9 changed type from [Int] to [Int!].",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "InputType1.field11 changed type from [Int] to [[Int]].",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "InputType1.field12 changed type from [[Int]] to [Int].",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "InputType1.field13 changed type from Int! to [Int]!.",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "InputType1.field15 changed type from [[Int]!] to [[Int!]!].",
				},
			})
		end)

		it("should detect if a required field is added to an input type", function()
			local oldSchema = buildSchema([[
      input InputType1 {
        field1: String
      }
    ]])

			local newSchema = buildSchema([[
      input InputType1 {
        field1: String
        requiredField: Int!
        optionalField1: Boolean
        optionalField2: Boolean! = false
      }
    ]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.REQUIRED_INPUT_FIELD_ADDED,
					description = "A required field requiredField on input type InputType1 was added.",
				},
			})
		end)

		it("should detect if a type was removed from a union type", function()
			local oldSchema = buildSchema([[
      type Type1
      type Type2
      type Type3

      union UnionType1 = Type1 | Type2
    ]])

			local newSchema = buildSchema([[
      type Type1
      type Type2
      type Type3

      union UnionType1 = Type1 | Type3
    ]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.TYPE_REMOVED_FROM_UNION,
					description = "Type2 was removed from union type UnionType1.",
				},
			})
		end)

		it("should detect if a value was removed from an enum type", function()
			local oldSchema = buildSchema([[
      enum EnumType1 {
        VALUE0
        VALUE1
        VALUE2
      }
    ]])
			local newSchema = buildSchema([[
      enum EnumType1 {
        VALUE0
        VALUE2
        VALUE3
      }
    ]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.VALUE_REMOVED_FROM_ENUM,
					description = "VALUE1 was removed from enum type EnumType1.",
				},
			})
		end)

		it("should detect if a field argument was removed", function()
			local oldSchema = buildSchema([[
      interface Interface1 {
        field1(arg1: Boolean, objectArg: String): String
      }

      type Type1 {
        field1(name: String): String
      }
    ]])

			local newSchema = buildSchema([[
      interface Interface1 {
        field1: String
      }

      type Type1 {
        field1: String
      }
    ]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.ARG_REMOVED,
					description = "Interface1.field1 arg arg1 was removed.",
				},
				{
					type = BreakingChangeType.ARG_REMOVED,
					description = "Interface1.field1 arg objectArg was removed.",
				},
				{
					type = BreakingChangeType.ARG_REMOVED,
					description = "Type1.field1 arg name was removed.",
				},
			})
		end)

		it("should detect if a field argument has changed type", function()
			local oldSchema = buildSchema([=[
      type Type1 {
        field1(
          arg1: String
          arg2: String
          arg3: [String]
          arg4: String
          arg5: String!
          arg6: String!
          arg7: [Int]!
          arg8: Int
          arg9: [Int]
          arg10: [Int!]
          arg11: [Int]
          arg12: [[Int]]
          arg13: Int!
          arg14: [[Int]!]
          arg15: [[Int]!]
        ): String
      }
    ]=])
			local newSchema = buildSchema([=[
      type Type1 {
        field1(
          arg1: Int
          arg2: [String]
          arg3: String
          arg4: String!
          arg5: Int
          arg6: Int!
          arg7: [Int]
          arg8: [Int]!
          arg9: [Int!]
          arg10: [Int]
          arg11: [[Int]]
          arg12: [Int]
          arg13: [Int]!
          arg14: [[Int]]
          arg15: [[Int!]!]
         ): String
      }
    ]=])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.ARG_CHANGED_KIND,
					description = "Type1.field1 arg arg1 has changed type from String to Int.",
				},
				{
					type = BreakingChangeType.ARG_CHANGED_KIND,
					description = "Type1.field1 arg arg2 has changed type from String to [String].",
				},
				{
					type = BreakingChangeType.ARG_CHANGED_KIND,
					description = "Type1.field1 arg arg3 has changed type from [String] to String.",
				},
				{
					type = BreakingChangeType.ARG_CHANGED_KIND,
					description = "Type1.field1 arg arg4 has changed type from String to String!.",
				},
				{
					type = BreakingChangeType.ARG_CHANGED_KIND,
					description = "Type1.field1 arg arg5 has changed type from String! to Int.",
				},
				{
					type = BreakingChangeType.ARG_CHANGED_KIND,
					description = "Type1.field1 arg arg6 has changed type from String! to Int!.",
				},
				{
					type = BreakingChangeType.ARG_CHANGED_KIND,
					description = "Type1.field1 arg arg8 has changed type from Int to [Int]!.",
				},
				{
					type = BreakingChangeType.ARG_CHANGED_KIND,
					description = "Type1.field1 arg arg9 has changed type from [Int] to [Int!].",
				},
				{
					type = BreakingChangeType.ARG_CHANGED_KIND,
					description = "Type1.field1 arg arg11 has changed type from [Int] to [[Int]].",
				},
				{
					type = BreakingChangeType.ARG_CHANGED_KIND,
					description = "Type1.field1 arg arg12 has changed type from [[Int]] to [Int].",
				},
				{
					type = BreakingChangeType.ARG_CHANGED_KIND,
					description = "Type1.field1 arg arg13 has changed type from Int! to [Int]!.",
				},
				{
					type = BreakingChangeType.ARG_CHANGED_KIND,
					description = "Type1.field1 arg arg15 has changed type from [[Int]!] to [[Int!]!].",
				},
			})
		end)

		it("should detect if a required field argument was added", function()
			local oldSchema = buildSchema([[
      type Type1 {
        field1(arg1: String): String
      }
    ]])

			local newSchema = buildSchema([[
      type Type1 {
        field1(
          arg1: String,
          newRequiredArg: String!
          newOptionalArg1: Int
          newOptionalArg2: Int! = 0
        ): String
      }
    ]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.REQUIRED_ARG_ADDED,
					description = "A required arg newRequiredArg on Type1.field1 was added.",
				},
			})
		end)

		it("should not flag args with the same type signature as breaking", function()
			local oldSchema = buildSchema([[
      input InputType1 {
        field1: String
      }

      type Type1 {
        field1(arg1: Int!, arg2: InputType1): Int
      }
    ]])

			local newSchema = buildSchema([[
      input InputType1 {
        field1: String
      }

      type Type1 {
        field1(arg1: Int!, arg2: InputType1): Int
      }
    ]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({})
		end)

		it("should consider args that move away from NonNull as non-breaking", function()
			local oldSchema = buildSchema([[
      type Type1 {
        field1(name: String!): String
      }
    ]])

			local newSchema = buildSchema([[
      type Type1 {
        field1(name: String): String
      }
    ]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({})
		end)

		it("should detect interfaces removed from types", function()
			local oldSchema = buildSchema([[
      interface Interface1

      type Type1 implements Interface1
    ]])

			local newSchema = buildSchema([[
      interface Interface1

      type Type1
    ]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.IMPLEMENTED_INTERFACE_REMOVED,
					description = "Type1 no longer implements interface Interface1.",
				},
			})
		end)

		it("should detect interfaces removed from interfaces", function()
			local oldSchema = buildSchema([[
      interface Interface1

      interface Interface2 implements Interface1
    ]])

			local newSchema = buildSchema([[
      interface Interface1

      interface Interface2
    ]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.IMPLEMENTED_INTERFACE_REMOVED,
					description = "Interface2 no longer implements interface Interface1.",
				},
			})
		end)

		it("should ignore changes in order of interfaces", function()
			local oldSchema = buildSchema([[
		interface FirstInterface
		interface SecondInterface

		type Type1 implements FirstInterface & SecondInterface
		]])
			local newSchema = buildSchema([[
		interface FirstInterface
		interface SecondInterface

		type Type1 implements SecondInterface & FirstInterface
		]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({})
		end)

		it("should detect all breaking changes", function()
			local oldSchema = buildSchema([[
		directive @DirectiveThatIsRemoved on FIELD_DEFINITION

		directive @DirectiveThatRemovesArg(arg1: String) on FIELD_DEFINITION

		directive @NonNullDirectiveAdded on FIELD_DEFINITION

		directive @DirectiveThatWasRepeatable repeatable on FIELD_DEFINITION

		directive @DirectiveName on FIELD_DEFINITION | QUERY

		type ArgThatChanges {
			field1(id: Float): String
		}

		enum EnumTypeThatLosesAValue {
			VALUE0
			VALUE1
			VALUE2
		}

		interface Interface1
		type TypeThatLooseInterface1 implements Interface1

		type TypeInUnion1
		type TypeInUnion2
		union UnionTypeThatLosesAType = TypeInUnion1 | TypeInUnion2

		type TypeThatChangesType

		type TypeThatGetsRemoved

		interface TypeThatHasBreakingFieldChanges {
			field1: String
			field2: String
		}
		]])

			local newSchema = buildSchema([[
		directive @DirectiveThatRemovesArg on FIELD_DEFINITION

		directive @NonNullDirectiveAdded(arg1: Boolean!) on FIELD_DEFINITION

		directive @DirectiveThatWasRepeatable on FIELD_DEFINITION

		directive @DirectiveName on FIELD_DEFINITION

		type ArgThatChanges {
			field1(id: String): String
		}

		enum EnumTypeThatLosesAValue {
			VALUE1
			VALUE2
		}

		interface Interface1
		type TypeThatLooseInterface1

		type TypeInUnion1
		type TypeInUnion2
		union UnionTypeThatLosesAType = TypeInUnion1

		interface TypeThatChangesType

		interface TypeThatHasBreakingFieldChanges {
			field2: Boolean
		}
		]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.TYPE_REMOVED,
					description = "Standard scalar Float was removed because it is not referenced anymore.",
				},
				{
					type = BreakingChangeType.TYPE_REMOVED,
					description = "TypeThatGetsRemoved was removed.",
				},
				{
					type = BreakingChangeType.ARG_CHANGED_KIND,
					description = "ArgThatChanges.field1 arg id has changed type from Float to String.",
				},
				{
					type = BreakingChangeType.VALUE_REMOVED_FROM_ENUM,
					description = "VALUE0 was removed from enum type EnumTypeThatLosesAValue.",
				},
				{
					type = BreakingChangeType.IMPLEMENTED_INTERFACE_REMOVED,
					description = "TypeThatLooseInterface1 no longer implements interface Interface1.",
				},
				{
					type = BreakingChangeType.TYPE_REMOVED_FROM_UNION,
					description = "TypeInUnion2 was removed from union type UnionTypeThatLosesAType.",
				},
				{
					type = BreakingChangeType.TYPE_CHANGED_KIND,
					description = "TypeThatChangesType changed from an Object type to an Interface type.",
				},
				{
					type = BreakingChangeType.FIELD_REMOVED,
					description = "TypeThatHasBreakingFieldChanges.field1 was removed.",
				},
				{
					type = BreakingChangeType.FIELD_CHANGED_KIND,
					description = "TypeThatHasBreakingFieldChanges.field2 changed type from String to Boolean.",
				},
				{
					type = BreakingChangeType.DIRECTIVE_REMOVED,
					description = "DirectiveThatIsRemoved was removed.",
				},
				{
					type = BreakingChangeType.DIRECTIVE_ARG_REMOVED,
					description = "arg1 was removed from DirectiveThatRemovesArg.",
				},
				{
					type = BreakingChangeType.REQUIRED_DIRECTIVE_ARG_ADDED,
					description = "A required arg arg1 on directive NonNullDirectiveAdded was added.",
				},
				{
					type = BreakingChangeType.DIRECTIVE_REPEATABLE_REMOVED,
					description = "Repeatable flag was removed from DirectiveThatWasRepeatable.",
				},
				{
					type = BreakingChangeType.DIRECTIVE_LOCATION_REMOVED,
					description = "QUERY was removed from DirectiveName.",
				},
			})
		end)

		it("should detect if a directive was explicitly removed", function()
			local oldSchema = buildSchema([[
		directive @DirectiveThatIsRemoved on FIELD_DEFINITION
		directive @DirectiveThatStays on FIELD_DEFINITION
		]])

			local newSchema = buildSchema([[
		directive @DirectiveThatStays on FIELD_DEFINITION
		]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.DIRECTIVE_REMOVED,
					description = "DirectiveThatIsRemoved was removed.",
				},
			})
		end)

		it("should detect if a directive was implicitly removed", function()
			local oldSchema = GraphQLSchema.new({})
			local newSchema = GraphQLSchema.new({
				directives = {
					GraphQLSkipDirective,
					GraphQLIncludeDirective,
					GraphQLSpecifiedByDirective,
				},
			})

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.DIRECTIVE_REMOVED,
					description = ("%s was removed."):format(GraphQLDeprecatedDirective.name),
				},
			})
		end)

		it("should detect if a directive argument was removed", function()
			local oldSchema = buildSchema([[
		directive @DirectiveWithArg(arg1: String) on FIELD_DEFINITION
		]])

			local newSchema = buildSchema([[
		directive @DirectiveWithArg on FIELD_DEFINITION
		]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.DIRECTIVE_ARG_REMOVED,
					description = "arg1 was removed from DirectiveWithArg.",
				},
			})
		end)

		it("should detect if an optional directive argument was added", function()
			local oldSchema = buildSchema([[
		directive @DirectiveName on FIELD_DEFINITION
		]])

			local newSchema = buildSchema([[
		directive @DirectiveName(
			newRequiredArg: String!
			newOptionalArg1: Int
			newOptionalArg2: Int! = 0
		) on FIELD_DEFINITION
		]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.REQUIRED_DIRECTIVE_ARG_ADDED,
					description = "A required arg newRequiredArg on directive DirectiveName was added.",
				},
			})
		end)

		it("should detect removal of repeatable flag", function()
			local oldSchema = buildSchema([[
		directive @DirectiveName repeatable on OBJECT
		]])

			local newSchema = buildSchema([[
		directive @DirectiveName on OBJECT
		]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.DIRECTIVE_REPEATABLE_REMOVED,
					description = "Repeatable flag was removed from DirectiveName.",
				},
			})
		end)

		it("should detect locations removed from a directive", function()
			local oldSchema = buildSchema([[
		directive @DirectiveName on FIELD_DEFINITION | QUERY
		]])

			local newSchema = buildSchema([[
		directive @DirectiveName on FIELD_DEFINITION
		]])

			expect(findBreakingChanges(oldSchema, newSchema)).toEqual({
				{
					type = BreakingChangeType.DIRECTIVE_LOCATION_REMOVED,
					description = "QUERY was removed from DirectiveName.",
				},
			})
		end)
	end)

	describe("findDangerousChanges", function()
		it("should detect if a defaultValue changed on an argument", function()
			local oldSDL = [=[
      input Input1 {
        innerInputArray: [Input2]
      }

      input Input2 {
        arrayField: [Int]
      }

      type Type1 {
        field1(
          withDefaultValue: String = "TO BE DELETED"
          stringArg: String = "test"
          emptyArray: [Int!] = []
          valueArray: [[String]] = [["a", "b"], ["c"]]
          complexObject: Input1 = {
            innerInputArray: [{ arrayField: [1, 2, 3] }]
          }
        ): String
      }
    ]=]

			local oldSchema = buildSchema(oldSDL)
			local copyOfOldSchema = buildSchema(oldSDL)

			expect(findDangerousChanges(oldSchema, copyOfOldSchema)).toEqual({})

			local newSchema = buildSchema([=[
      input Input1 {
        innerInputArray: [Input2]
      }

      input Input2 {
        arrayField: [Int]
      }

      type Type1 {
        field1(
          withDefaultValue: String
          stringArg: String = "Test"
          emptyArray: [Int!] = [7]
          valueArray: [[String]] = [["b", "a"], ["d"]]
          complexObject: Input1 = {
            innerInputArray: [{ arrayField: [3, 2, 1] }]
          }
        ): String
      }
    ]=])

			expect(findDangerousChanges(oldSchema, newSchema)).toEqual({
				{
					type = DangerousChangeType.ARG_DEFAULT_VALUE_CHANGE,
					description = "Type1.field1 arg withDefaultValue defaultValue was removed.",
				},
				{
					type = DangerousChangeType.ARG_DEFAULT_VALUE_CHANGE,
					description = 'Type1.field1 arg stringArg has changed defaultValue from "test" to "Test".',
				},
				{
					type = DangerousChangeType.ARG_DEFAULT_VALUE_CHANGE,
					description = "Type1.field1 arg emptyArray has changed defaultValue from [] to [7].",
				},
				{
					type = DangerousChangeType.ARG_DEFAULT_VALUE_CHANGE,
					description = 'Type1.field1 arg valueArray has changed defaultValue from [["a", "b"], ["c"]] to [["b", "a"], ["d"]].',
				},
				{
					type = DangerousChangeType.ARG_DEFAULT_VALUE_CHANGE,
					description = "Type1.field1 arg complexObject has changed defaultValue from {innerInputArray: [{arrayField: [1, 2, 3]}]} to {innerInputArray: [{arrayField: [3, 2, 1]}]}.",
				},
			})
		end)

		it("should ignore changes in field order of defaultValue", function()
			local oldSchema = buildSchema([[
		input Input1 {
			a: String
			b: String
			c: String
		}

		type Type1 {
			field1(
			arg1: Input1 = { a: "a", b: "b", c: "c" }
			): String
		}
		]])

			local newSchema = buildSchema([[
		input Input1 {
			a: String
			b: String
			c: String
		}

		type Type1 {
			field1(
			arg1: Input1 = { c: "c", b: "b", a: "a" }
			): String
		}
		]])

			expect(findDangerousChanges(oldSchema, newSchema)).toEqual({})
		end)

		it("should ignore changes in field definitions order", function()
			local oldSchema = buildSchema([[
      input Input1 {
        a: String
        b: String
        c: String
      }

      type Type1 {
        field1(
          arg1: Input1 = { a: "a", b: "b", c: "c" }
        ): String
      }
    ]])

			local newSchema = buildSchema([[
      input Input1 {
        c: String
        b: String
        a: String
      }

      type Type1 {
        field1(
          arg1: Input1 = { a: "a", b: "b", c: "c" }
        ): String
      }
    ]])
			local result = findDangerousChanges(oldSchema, newSchema)
			expect(result).toEqual({})
		end)

		it("should detect if a value was added to an enum type", function()
			local oldSchema = buildSchema([[
      enum EnumType1 {
        VALUE0
        VALUE1
      }
    ]])

			local newSchema = buildSchema([[
      enum EnumType1 {
        VALUE0
        VALUE1
        VALUE2
      }
    ]])

			expect(findDangerousChanges(oldSchema, newSchema)).toEqual({
				{
					type = DangerousChangeType.VALUE_ADDED_TO_ENUM,
					description = "VALUE2 was added to enum type EnumType1.",
				},
			})
		end)

		it("should detect interfaces added to types", function()
			local oldSchema = buildSchema([[
      interface OldInterface
      interface NewInterface

      type Type1 implements OldInterface
    ]])

			local newSchema = buildSchema([[
      interface OldInterface
      interface NewInterface

      type Type1 implements OldInterface & NewInterface
    ]])

			expect(findDangerousChanges(oldSchema, newSchema)).toEqual({
				{
					type = DangerousChangeType.IMPLEMENTED_INTERFACE_ADDED,
					description = "NewInterface added to interfaces implemented by Type1.",
				},
			})
		end)

		it("should detect interfaces added to interfaces", function()
			local oldSchema = buildSchema([[
      interface OldInterface
      interface NewInterface

      interface Interface1 implements OldInterface
    ]])

			local newSchema = buildSchema([[
      interface OldInterface
      interface NewInterface

      interface Interface1 implements OldInterface & NewInterface
    ]])

			expect(findDangerousChanges(oldSchema, newSchema)).toEqual({
				{
					type = DangerousChangeType.IMPLEMENTED_INTERFACE_ADDED,
					description = "NewInterface added to interfaces implemented by Interface1.",
				},
			})
		end)

		it("should detect if a type was added to a union type", function()
			local oldSchema = buildSchema([[
      type Type1
      type Type2

      union UnionType1 = Type1
    ]])

			local newSchema = buildSchema([[
      type Type1
      type Type2

      union UnionType1 = Type1 | Type2
    ]])

			expect(findDangerousChanges(oldSchema, newSchema)).toEqual({
				{
					type = DangerousChangeType.TYPE_ADDED_TO_UNION,
					description = "Type2 was added to union type UnionType1.",
				},
			})
		end)

		it("should detect if an optional field was added to an input", function()
			local oldSchema = buildSchema([[
      input InputType1 {
        field1: String
      }
    ]])

			local newSchema = buildSchema([[
      input InputType1 {
        field1: String
        field2: Int
      }
    ]])

			expect(findDangerousChanges(oldSchema, newSchema)).toEqual({
				{
					type = DangerousChangeType.OPTIONAL_INPUT_FIELD_ADDED,
					description = "An optional field field2 on input type InputType1 was added.",
				},
			})
		end)

		it("should find all dangerous changes", function()
			local oldSchema = buildSchema([[
      enum EnumType1 {
        VALUE0
        VALUE1
      }

      type Type1 {
        field1(argThatChangesDefaultValue: String = "test"): String
      }

      interface Interface1
      type TypeThatGainsInterface1

      type TypeInUnion1
      union UnionTypeThatGainsAType = TypeInUnion1
    ]])

			local newSchema = buildSchema([[
      enum EnumType1 {
        VALUE0
        VALUE1
        VALUE2
      }

      type Type1 {
        field1(argThatChangesDefaultValue: String = "Test"): String
      }

      interface Interface1
      type TypeThatGainsInterface1 implements Interface1

      type TypeInUnion1
      type TypeInUnion2
      union UnionTypeThatGainsAType = TypeInUnion1 | TypeInUnion2
    ]])

			expect(findDangerousChanges(oldSchema, newSchema)).toEqual({
				{
					type = DangerousChangeType.VALUE_ADDED_TO_ENUM,
					description = "VALUE2 was added to enum type EnumType1.",
				},
				{
					type = DangerousChangeType.ARG_DEFAULT_VALUE_CHANGE,
					description = 'Type1.field1 arg argThatChangesDefaultValue has changed defaultValue from "test" to "Test".',
				},
				{
					type = DangerousChangeType.IMPLEMENTED_INTERFACE_ADDED,
					description = "Interface1 added to interfaces implemented by TypeThatGainsInterface1.",
				},
				{
					type = DangerousChangeType.TYPE_ADDED_TO_UNION,
					description = "TypeInUnion2 was added to union type UnionTypeThatGainsAType.",
				},
			})
		end)

		it("should detect if an optional field argument was added", function()
			local oldSchema = buildSchema([[
      type Type1 {
        field1(arg1: String): String
      }
    ]])

			local newSchema = buildSchema([[
      type Type1 {
        field1(arg1: String, arg2: String): String
      }
    ]])

			expect(findDangerousChanges(oldSchema, newSchema)).toEqual({
				{
					type = DangerousChangeType.OPTIONAL_ARG_ADDED,
					description = "An optional arg arg2 on Type1.field1 was added.",
				},
			})
		end)
	end)
end

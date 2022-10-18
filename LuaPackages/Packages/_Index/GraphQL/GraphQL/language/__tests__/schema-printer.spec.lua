--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/language/__tests__/schema-printer-test.js

local languageWorkspace = script.Parent.Parent
local srcWorkspace = languageWorkspace.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
--ROBLOX TODO: make proper JSON.stringify export in polyfill
local inspect = LuauPolyfill.util.inspect
local JestGlobals = require(Packages.Dev.JestGlobals)
-- ROBLOX deviation: use jestExpect here so that we get reasonably text diffing on failures
local jestExpect = JestGlobals.expect
local testUtilsWorkspace = srcWorkspace.__testUtils__

local dedent = require(testUtilsWorkspace.dedent).dedent
local kitchenSinkSDL = require(testUtilsWorkspace.kitchenSinkSDL).kitchenSinkSDL

local parse = require(languageWorkspace.parser).parse
local print_ = require(languageWorkspace.printer).print

return function()
	describe("Printer: SDL document", function()
		it("prints minimal ast", function()
			-- ROBLOX FIXME Luau: gross workaround until string literals automatically track as singleton types
			local ast = {
				kind = "ScalarTypeDefinition" :: "ScalarTypeDefinition",
				name = {
					kind = "Name" :: "Name",
					value = "foo",
				},
			}

			jestExpect(print_(ast)).toEqual("scalar foo")
		end)

		it("produces helpful error messages", function()
			local badAST = {
				random = "Data",
			}

			jestExpect(function()
				-- ROBLOX deviation: strong typing prevents this from analyzing (yay!), so cast away safety
				return print_(badAST :: any)
			end).toThrow('Invalid AST Node: { random: "Data" }.')
		end)

		it("does not alter ast", function()
			-- ROBLOX deviation: no JSON.stringify in Lua. Using inspect instead
			local ast = parse(kitchenSinkSDL)
			local astBefore = inspect(ast)

			print_(ast)

			jestExpect(inspect(ast)).toEqual(astBefore)
		end)

		it("prints kitchen sink", function()
			local printed = print_(parse(kitchenSinkSDL))

			jestExpect(printed).toEqual(dedent([[
      """This is a description of the schema as a whole."""
      schema {
        query: QueryType
        mutation: MutationType
      }

      """
      This is a description
      of the `Foo` type.
      """
      type Foo implements Bar & Baz & Two {
        "Description of the `one` field."
        one: Type
        """This is a description of the `two` field."""
        two(
          """This is a description of the `argument` argument."""
          argument: InputType!
        ): Type
        """This is a description of the `three` field."""
        three(argument: InputType, other: String): Int
        four(argument: String = "string"): String
        five(argument: [String] = ["string", "string"]): String
        six(argument: InputType = {key: "value"}): Type
        seven(argument: Int = null): Type
      }

      type AnnotatedObject @onObject(arg: "value") {
        annotatedField(arg: Type = "default" @onArgumentDefinition): Type @onField
      }

      type UndefinedType

      extend type Foo {
        seven(argument: [String]): Type
      }

      extend type Foo @onType

      interface Bar {
        one: Type
        four(argument: String = "string"): String
      }

      interface AnnotatedInterface @onInterface {
        annotatedField(arg: Type @onArgumentDefinition): Type @onField
      }

      interface UndefinedInterface

      extend interface Bar implements Two {
        two(argument: InputType!): Type
      }

      extend interface Bar @onInterface

      interface Baz implements Bar & Two {
        one: Type
        two(argument: InputType!): Type
        four(argument: String = "string"): String
      }

      union Feed = Story | Article | Advert

      union AnnotatedUnion @onUnion = A | B

      union AnnotatedUnionTwo @onUnion = A | B

      union UndefinedUnion

      extend union Feed = Photo | Video

      extend union Feed @onUnion

      scalar CustomScalar

      scalar AnnotatedScalar @onScalar

      extend scalar CustomScalar @onScalar

      enum Site {
        """This is a description of the `DESKTOP` value"""
        DESKTOP
        """This is a description of the `MOBILE` value"""
        MOBILE
        "This is a description of the `WEB` value"
        WEB
      }

      enum AnnotatedEnum @onEnum {
        ANNOTATED_VALUE @onEnumValue
        OTHER_VALUE
      }

      enum UndefinedEnum

      extend enum Site {
        VR
      }

      extend enum Site @onEnum

      input InputType {
        key: String!
        answer: Int = 42
      }

      input AnnotatedInput @onInputObject {
        annotatedField: Type @onInputFieldDefinition
      }

      input UndefinedInput

      extend input InputType {
        other: Float = 1.23e4 @onInputFieldDefinition
      }

      extend input InputType @onInputObject

      """This is a description of the `@skip` directive"""
      directive @skip(
        """This is a description of the `if` argument"""
        if: Boolean! @onArgumentDefinition
      ) on FIELD | FRAGMENT_SPREAD | INLINE_FRAGMENT

      directive @include(if: Boolean!) on FIELD | FRAGMENT_SPREAD | INLINE_FRAGMENT

      directive @include2(if: Boolean!) on FIELD | FRAGMENT_SPREAD | INLINE_FRAGMENT

      directive @myRepeatableDir(name: String!) repeatable on OBJECT | INTERFACE

      extend schema @onSchema

      extend schema @onSchema {
        subscription: SubscriptionType
      }
    ]]))
		end)
	end)
end

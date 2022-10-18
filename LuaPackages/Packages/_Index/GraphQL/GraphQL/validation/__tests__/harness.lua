--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/validation/__tests__/harness.js

local validationWorkspace = script.Parent.Parent
local srcWorkspace = validationWorkspace.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array

local parse = require(srcWorkspace.language.parser).parse

local _schemaImport = require(srcWorkspace.type.schema)
type GraphQLSchema = _schemaImport.GraphQLSchema

local buildSchema = require(srcWorkspace.utilities.buildASTSchema).buildSchema

local validateImport = require(validationWorkspace.validate)
local validate = validateImport.validate
local validateSDL = validateImport.validateSDL

local testSchema = buildSchema([[
  interface Being {
    name(surname: Boolean): String
  }

  interface Mammal {
    mother: Mammal
    father: Mammal
  }

  interface Pet implements Being {
    name(surname: Boolean): String
  }

  interface Canine implements Mammal & Being {
    name(surname: Boolean): String
    mother: Canine
    father: Canine
  }

  enum DogCommand {
    SIT
    HEEL
    DOWN
  }

  type Dog implements Being & Pet & Mammal & Canine {
    name(surname: Boolean): String
    nickname: String
    barkVolume: Int
    barks: Boolean
    doesKnowCommand(dogCommand: DogCommand): Boolean
    isHouseTrained(atOtherHomes: Boolean = true): Boolean
    isAtLocation(x: Int, y: Int): Boolean
    mother: Dog
    father: Dog
  }

  type Cat implements Being & Pet {
    name(surname: Boolean): String
    nickname: String
    meows: Boolean
    meowsVolume: Int
    furColor: FurColor
  }

  union CatOrDog = Cat | Dog

  interface Intelligent {
    iq: Int
  }

  type Human implements Being & Intelligent {
    name(surname: Boolean): String
    pets: [Pet]
    relatives: [Human]
    iq: Int
  }

  type Alien implements Being & Intelligent {
    name(surname: Boolean): String
    numEyes: Int
    iq: Int
  }

  union DogOrHuman = Dog | Human

  union HumanOrAlien = Human | Alien

  enum FurColor {
    BROWN
    BLACK
    TAN
    SPOTTED
    NO_FUR
    UNKNOWN
  }

  input ComplexInput {
    requiredField: Boolean!
    nonNullField: Boolean! = false
    intField: Int
    stringField: String
    booleanField: Boolean
    stringListField: [String]
  }

  type ComplicatedArgs {
    # TODO List
    # TODO Coercion
    # TODO NotNulls
    intArgField(intArg: Int): String
    nonNullIntArgField(nonNullIntArg: Int!): String
    stringArgField(stringArg: String): String
    booleanArgField(booleanArg: Boolean): String
    enumArgField(enumArg: FurColor): String
    floatArgField(floatArg: Float): String
    idArgField(idArg: ID): String
    stringListArgField(stringListArg: [String]): String
    stringListNonNullArgField(stringListNonNullArg: [String!]): String
    complexArgField(complexArg: ComplexInput): String
    multipleReqs(req1: Int!, req2: Int!): String
    nonNullFieldWithDefault(arg: Int! = 0): String
    multipleOpts(opt1: Int = 0, opt2: Int = 0): String
    multipleOptAndReq(req1: Int!, req2: Int!, opt1: Int = 0, opt2: Int = 0): String
  }

  type QueryRoot {
    human(id: ID): Human
    alien: Alien
    dog: Dog
    cat: Cat
    pet: Pet
    catOrDog: CatOrDog
    dogOrHuman: DogOrHuman
    humanOrAlien: HumanOrAlien
    complicatedArgs: ComplicatedArgs
  }

  schema {
    query: QueryRoot
  }

  directive @onQuery on QUERY
  directive @onMutation on MUTATION
  directive @onSubscription on SUBSCRIPTION
  directive @onField on FIELD
  directive @onFragmentDefinition on FRAGMENT_DEFINITION
  directive @onFragmentSpread on FRAGMENT_SPREAD
  directive @onInlineFragment on INLINE_FRAGMENT
  directive @onVariableDefinition on VARIABLE_DEFINITION
]])

-- deviation: expect needs to be passed because it can't be injected
-- in this file
local function expectValidationErrorsWithSchema(
	expect_,
	schema: GraphQLSchema,
	rule,
	queryStr: string
): any
	local doc = parse(queryStr)
	local errors = validate(schema, doc, { rule })
	-- ROBLOX deviation: our toEqual does not have a special case when
	-- comparing error objects, so we map each error to the expected shape
	local reshapedErrors = Array.map(errors, function(errorObject)
		return {
			message = errorObject.message,
			locations = errorObject.locations,
		}
	end)
	return expect_(reshapedErrors)
end

local function expectValidationErrors(expect, rule, queryStr: string)
	return expectValidationErrorsWithSchema(expect, testSchema, rule, queryStr)
end

local function expectSDLValidationErrors(expect, schema: GraphQLSchema, rule, sdlStr: string)
	local doc = parse(sdlStr)
	local errors = validateSDL(doc, schema, { rule })
	-- ROBLOX deviation: our toEqual does not have a special case when
	-- comparing error objects, so we map each error to the expected shape
	local reshapedErrors = Array.map(errors, function(errorObject)
		return {
			message = errorObject.message,
			locations = errorObject.locations,
		}
	end)
	return expect(reshapedErrors)
end

return {
	testSchema = testSchema,
	expectValidationErrorsWithSchema = expectValidationErrorsWithSchema,
	expectValidationErrors = expectValidationErrors,
	expectSDLValidationErrors = expectSDLValidationErrors,
}

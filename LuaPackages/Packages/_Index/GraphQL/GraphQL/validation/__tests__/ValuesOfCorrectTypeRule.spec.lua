--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/833da8281c06b720b56f513818d13bfdf13a06e7/src/validation/__tests__/ValuesOfCorrectTypeRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local srcWorkspace = validationWorkspace.Parent
	local Packages = srcWorkspace.Parent
	local LuauPolyfill = require(Packages.LuauPolyfill)
	local Error = LuauPolyfill.Error

	local jsutils = srcWorkspace.jsutils
	local inspect = require(jsutils.inspect).inspect
	local typeWorkspace = srcWorkspace.type
	local GraphQLSchema = require(typeWorkspace.schema).GraphQLSchema
	local scalars = require(typeWorkspace.scalars)
	local GraphQLString = scalars.GraphQLString
	local definition = require(typeWorkspace.definition)
	local GraphQLScalarType = definition.GraphQLScalarType
	local GraphQLObjectType = definition.GraphQLObjectType
	local ValuesOfCorrectTypeRule =
		require(validationWorkspace.rules.ValuesOfCorrectTypeRule).ValuesOfCorrectTypeRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors
	local expectValidationErrorsWithSchema = harness.expectValidationErrorsWithSchema

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, ValuesOfCorrectTypeRule, "\n" .. queryStr)
	end

	local function expectErrorsWithSchema(expect_, schema, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrorsWithSchema(expect_, schema, ValuesOfCorrectTypeRule, queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	local function expectValidWithSchema(expect_, schema, queryStr: string)
		expectErrorsWithSchema(expect_, schema, queryStr).toEqual({})
	end

	describe("Validate: Values of correct type", function()
		describe("Valid values", function()
			it("Good int value", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							intArgField(intArg: 2)
						}
					}
				]]
				)
			end)

			it("Good negative int value", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							intArgField(intArg: -2)
						}
					}
				]]
				)
			end)

			it("Good boolean value", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							booleanArgField(booleanArg: true)
						}
					}
				]]
				)
			end)

			it("Good string value", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							stringArgField(stringArg: "foo")
						}
					}
				]]
				)
			end)

			it("Good float value", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							floatArgField(floatArg: 1.1)
						}
					}
				]]
				)
			end)

			it("Good negative float value", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							floatArgField(floatArg: -1.1)
						}
					}
				]]
				)
			end)

			it("Int into Float", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							floatArgField(floatArg: 1)
						}
					}
				]]
				)
			end)

			it("Int into ID", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							idArgField(idArg: 1)
						}
					}
				]]
				)
			end)

			it("String into ID", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							idArgField(idArg: "someIdString")
						}
					}
				]]
				)
			end)

			it("Good enum value", function()
				expectValid(
					expect,
					[[
					{
						dog {
							doesKnowCommand(dogCommand: SIT)
						}
					}
				]]
				)
			end)

			it("Enum with undefined value", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							enumArgField(enumArg: UNKNOWN)
						}
					}
				]]
				)
			end)

			it("Enum with null value", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							enumArgField(enumArg: NO_FUR)
						}
					}
				]]
				)
			end)

			it("null into nullable type", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							intArgField(intArg: null)
						}
					}
				]]
				)
				expectValid(
					expect,
					[[
					{
						dog(a: null, b: null, c:{ requiredField: true, intField: null }) {
							name
						}
					}
				]]
				)
			end)
		end)

		describe("Invalid String values", function()
			it("Int into String", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            stringArgField(stringArg: 1)
          }
        }
				]]
				).toEqual({
					{
						message = "String cannot represent a non string value: 1",
						locations = { { line = 4, column = 39 } },
					},
				})
			end)

			it("Float into String", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            stringArgField(stringArg: 1.0)
          }
        }
				]]
				).toEqual({
					{
						message = "String cannot represent a non string value: 1.0",
						locations = { { line = 4, column = 39 } },
					},
				})
			end)

			it("Boolean into String", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            stringArgField(stringArg: true)
          }
        }
				]]
				).toEqual({
					{
						message = "String cannot represent a non string value: true",
						locations = { { line = 4, column = 39 } },
					},
				})
			end)

			it("Unquoted String into String", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            stringArgField(stringArg: BAR)
          }
        }
				]]
				).toEqual({
					{
						message = "String cannot represent a non string value: BAR",
						locations = { { line = 4, column = 39 } },
					},
				})
			end)
		end)

		describe("Invalid Int values", function()
			it("String into Int", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            intArgField(intArg: "3")
          }
        }
				]]
				).toEqual({
					{
						message = 'Int cannot represent non-integer value: "3"',
						locations = { { line = 4, column = 33 } },
					},
				})
			end)

			it("Big Int into Int", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            intArgField(intArg: 829384293849283498239482938)
          }
        }
				]]
				).toEqual({
					{
						message = "Int cannot represent non 32-bit signed integer value: 829384293849283498239482938",
						locations = { { line = 4, column = 33 } },
					},
				})
			end)

			it("Unquoted String into Int", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            intArgField(intArg: FOO)
          }
        }
				]]
				).toEqual({
					{
						message = "Int cannot represent non-integer value: FOO",
						locations = { { line = 4, column = 33 } },
					},
				})
			end)

			it("Simple Float into Int", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            intArgField(intArg: 3.0)
          }
        }
				]]
				).toEqual({
					{
						message = "Int cannot represent non-integer value: 3.0",
						locations = { { line = 4, column = 33 } },
					},
				})
			end)

			it("Float into Int", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            intArgField(intArg: 3.333)
          }
        }
				]]
				).toEqual({
					{
						message = "Int cannot represent non-integer value: 3.333",
						locations = { { line = 4, column = 33 } },
					},
				})
			end)
		end)

		describe("Invalid Float values", function()
			it("String into Float", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            floatArgField(floatArg: "3.333")
          }
        }
				]]
				).toEqual({
					{
						message = 'Float cannot represent non numeric value: "3.333"',
						locations = { { line = 4, column = 37 } },
					},
				})
			end)

			it("Boolean into Float", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            floatArgField(floatArg: true)
          }
        }
				]]
				).toEqual({
					{
						message = "Float cannot represent non numeric value: true",
						locations = { { line = 4, column = 37 } },
					},
				})
			end)

			it("Unquoted into Float", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            floatArgField(floatArg: FOO)
          }
        }
				]]
				).toEqual({
					{
						message = "Float cannot represent non numeric value: FOO",
						locations = { { line = 4, column = 37 } },
					},
				})
			end)
		end)

		describe("Invalid Boolean value", function()
			it("Int into Boolean", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            booleanArgField(booleanArg: 2)
          }
        }
				]]
				).toEqual({
					{
						message = "Boolean cannot represent a non boolean value: 2",
						locations = { { line = 4, column = 41 } },
					},
				})
			end)

			it("Float into Boolean", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            booleanArgField(booleanArg: 1.0)
          }
        }
				]]
				).toEqual({
					{
						message = "Boolean cannot represent a non boolean value: 1.0",
						locations = { { line = 4, column = 41 } },
					},
				})
			end)

			it("String into Boolean", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            booleanArgField(booleanArg: "true")
          }
        }
				]]
				).toEqual({
					{
						message = 'Boolean cannot represent a non boolean value: "true"',
						locations = { { line = 4, column = 41 } },
					},
				})
			end)

			it("Unquoted into Boolean", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            booleanArgField(booleanArg: TRUE)
          }
        }
				]]
				).toEqual({
					{
						message = "Boolean cannot represent a non boolean value: TRUE",
						locations = { { line = 4, column = 41 } },
					},
				})
			end)
		end)

		describe("Invalid ID value", function()
			it("Float into ID", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            idArgField(idArg: 1.0)
          }
        }
				]]
				).toEqual({
					{
						message = "ID cannot represent a non-string and non-integer value: 1.0",
						locations = { { line = 4, column = 31 } },
					},
				})
			end)

			it("Boolean into ID", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            idArgField(idArg: true)
          }
        }
				]]
				).toEqual({
					{
						message = "ID cannot represent a non-string and non-integer value: true",
						locations = { { line = 4, column = 31 } },
					},
				})
			end)

			it("Unquoted into ID", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            idArgField(idArg: SOMETHING)
          }
        }
				]]
				).toEqual({
					{
						message = "ID cannot represent a non-string and non-integer value: SOMETHING",
						locations = { { line = 4, column = 31 } },
					},
				})
			end)
		end)

		describe("Invalid Enum value", function()
			it("Int into Enum", function()
				expectErrors(
					expect,
					[[
        {
          dog {
            doesKnowCommand(dogCommand: 2)
          }
        }
				]]
				).toEqual({
					{
						message = 'Enum "DogCommand" cannot represent non-enum value: 2.',
						locations = { { line = 4, column = 41 } },
					},
				})
			end)

			it("Float into Enum", function()
				expectErrors(
					expect,
					[[
        {
          dog {
            doesKnowCommand(dogCommand: 1.0)
          }
        }
				]]
				).toEqual({
					{
						message = 'Enum "DogCommand" cannot represent non-enum value: 1.0.',
						locations = { { line = 4, column = 41 } },
					},
				})
			end)

			it("String into Enum", function()
				expectErrors(
					expect,
					[[
        {
          dog {
            doesKnowCommand(dogCommand: "SIT")
          }
        }
				]]
				).toEqual({
					{
						message = 'Enum "DogCommand" cannot represent non-enum value: "SIT". Did you mean the enum value "SIT"?',
						locations = { { line = 4, column = 41 } },
					},
				})
			end)

			it("Boolean into Enum", function()
				expectErrors(
					expect,
					[[
        {
          dog {
            doesKnowCommand(dogCommand: true)
          }
        }
				]]
				).toEqual({
					{
						message = 'Enum "DogCommand" cannot represent non-enum value: true.',
						locations = { { line = 4, column = 41 } },
					},
				})
			end)

			it("Unknown Enum Value into Enum", function()
				expectErrors(
					expect,
					[[
        {
          dog {
            doesKnowCommand(dogCommand: JUGGLE)
          }
        }
				]]
				).toEqual({
					{
						message = 'Value "JUGGLE" does not exist in "DogCommand" enum.',
						locations = { { line = 4, column = 41 } },
					},
				})
			end)

			it("Different case Enum Value into Enum", function()
				expectErrors(
					expect,
					[[
        {
          dog {
            doesKnowCommand(dogCommand: sit)
          }
        }
				]]
				).toEqual({
					{
						message = 'Value "sit" does not exist in "DogCommand" enum. Did you mean the enum value "SIT"?',
						locations = { { line = 4, column = 41 } },
					},
				})
			end)
		end)

		describe("Valid List value", function()
			it("Good list value", function()
				expectValid(
					expect,
					[[
			{
			  complicatedArgs {
				stringListArgField(stringListArg: ["one", null, "two"])
			  }
			}
				]]
				)
			end)

			it("Empty list value", function()
				expectValid(
					expect,
					[[
			{
			  complicatedArgs {
				stringListArgField(stringListArg: [])
			  }
			}
				]]
				)
			end)

			it("Null value", function()
				expectValid(
					expect,
					[[
			{
			  complicatedArgs {
				stringListArgField(stringListArg: null)
			  }
			}
				]]
				)
			end)

			it("Single value into List", function()
				expectValid(
					expect,
					[[
			{
			  complicatedArgs {
				stringListArgField(stringListArg: "one")
			  }
			}
				]]
				)
			end)
		end)

		describe("Invalid List value", function()
			it("Incorrect item type", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            stringListArgField(stringListArg: ["one", 2])
          }
        }
				]]
				).toEqual({
					{
						message = "String cannot represent a non string value: 2",
						locations = { { line = 4, column = 55 } },
					},
				})
			end)

			it("Single value of incorrect type", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            stringListArgField(stringListArg: 1)
          }
        }
				]]
				).toEqual({
					{
						message = "String cannot represent a non string value: 1",
						locations = { { line = 4, column = 47 } },
					},
				})
			end)
		end)

		describe("Valid non-nullable value", function()
			it("Arg on optional arg", function()
				expectValid(
					expect,
					[[
					{
						dog {
							isHouseTrained(atOtherHomes: true)
						}
					}
				]]
				)
			end)

			it("No Arg on optional arg", function()
				expectValid(
					expect,
					[[
					{
						dog {
							isHouseTrained
						}
					}
				]]
				)
			end)

			it("Multiple args", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							multipleReqs(req1: 1, req2: 2)
						}
					}
				]]
				)
			end)

			it("Multiple args reverse order", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							multipleReqs(req2: 2, req1: 1)
						}
					}
				]]
				)
			end)

			it("No args on multiple optional", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							multipleOpts
						}
					}
				]]
				)
			end)

			it("One arg on multiple optional", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							multipleOpts(opt1: 1)
						}
					}
				]]
				)
			end)

			it("Second arg on multiple optional", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							multipleOpts(opt2: 1)
						}
					}
				]]
				)
			end)

			it("Multiple required args on mixedList", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							multipleOptAndReq(req1: 3, req2: 4)
						}
					}
				]]
				)
			end)

			it("Multiple required and one optional arg on mixedList", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							multipleOptAndReq(req1: 3, req2: 4, opt1: 5)
						}
					}
				]]
				)
			end)

			it("All required and optional args on mixedList", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							multipleOptAndReq(req1: 3, req2: 4, opt1: 5, opt2: 6)
						}
					}
				]]
				)
			end)
		end)

		describe("Invalid non-nullable value", function()
			it("Incorrect value type", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            multipleReqs(req2: "two", req1: "one")
          }
        }
				]]
				).toEqual({
					{
						message = 'Int cannot represent non-integer value: "two"',
						locations = { { line = 4, column = 32 } },
					},
					{
						message = 'Int cannot represent non-integer value: "one"',
						locations = { { line = 4, column = 45 } },
					},
				})
			end)

			it("Incorrect value and missing argument (ProvidedRequiredArgumentsRule)", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            multipleReqs(req1: "one")
          }
        }
				]]
				).toEqual({
					{
						message = 'Int cannot represent non-integer value: "one"',
						locations = { { line = 4, column = 32 } },
					},
				})
			end)

			it("Null value", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            multipleReqs(req1: null)
          }
        }
				]]
				).toEqual({
					{
						message = 'Expected value of type "Int!", found null.',
						locations = { { line = 4, column = 32 } },
					},
				})
			end)
		end)

		describe("Valid input object value", function()
			it("Optional arg, despite required field in type", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							complexArgField
						}
					}
				]]
				)
			end)

			it("Partial object, only required", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							complexArgField(complexArg: { requiredField: true })
						}
					}
				]]
				)
			end)

			it("Partial object, required field can be falsy", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							complexArgField(complexArg: { requiredField: false })
						}
					}
				]]
				)
			end)

			it("Partial object, including required", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							complexArgField(complexArg: { requiredField: true, intField: 4 })
						}
					}
				]]
				)
			end)

			it("Full object", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							complexArgField(complexArg: {
								requiredField: true,
								intField: 4,
								stringField: "foo",
								booleanField: false,
								stringListField: ["one", "two"]
							})
						}
					}
				]]
				)
			end)

			it("Full object with fields in different order", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							complexArgField(complexArg: {
								stringListField: ["one", "two"],
								booleanField: false,
								requiredField: true,
								stringField: "foo",
								intField: 4,
							})
						}
					}
				]]
				)
			end)
		end)

		describe("Invalid input object value", function()
			it("Partial object, missing required", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            complexArgField(complexArg: { intField: 4 })
          }
        }
				]]
				).toEqual({
					{
						message = 'Field "ComplexInput.requiredField" of required type "Boolean!" was not provided.',
						locations = { { line = 4, column = 41 } },
					},
				})
			end)

			it("Partial object, invalid field type", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            complexArgField(complexArg: {
              stringListField: ["one", 2],
              requiredField: true,
            })
          }
        }
				]]
				).toEqual({
					{
						message = "String cannot represent a non string value: 2",
						locations = { { line = 5, column = 40 } },
					},
				})
			end)

			it("Partial object, null to non-null field", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            complexArgField(complexArg: {
              requiredField: true,
              nonNullField: null,
            })
          }
        }
				]]
				).toEqual({
					{
						message = 'Expected value of type "Boolean!", found null.',
						locations = { { line = 6, column = 29 } },
					},
				})
			end)

			it("Partial object, unknown field arg", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            complexArgField(complexArg: {
              requiredField: true,
              invalidField: "value"
            })
          }
        }
				]]
				).toEqual({
					{
						message = 'Field "invalidField" is not defined by type "ComplexInput". Did you mean "intField"?',
						locations = { { line = 6, column = 15 } },
					},
				})
			end)

			it("reports original error for custom scalar which throws", function()
				local customScalar = GraphQLScalarType.new({
					name = "Invalid",
					parseValue = function(value)
						error(
							Error.new(
								("Invalid scalar is always invalid: %s"):format(inspect(value))
							)
						)
					end,
				})
				local schema = GraphQLSchema.new({
					query = GraphQLObjectType.new({
						name = "Query",
						fields = {
							invalidArg = {
								type = GraphQLString,
								args = { arg = { type = customScalar } },
							},
						},
					}),
				})

				local expectedErrors = expectErrorsWithSchema(
					expect,
					schema,
					"{ invalidArg(arg: 123) }"
				)

				expectedErrors.toEqual({
					{
						message = 'Expected value of type "Invalid", found 123; Invalid scalar is always invalid: 123',
						locations = { { line = 1, column = 19 } },
					},
				})
				-- ROBLOX deviation: TestEZ expectation does not let us to that and we
				-- can't extract the errors array and manually do the check
				-- expectedErrors.to.have.nested.property("[1].originalError.message", "Invalid scalar is always invalid: 123")
			end)

			it("reports error for custom scalar that returns undefined", function()
				local customScalar = GraphQLScalarType.new({
					name = "CustomScalar",
					parseValue = function()
						return nil
					end,
				})
				local schema = GraphQLSchema.new({
					query = GraphQLObjectType.new({
						name = "Query",
						fields = {
							invalidArg = {
								type = GraphQLString,
								args = { arg = { type = customScalar } },
							},
						},
					}),
				})

				expectErrorsWithSchema(expect, schema, "{ invalidArg(arg: 123) }").toEqual({
					{
						message = 'Expected value of type "CustomScalar", found 123.',
						locations = { { line = 1, column = 19 } },
					},
				})
			end)

			it("allows custom scalar to accept complex literals", function()
				local customScalar = GraphQLScalarType.new({
					name = "Any",
				})
				local schema = GraphQLSchema.new({
					query = GraphQLObjectType.new({
						name = "Query",
						fields = {
							anyArg = {
								type = GraphQLString,
								args = {
									arg = { type = customScalar },
								},
							},
						},
					}),
				})

				expectValidWithSchema(
					expect,
					schema,
					[[
					{
						test1: anyArg(arg: 123)
						test2: anyArg(arg: "abc")
						test3: anyArg(arg: [123, "abc"])
						test4: anyArg(arg: {deep: [123, "abc"]})
					}
				]]
				)
			end)
		end)

		describe("Directive arguments", function()
			it("with directives of valid types", function()
				expectValid(
					expect,
					[[
					{
						dog @include(if: true) {
							name
						}
						human @skip(if: false) {
							name
						}
					}
				]]
				)
			end)

			it("with directive with incorrect types", function()
				expectErrors(
					expect,
					[[
        {
          dog @include(if: "yes") {
            name @skip(if: ENUM)
          }
        }
				]]
				).toEqual({
					{
						message = 'Boolean cannot represent a non boolean value: "yes"',
						locations = { { line = 3, column = 28 } },
					},
					{
						message = "Boolean cannot represent a non boolean value: ENUM",
						locations = { { line = 4, column = 28 } },
					},
				})
			end)
		end)

		describe("Variable default values", function()
			it("variables with valid default values", function()
				expectValid(
					expect,
					[[
					query WithDefaultValues(
						$a: Int = 1,
						$b: String = "ok",
						$c: ComplexInput = { requiredField: true, intField: 3 }
						$d: Int! = 123
					) {
						dog { name }
					}
				]]
				)
			end)

			it("variables with valid default null values", function()
				expectValid(
					expect,
					[[
					query WithDefaultValues(
						$a: Int = null,
						$b: String = null,
						$c: ComplexInput = { requiredField: true, intField: null }
					) {
						dog { name }
					}
				]]
				)
			end)

			it("variables with invalid default null values", function()
				expectErrors(
					expect,
					[[
        query WithDefaultValues(
          $a: Int! = null,
          $b: String! = null,
          $c: ComplexInput = { requiredField: null, intField: null }
        ) {
          dog { name }
        }
				]]
				).toEqual({
					{
						message = 'Expected value of type "Int!", found null.',
						locations = { { line = 3, column = 22 } },
					},
					{
						message = 'Expected value of type "String!", found null.',
						locations = { { line = 4, column = 25 } },
					},
					{
						message = 'Expected value of type "Boolean!", found null.',
						locations = { { line = 5, column = 47 } },
					},
				})
			end)

			it("variables with invalid default values", function()
				expectErrors(
					expect,
					[[
        query InvalidDefaultValues(
          $a: Int = "one",
          $b: String = 4,
          $c: ComplexInput = "NotVeryComplex"
        ) {
          dog { name }
        }
				]]
				).toEqual({
					{
						message = 'Int cannot represent non-integer value: "one"',
						locations = { { line = 3, column = 21 } },
					},
					{
						message = "String cannot represent a non string value: 4",
						locations = { { line = 4, column = 24 } },
					},
					{
						message = 'Expected value of type "ComplexInput", found "NotVeryComplex".',
						locations = { { line = 5, column = 30 } },
					},
				})
			end)

			it("variables with complex invalid default values", function()
				expectErrors(
					expect,
					[[
        query WithDefaultValues(
          $a: ComplexInput = { requiredField: 123, intField: "abc" }
        ) {
          dog { name }
        }
				]]
				).toEqual({
					{
						message = "Boolean cannot represent a non boolean value: 123",
						locations = { { line = 3, column = 47 } },
					},
					{
						message = 'Int cannot represent non-integer value: "abc"',
						locations = { { line = 3, column = 62 } },
					},
				})
			end)

			it("complex variables missing required field", function()
				expectErrors(
					expect,
					[[
        query MissingRequiredField($a: ComplexInput = {intField: 3}) {
          dog { name }
        }
				]]
				).toEqual({
					{
						message = 'Field "ComplexInput.requiredField" of required type "Boolean!" was not provided.',
						locations = { { line = 2, column = 55 } },
					},
				})
			end)

			it("list variables with invalid item", function()
				expectErrors(
					expect,
					[[
        query InvalidItem($a: [String] = ["one", 2]) {
          dog { name }
        }
							  ]]
				).toEqual({
					{
						message = "String cannot represent a non string value: 2",
						locations = { { line = 2, column = 50 } },
					},
				})
			end)
		end)
	end)
end
